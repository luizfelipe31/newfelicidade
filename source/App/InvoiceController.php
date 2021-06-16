<?php

namespace Source\App;

use Source\Models\BankAccount;
use Source\Models\Category;
use Source\Models\Client;
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

        $categories = (new Category)->find("(status=1 and account_id is null) or (status=1 and account_id=:c)","c={$this->user->account_id}")->order("description asc")->fetch(true);


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
            "categories" => $categories
        ]);
    }
}