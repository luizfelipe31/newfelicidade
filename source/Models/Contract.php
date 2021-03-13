<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;
use Exception;
use CoffeeCode\DataLayer\Connect;


/**
 * Description of Contract
 *
 * @author Luiz
 */
class Contract extends DataLayer  {
   
    public function __construct()
    {
        parent::__construct("contracts", ["property","lease_price","commission","readjustment_type","lease_term","start_date","end_date","renovation","due_date","paymento_form","contract_situation","status","account_id"]);    
    }
  
   /**
     * @return bool
     */
    public function save(): bool {

        $user = new User();

        if (empty($this->id)) {

            if (!parent::save()) {
                return false;
            }

            if($this->contract_cod!=""){
                $cod = $this->contract_cod;
            }else{
                $cod = $this->cod;
            }
            
            $log = new Log();

            $log->account_id = $user->UserLog()->account_id;
            $log->user = $user->UserLog()->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Inclusão do Contrato" . $cod;
            $log->save();

        }else{

            if (!parent::save()) {
                return false;
            }

            if (($this->status == 1 || $this->status == 3 ) && $user->UserLog()) {
                
                if($this->contract_cod!=""){
                   $cod = $this->contract_cod;
                }else{
                   $cod = $this->cod;
                }
                
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Alteração do Contrato" . $cod;
                $log->save();
            }

            if ($this->status == 2 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Exclusão do Contrato " . $cod;
                $log->save();
            }

        }

        return true;
    }

    public function save2(): bool {
        parent::save();

        return true;
    }

    
   /**
    * 
    * @return type
    */
    public function findOwner() {

        $user = User::UserLog();
        
        $connect = Connect::getInstance();

        $owners = $connect->query("SELECT clients.id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name  FROM owners 
        inner join clients on clients.id=owners.lessor
   WHERE property='{$this->property}' and owners.status=1 and owners.account_id='{$user->account_id}' ORDER BY name");

        return $owners->fetchAll();
        
    }

    public function findLessees() {

        $user = User::UserLog();
        
        $connect = Connect::getInstance();

        $owners = $connect->query("SELECT clients.id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name  FROM contract_lessees 
        inner join clients on clients.id=contract_lessees.lessee
   WHERE contract_lessees.contract='{$this->id}' and contract_lessees.status=1 and contract_lessees.account_id='{$user->account_id}' ORDER BY name");

        return $owners->fetchAll();
        
    }
    
   /**
    * 
    * @return Property|null
    */
    public function getProperty(): ?Property {
        if ($this->property) {
            return (new Property())->findById($this->property);
        }
        return null;
    }
}
