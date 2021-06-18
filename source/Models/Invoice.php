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

}
