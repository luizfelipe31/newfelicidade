<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

/**
 * Description of ContractHistoric
 *
 * @author Luiz
 */
class ContractHistoric extends DataLayer  {
    
    public function __construct()
    {
        parent::__construct("contract_historics", ["contract","lease_price","commission","readjustment_type","lease_term","due_date","paymento_form","status_historic","status","account_id"]);    
    }
    
}
