<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

/**
 * Description of ReceiptInvoice
 *
 * @author luizf
 */
class ReceiptInvoice extends DataLayer   {

    public function __construct()
    {
        parent::__construct("receipt_invoices", ["receipt","invoice"]);    
    }
    
}
