<?php

namespace Source\App;

use Source\Models\Bank;
use Source\Models\BankAccount;
use Source\Models\TypeAccount;

class BankAccountController extends Admin
{

    public function __construct($router) {
        parent::__construct($router);
    }

    public function home(): void {

        $accounts = (new BankAccount)->find("status=1 and account_id=:c","c={$this->user->account_id}")->fetch(true);
        $banks = (new Bank())->find("account_id=:account","account={$this->user->account_id}")->order("description")->fetch(true);
        $type_accounts = (new TypeAccount())->find()->order("description")->fetch(true);
        
        $head = $this->seo->render(
            CONF_SITE_NAME . " | Conta Bancária",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("financial/bank_account", [
            "head" => $head,
            "menu" => "financial",
            "submenu" => "bank_account",
            "bank_accounts" => $accounts,
            "banks" => $banks,
            "type_accounts" => $type_accounts
        ]);

    }

    public function add(?array $data): void {

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object)$post;

        $bank_account = new BankAccount();
        $bank_account->bank = $data->bank;
        $bank_account->type_account = $data->type_account;
        $bank_account->agency = $data->agency;
        $bank_account->number_account = $data->number_account;
        $bank_account->pix = $data->pix;
        $bank_account->account_id = $this->user->account_id;
        $bank_account->status = 1;

        if (!$bank_account->save()) {
            $json["message"] = $bank_account->fail()->getMessage();
            echo json_encode($json);
            return;
        }

        $this->message->info("Conta bancária cadastrada com sucesso...")->flash();
        $json["redirect"] = url("/contabancaria");
 
        echo json_encode($json);
        return;
    }

    public function delete(?array $data): void {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $account_count = (new BankAccount())->find("status!=2")->count();

        if($account_count==1){
            $this->message->info("Ao menos uma conta bancária é necessária no sistema.")->flash();
            redirect("/contabancaria");
        }

        $account = (new BankAccount())->find("status!=2 and cod=:cod","cod={$data["cod"]}")->fetch();

        if($account == null){
            $json["message"] = "Essa conta bancária não existe.";
            echo json_encode($json);
            return;
        }

        $account->status = 2;
        $account->save();

        $this->message->info("Conta bancária excluída com sucesso...")->flash();
        redirect("/contabancaria");
    }

    public function edit(): void {

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object)$post;

        $bank_account = (new BankAccount())->find("status!=2 and cod=:cod","cod={$data->cod}")->fetch();

        if($bank_account == null){
            $json["message"] = "Essa conta bancária não existe.";
            echo json_encode($json);
            return;
        }

        $bank_account->bank = $data->bank;
        $bank_account->type_account = $data->type_account;
        $bank_account->agency = $data->agency;
        $bank_account->number_account = $data->number_account;
        $bank_account->pix = $data->pix;
        if (!$bank_account->save()) {
            $json["message"] = $bank_account->fail()->getMessage();
            echo json_encode($json);
            return;
        }

        $this->message->info("Conta bancária alterada com sucesso...")->flash();
        $json["redirect"] = url("/contabancaria");
 
        echo json_encode($json);
        return;
    }    
}