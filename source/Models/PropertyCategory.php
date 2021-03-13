<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;

class PropertyCategory extends DataLayer
{

    public function __construct()
    {
        parent::__construct("property_categories", ["description"]);
    }

}