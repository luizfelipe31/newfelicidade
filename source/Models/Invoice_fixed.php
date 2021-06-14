<?php 

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

class Invoice_fixed extends DataLayer   {
    
    public function __construct()
    {
        parent::__construct("invoice_fixeds", ["category","account_id","status"]);    
    }
 
}