<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;
use CoffeeCode\DataLayer\Connect;
/**
 * Description of Invoice
 *
 * @author luizf
 */
class Invoice extends DataLayer   {
    
    public function __construct()
    {
        parent::__construct("invoices", ["value","payment_form","operation","category","wallet","reference_date","due_date"]);    
    }
 
    public function save(): bool {
        
        $user = new User();

        if (empty($this->id)) {

            if (!parent::save()) {
                return false;
            }
        
            $log = new Log();

            $log->account_id = $user->UserLog()->account_id;
            $log->user = $user->UserLog()->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Lançamento de despesa " . $this->categoryDesc()->description. " -- " .str_price($this->value);
            $log->save();

        }else{

            if (!parent::save()) {
                return false;
            }

            if ($this->status == 1 || $this->status == 3 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Alteração de despesa " . $this->categoryDesc()->description. " -- " .str_price($this->value);
                $log->save();
            }

            if ($this->status == 2 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Exclusão de despesa " .  $this->categoryDesc()->description. " -- " .str_price($this->value);
                $log->save();
            }
        }

        return true;
    }

    public function save2(): bool {
        parent::save();

        return true;
    }

    public function categoryDesc(): ?Category {
        return (new Category())->findById($this->category);
    }

    public function paymenteForm(): ?string {

        switch ($this->payment_form) {
            case "billet":
                return "Boleto";
                break;
            case "check":
                return "Cheque";
                break;
            case "bank_deposit":
                return "Depósito Bancário";
                break;
            case "money":
                return "Dinheiro";
                break;
        }
    }

    public function typeInvoice(): ?string {

        $var = "Lançamento Único";

        if($this->fixed!="") {
            $var = "Lançamento Fixo";
        }

        if($this->fixed!="") {
            $var = "Lançamento Recorrente";
        }

        return $var;
    }

    public function propertyDesc(): ?Property {
        if($this->property){
          return (new Property())->findById($this->property);
        }
        return null;
    }

    public function clientDesc(): ?Client {
        if($this->lessor){
          return (new Client())->findById($this->lessor);
        }
        return null;
    }

    public function walltetDesc(): ?Wallet {
        if($this->wallet){
          return (new Wallet())->findById($this->wallet);
        }
        return null;
    }

    public function bankDesc() {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $property = $connect->query("SELECT banks.description as bank,type_accounts.description as type_account,agency,number_account,pix
        from bank_accounts
        inner join banks on banks.id=bank_accounts.bank
        inner join type_accounts on type_accounts.id=bank_accounts.type_account
        where bank_accounts.id='{$this->bank_account_id}' and bank_accounts.account_id='{$user->account_id}' ");

        return $property->fetch();
    }

    public function contractDesc() {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $property = $connect->query("SELECT * from contracts inner join properties
        on properties.id=contracts.property
        where contracts.id='{$this->contract}' and contracts.account_id='{$user->account_id}' ");

        return $property->fetch();
    }
}
