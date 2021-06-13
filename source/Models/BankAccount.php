<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;
use Exception;
/**
 * Description of Billet
 *
 * @author luizf
 */
class BankAccount extends DataLayer    {
   
    public function __construct()
    {
        parent::__construct("bank_accounts", ["bank","status","account_id"]);    
    }
    
    public function save(): bool {
        
        $user = new User();

        if (empty($this->id)) {

            if (!$this->validateAccount() || !parent::save()) {
                return false;
            }
        
            $log = new Log();

            $log->account_id = $user->UserLog()->account_id;
            $log->user = $user->UserLog()->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Inclusão da conta bancária " . $this->fullAccount();
            $log->save();

        }else{

            if (!$this->validateAccount() || !parent::save()) {
                return false;
            }

            if ($this->status == 1 || $this->status == 3 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Alteração da conta bancária " . $this->fullAccount();
                $log->save();
            }

            if ($this->status == 2 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Exclusão da conta bancária " .  $this->fullAccount();
                $log->save();
            }
        }

        return true;
    }

    protected function validateAccount(): bool {
        
        $user = new User();

        if(empty($this->bank)||empty($this->type_account)||empty($this->agency)||empty($this->number_account)) {

            $this->fail = new Exception("Preencha os campos necessário");
            return false;

        }else{
        
            $account = null;
            if (!$this->id) {
                $account = $this->find("bank = :b and agency = :a and type_account = :t and number_account = :n and status=1 and account_id=:account_id",
                    "b={$this->bank}&a={$this->agency}&t={$this->type_account}&n={$this->number_account}&account_id={$user->UserLog()->account_id}")->count();
            } else {
                $account = $this->find("bank = :b and agency = :a and type_account = :t and number_account = :n and status=1 and account_id=:account_id AND id != :id ",
                    "b={$this->bank}&a={$this->agency}&t={$this->type_account}&n={$this->number_account}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
            }

            if ($account) {
                $this->fail = new Exception("Essa conta já está cadastrada");
                return false;
            }

            return true;

        }
    }

    public function fullAccount(): string {
        if(empty($this->agency)||empty($this->number_account)) {
          return "{$this->bank}";
        }else{
          return "{$this->descBank()->description} - Ag: {$this->agency} - C: {$this->number_account}";
        }
    }

    public function descBank(): ?Bank {
        if ($this->bank) {
            return (new Bank())->findById($this->bank);
        }
        return null;
    }
}
