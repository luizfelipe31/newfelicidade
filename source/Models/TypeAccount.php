<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;

class TypeAccount extends DataLayer
{
    public function __construct()
    {
        parent::__construct("type_accounts", ["description"]);
    }
}