<?php 

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

class LessorBalance extends DataLayer   {
    
    public function __construct()
    {
        parent::__construct("lessor_balances", ["value","payment_form","operation","category","wallet","reference_date","due_date"]);    
    }
}