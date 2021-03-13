<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;

class Account extends DataLayer
{
    public function __construct() {
        parent::__construct("accounts", ["description", "status"]);
    }
}