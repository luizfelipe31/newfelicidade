<?php

namespace Source\App;

use Source\Models\BankAccount;
use Source\Models\Category;
use Source\Models\Client;
use Source\Models\Invoice;
use Source\Models\Invoice_fixed;
use Source\Models\Invoice_recurrent;
use Source\Models\Property;
use Source\Models\Wallet;

class InvoiceController extends Admin
{

    public function __construct($router) {
        parent::__construct($router);
    }

    public function expense(?array $data): void {

        $properties = (new Property())->find("status=1 and account_id=:c","c={$this->user->account_id}")->order("id desc")->fetch(true);

        $clients = (new Client)->find("status=1 and lessee=1 and account_id=:c","c={$this->user->account_id}")->fetch(true);

        $bank_accounts = (new BankAccount)->find("status=1 and account_id=:c","c={$this->user->account_id}")->fetch(true);

        $wallets = (new Wallet)->find("status=1 and account_id=:c","c={$this->user->account_id}")->order('description asc')->fetch(true);

        $main_wallet = (new Wallet)->find("id=1")->fetch();

        $categories = (new Category)->find("(status=1 and account_id is null and operation!='income') or (status=1 and account_id=:c and operation!='income')","c={$this->user->account_id}")->order("description asc")->fetch(true);

        $categories_add = (new Category)->find("status=1 and account_id=:c","c={$this->user->account_id}")->order("description asc")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Despesas",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("financial/expense", [
            "head" => $head,
            "menu" => "financial",
            "submenu" => "expense",
            "properties" => $properties,
            "clients" => $clients,
            "bank_accounts" => $bank_accounts,
            "wallets" => $wallets,
            "main_wallet" => $main_wallet,
            "categories" => $categories,
            "categories_add" => $categories_add
        ]);
    }

    public function expenseAdd(?array $data): void {

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object)$post;

        
        $bank_account = "";
        if(isset($data->bank_account)){
            $bank_account = $data->bank_account;
        }

        if(isset($data->expense_unique)) {
            $invoice_create = new Invoice();
            $invoice_create->value = str_replace([".", ","], ["", "."], $data->value);
            $invoice_create->payment_form = $data->payment_form;
            $invoice_create->due_date = date_fmt_back($data->due_date);
            $invoice_create->reference_date = $data->reference_date;
            $invoice_create->operation = 2;
            $invoice_create->category = $data->category;
            $invoice_create->wallet = $data->wallet;
            $invoice_create->lessor = $data->lessor;
            $invoice_create->property = $data->property;
            $invoice_create->bank_account_id = $bank_account;
            $invoice_create->note = $data->note;
            $invoice_create->account_id = $this->user->account_id;
            $invoice_create->status = 1;

            if (!$invoice_create->save()) {
                $json["message"] = $invoice_create->fail()->getMessage();
                echo json_encode($json);
                return;
            }
        }
        if(isset($data->expense_fixed)) {
            
            $invoice_fixed = new Invoice_fixed();
            $invoice_fixed->category = $data->category;
            $invoice_fixed->account_id = $this->user->account_id;
            $invoice_fixed->status = 1;
            $invoice_fixed->save();
            
            for($i=1;$i<=960;$i++){
                
                $clone = clone new \DateTime(date_fmt_back($data->due_date));        
                $date1=$clone->modify( '+ '.($i-1).'month');
                $due_date=$date1->format( "Y-m-d" );
                
                $clone2 = clone new \DateTime(return_date_convert($data->reference_date));   
                $date2 = $clone2->modify( '+ '.($i-1).'month');
                $reference_date=$date2->format( "m/Y" ); 
                $invoice_create = new Invoice();
                $invoice_create->value = str_replace([".", ","], ["", "."], $data->value);
                $invoice_create->payment_form = $data->payment_form;
                $invoice_create->due_date = $due_date;
                $invoice_create->reference_date = $reference_date;
                $invoice_create->operation = 2;
                $invoice_create->category = $data->category;
                $invoice_create->wallet = $data->wallet;
                $invoice_create->lessor = $data->lessor;
                $invoice_create->property = $data->property;
                $invoice_create->fixed = $invoice_fixed->id;
                $invoice_create->bank_account_id = $bank_account;
                $invoice_create->note = $data->note;
                $invoice_create->account_id = $this->user->account_id;
                $invoice_create->status = 1;

                if (!$invoice_create->save()) {
                    $json["message"] = $invoice_create->fail()->getMessage();
                    echo json_encode($json);
                    return;
                }                  
            }
        }
        if(isset($data->expense_installments)) {
            $invoice_recurrent = new Invoice_recurrent();
            $invoice_recurrent->category = $data->category;
            $invoice_recurrent->enrollments = $data->installments;
            $invoice_recurrent->account_id = $this->user->account_id;
            $invoice_recurrent->status = 1;
            $invoice_recurrent->save();

            for($i=1;$i<=$data->installments;$i++){
                
                $clone = clone new \DateTime(date_fmt_back($data->due_date));        
                $date1=$clone->modify( '+ '.($i-1).'month');
                $due_date=$date1->format( "Y-m-d" );
                
                $clone2 = clone new \DateTime(return_date_convert($data->reference_date));   
                $date2 = $clone2->modify( '+ '.($i-1).'month');
                $reference_date=$date2->format( "m/Y" ); 
                
                $invoice_create = new Invoice();
                $invoice_create->value = str_replace([".", ","], ["", "."], $data->value);
                $invoice_create->payment_form = $data->payment_form;
                $invoice_create->due_date = $due_date;
                $invoice_create->reference_date = $reference_date;
                $invoice_create->operation = 2;
                $invoice_create->category = $data->category;
                $invoice_create->wallet = $data->wallet;
                $invoice_create->lessor = $data->lessor;
                $invoice_create->property = $data->property;
                $invoice_create->recurrent = $invoice_recurrent->id;
                $invoice_create->bank_account_id = $bank_account;
                $invoice_create->note = $data->note;
                $invoice_create->account_id = $this->user->account_id;
                $invoice_create->status = 1;
                //echo $reference_date."--".$due_date.'<br>';
                if (!$invoice_create->save()) {
                    $json["message"] = $invoice_create->fail()->getMessage();
                    echo json_encode($json);
                    return;
                }              
            }
        }

        $this->message->info("Despesa lançada com sucesso...")->flash();
        $json["redirect"] = url("/despesa");
 
        echo json_encode($json);
        return;
    }
}