<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

/**
 * Description of ContractLessee
 *
 * @author Luiz
 */
class ContractLessee extends DataLayer  {
    
    public function __construct()
    {
        parent::__construct("contract_lessees", ["contract","lessee","status","account_id"]);    
    }
  
    /**
     * 
     * @return Owner
     */
    public function findLesse(): Owner {
       return (new Owner())->findById($this->lessee);
    }
}
