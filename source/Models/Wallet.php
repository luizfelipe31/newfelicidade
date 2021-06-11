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
class Wallet extends DataLayer    {
   
    public function __construct()
    {
        parent::__construct("wallets", ["description","status","account_id"]);    
    }
    
    public function save(): bool {
        
        $user = new User();

        if (empty($this->id)) {

            if (!$this->validateDescription() || !parent::save()) {
                return false;
            }
        
            $log = new Log();

            $log->account_id = $user->UserLog()->account_id;
            $log->user = $user->UserLog()->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Inclusão da carteira " . $this->description;
            $log->save();

        }else{

            if (!$this->validateDescription() || !parent::save()) {
                return false;
            }

            if ($this->status == 1 || $this->status == 3 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Alteração da carteira " . $this->description;
                $log->save();
            }

            if ($this->status == 2 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Exclusão da carteira " .  $this->description;
                $log->save();
            }
        }

        return true;
    }

    protected function validateDescription(): bool {
        
        $user = new User();

        if(!empty($this->description)) {
        
            $wallet = null;
            if (!$this->id) {
                $wallet = $this->find("description = :d and status=1 and account_id=:account_id",
                    "d={$this->description}&account_id={$user->UserLog()->account_id}")->count();
            } else {
                $wallet = $this->find("description = :d AND id != :id  and status=1 and account_id=:account_id",
                    "d={$this->description}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
            }

            if ($wallet) {
                $this->fail = new Exception("Carteira já cadastrada");
                return false;
            }

            return true;

        }else{
            $this->fail = new Exception("Preencha o campo necessário");
            return false;
        }
    }
}
