<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;
use CoffeeCode\DataLayer\Connect;

class Category extends DataLayer
{
    public function __construct()
    {
        parent::__construct("categories", ["description"]);
    }

    public function invoiceDesc() {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $invoices = $connect->query("SELECT * 
        FROM invoices WHERE status=1 and category={$this->id} and account_id='{$user->account_id}'");

        return $invoices->fetchAll();
    }
}