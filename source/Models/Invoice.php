<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

/**
 * Description of Invoice
 *
 * @author luizf
 */
class Invoice extends DataLayer   {
    
    public function __construct()
    {
        parent::__construct("invoices", ["value","operation","category","wallet","reference_date","due_date","status_comission","status","account_id"]);    
    }
    
}
