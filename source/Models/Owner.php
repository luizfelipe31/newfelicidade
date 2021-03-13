<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;
use Exception;

class Owner extends DataLayer
{
    public function __construct()
    {
        parent::__construct("owners", ["property","lessor","percent","date_start"]);
    }

   /**
    * 
    * @return Client
    */
    public function findClient(): Client {
       return (new Client())->findById($this->lessor);
    }
}