<?php

namespace Source\App;

use Source\Models\BankAccount;
use Source\Models\Billet;
use Source\Models\BilletInvoice;
use Source\Models\Category;
use Source\Models\Client;
use Source\Models\Invoice;
use Source\Models\Invoice_fixed;
use Source\Models\Invoice_recurrent;
use Source\Models\Property;
use Source\Models\Receipt;
use Source\Models\ReceiptInvoice;
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

    public function incoming(?array $data): void {

        $properties = (new Property())->find("status=1 and account_id=:c and id in (select property from contracts where status=1)","c={$this->user->account_id}")->order("id desc")->fetch(true);

        $clients = (new Client)->find("status=1 and lessee=1 and account_id=:c","c={$this->user->account_id}")->fetch(true);

        $bank_accounts = (new BankAccount)->find("status=1 and account_id=:c","c={$this->user->account_id}")->fetch(true);

        $wallets = (new Wallet)->find("status=1 and account_id=:c","c={$this->user->account_id}")->order('description asc')->fetch(true);

        $main_wallet = (new Wallet)->find("id=1")->fetch();

        $categories = (new Category)->find("(status=1 and account_id is null and operation!='income') or (status=1 and account_id=:c and operation!='income')","c={$this->user->account_id}")->order("description asc")->fetch(true);

        $categories_add = (new Category)->find("status=1 and account_id=:c","c={$this->user->account_id}")->order("description asc")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Cobranças",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("financial/incoming", [
            "head" => $head,
            "menu" => "financial",
            "submenu" => "incoming",
            "properties" => $properties,
            "clients" => $clients,
            "bank_accounts" => $bank_accounts,
            "wallets" => $wallets,
            "main_wallet" => $main_wallet,
            "categories" => $categories,
            "categories_add" => $categories_add
        ]);
    }

    public function compensation(?array $data): void {
    
        $date_start = return_date_convert(date("m/Y"));
        $date_end = return_date_renovation(date("m/Y"));
        $type="all";
        $operation="both";

        $invoices = (new Invoice)->find("status=1 and due_date between :s and :e and account_id=:c and compensation_date is null ","c={$this->user->account_id}&s={$date_start}&e={$date_end}")->fetch(true);

        if (!empty($data["action"]) && $data["action"] == "search") {

            $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

            $data = (object)$post;

            $date_start = date_fmt_back($data->date_start);
            $date_end = date_fmt_back($data->date_end);

        
            if($data->operation!="both"){
      
                $operation=$data->operation;

                if($data->type!="all"){
                    $type=$data->type;
                    if($type=="adm"){
                        $invoices = (new Invoice)->find("status=1 and due_date between :s and :e and operation=:o and lessor=0 and property=0 and compensation_date is null and account_id=:c ","c={$this->user->account_id}&s={$date_start}&e={$date_end}&o={$data->operation}")->fetch(true); 
                    }
                    if($type=="property"){
                        $invoices = (new Invoice)->find("(status=1 and due_date between :s and :e and operation=:o and lessor=0 and property!=0  and compensation_date is null and account_id=:c) or (status=1 and due_date between :s and :e and operation=:o and compensation_date is null  and contract is not null and account_id=:c) ","c={$this->user->account_id}&s={$date_start}&e={$date_end}&o={$data->operation}")->fetch(true); 
                    }
                    if($type=="lessor"){
                        $invoices = (new Invoice)->find("status=1 and due_date between :s and :e and operation=:o and lessor!=0 and property=0 and compensation_date is null and account_id=:c ","c={$this->user->account_id}&s={$date_start}&e={$date_end}&o={$data->operation}")->fetch(true); 
                    }
                    
                }else{
                    $invoices = (new Invoice)->find("status=1 and due_date between :s and :e and operation=:o and compensation_date is null  and account_id=:c ","c={$this->user->account_id}&s={$date_start}&e={$date_end}&o={$data->operation}")->fetch(true); 
                }

            }else{

                if($data->type!="all"){
                    $type=$data->type;
                    if($type=="adm"){
                        $invoices = (new Invoice)->find("status=1 and due_date between :s and :e and lessor=0 and property=0 and compensation_date is null and account_id=:c ","c={$this->user->account_id}&s={$date_start}&e={$date_end}")->fetch(true); 
                    }
                    if($type=="property"){
                        $invoices = (new Invoice)->find("(status=1 and due_date between :s and :e and lessor=0 and property!=0 and compensation_date is null and account_id=:c) or (status=1 and due_date between :s and :e and contract is not null and compensation_date is null and account_id=:c)","c={$this->user->account_id}&s={$date_start}&e={$date_end}")->fetch(true); 
                    }
                    if($type=="lessor"){
                        $invoices = (new Invoice)->find("status=1 and due_date between :s and :e and lessor!=0 and property=0 and compensation_date is null  and account_id=:c ","c={$this->user->account_id}&s={$date_start}&e={$date_end}")->fetch(true); 
                    }
                }else{
                    $invoices = (new Invoice)->find("status=1 and due_date between :s and :e and compensation_date is null and account_id=:c ","c={$this->user->account_id}&s={$date_start}&e={$date_end}")->fetch(true);
                } 

            }

            
        }

        $wallets = (new Wallet)->find("status=1 and account_id=:c","c={$this->user->account_id}")->order('description asc')->fetch(true);
        $main_wallet = (new Wallet)->find("id=1")->fetch();
        $bank_accounts = (new BankAccount)->find("status=1 and account_id=:c","c={$this->user->account_id}")->fetch(true);
        $categories = (new Category)->find("(status=1 and account_id is null) or (status=1 and account_id=:c)","c={$this->user->account_id}")->order("description asc")->fetch(true);
        $categories_add = (new Category)->find("status=1 and account_id=:c","c={$this->user->account_id}")->order("description asc")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Compensação",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("financial/compensation", [
            "head" => $head,
            "menu" => "financial",
            "submenu" => "compensation",
            "invoices" => $invoices,
            "date_start" => $date_start,
            "date_end" => $date_end,
            "operation" => $operation,
            "type" => $type,
            "bank_accounts" => $bank_accounts,
            "wallets" => $wallets,
            "main_wallet" => $main_wallet,
            "categories" => $categories,
            "categories_add" => $categories_add
        ]);
    }
    
    public function compensationAdd(?array $data): void {
    
        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object)$post;

        $this->message->info("Compensação feita com sucesso...")->flash();
        $json["redirect"] = url("/compensacao");
 
        echo json_encode($json);
        return;

    }

    public function invoiceDelete(array $data): void {

        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $invoice = (new Invoice())->find("status!=2 and id=:id","id={$data["id"]}")->fetch();

        if($invoice == null){
            $json["message"] = "Esse lançamento não existe.";
            echo json_encode($json);
            return;
        }

        $invoice->status = 2;
        $invoice->save();

        $receipt_invoinces = (new ReceiptInvoice())->find("invoice=:id","id={$data["id"]}")->fetch(true);

        if($receipt_invoinces){
            if(count($receipt_invoinces)==1){
              foreach($receipt_invoinces as $receipt_invoince){  
                $receipt = (new Receipt())->findById($receipt_invoince->receipt);
                $receipt->status = 2 ; 
                $receipt->save();
              }
            }
        }

        $billet_invoices = (new BilletInvoice())->find("invoice=:id","id={$data["id"]}")->fetch(true);

        if($billet_invoices){
            if(count($$billet_invoices)==1){
               foreach($billet_invoices as $billet_invoice){
                $billet = (new Billet())->findById($billet_invoice->billet);
                $billet->status = 2;
                $billet->save();
               }
            }
        }
        $this->message->info("Lançamento excluído com sucesso...")->flash();
        $json["redirect"] = url("/compensacao");
 
        echo json_encode($json);
        return;

    }

    public function invoiceUpdate(array $data): void {

        $this->message->info("Lançamento alterado com sucesso...")->flash();
        $json["redirect"] = url("/compensacao");
 
        echo json_encode($json);
        return;
    }
    

    public function invoiceSearch(array $data) {

        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $invoice = (new Invoice())->findById($data["id"]);

        $search[] =["payment_form" =>  $invoice->payment_form,"wallet" =>  $invoice->wallet,"bank_account_id" =>  $invoice->bank_account_id,"category" =>  $invoice->category,"due_date" =>  date_fmt2($invoice->due_date),"reference_date" =>  $invoice->reference_date,"operation" =>  $invoice->operation,"value" =>  $invoice->value,"note" =>  $invoice->note];

        echo json_encode($search);
    }

    public function returnReceipt(?array $data): void {
    
        $head = $this->seo->render(
            CONF_SITE_NAME . " | Compensação",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("financial/return_receipt", [
            "head" => $head
        ]);
    }
}