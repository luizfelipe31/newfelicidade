<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;

class DocumentSecundaryComplement extends DataLayer{

    public function __construct()
    {
        parent::__construct("document_secundary_complements", ["description"]);
    }

}