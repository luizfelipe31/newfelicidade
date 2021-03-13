<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

/**
 * Description of Receipt
 *
 * @author luizf
 */
class Receipt extends DataLayer  {
  
    public function __construct()
    {
        parent::__construct("receipts", ["contract","due_date","payment_form","status","account_id"]);    
    }
    
}
