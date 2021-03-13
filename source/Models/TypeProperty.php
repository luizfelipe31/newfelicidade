<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;

class TypeProperty extends DataLayer
{
    public function __construct()
    {
        parent::__construct("type_properties", ["description"]);
    }
}