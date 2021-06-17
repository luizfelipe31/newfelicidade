<?php 

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

class Invoice_recurrent extends DataLayer   {
    
    public function __construct()
    {
        parent::__construct("invoice_recurrents", ["category","enrollments","account_id","status"]);    
    }
 
}