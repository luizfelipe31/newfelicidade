<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;

class CivilStatus extends DataLayer
{
    public function __construct()
    {
        parent::__construct("civil_status", ["description"]);
    }
}