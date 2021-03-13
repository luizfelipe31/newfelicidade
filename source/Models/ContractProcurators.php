<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

/**
 * Description of ContractProcurators
 *
 * @author Luiz
 */
class ContractProcurators extends DataLayer  {
    
    public function __construct()
    {
        parent::__construct("contract_procurators", ["contract","procurator","status","account_id"]);    
    }
    
}
