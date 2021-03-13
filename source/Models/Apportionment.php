<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;
use CoffeeCode\DataLayer\Connect;

class Apportionment extends DataLayer
{

    public function __construct()
    {
        parent::__construct("apportionments", ["property"]);
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

            $log = new Log();

            $log->account_id = $user->UserLog()->account_id;
            $log->user = $user->UserLog()->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Inclusão do Rateio " . $this->cod();
            $log->save();

        }else{

            if (!parent::save()) {
                return false;
            }

            if (($this->status == 1 || $this->status == 3 ) && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Alteração do Rateio " . $this->cod();
                $log->save();
            }

            if ($this->status == 2 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Exclusão do Rateio " . $this->cod();
                $log->save();
            }

        }

        return true;
    }

    public function save2(): bool {
        parent::save();

        return true;
    }

    public function cod(): string {

        $cod="";

        if(!empty($this->city_hall_cod)){
            $cod = "Rateio de Prefeitura ".$this->city_hall_cod;
        }

        if(!empty($this->light_cod)){
            $cod = "Rateio de Luz ".$this->light_cod;
        }

        if(!empty($this->water_and_sewage_cod)){
            $cod = "Rateio de Água e Esgoto ".$this->water_and_sewage_cod;
        }

        if(!empty($this->fire_department_cod)){
            $cod = "Rateio de Bombeiro ".$this->fire_department_cod;
        }

        if(!empty($this->gas_cod)){
            $cod = "Rateio de Gás ".$this->gas_cod;
        }

        return "{$cod}";
    }


    public function apportionmentProperty()
    {
        if($this->property){
            return (new Property())->findById($this->property);
        }
        return null;
    }



    /**
     * @return int
     */
    public function propertyCount() {

        $user = User::UserLog();

        if(!empty($this->city_hall_cod)){
            return (new Apportionment())->find("status=1 and account_id=:account_id and city_hall_cod=:city_hall_cod","account_id={$user->account_id}&city_hall_cod={$this->city_hall_cod}")->count();
        }

        if(!empty($this->light_cod)){
            return (new Apportionment())->find("status=1 and account_id=:account_id and light_cod=:light_cod","account_id={$user->account_id}&light_cod={$this->light_cod}")->count();
        }

        if(!empty($this->water_and_sewage_cod)){
            return (new Apportionment())->find("status=1 and account_id=:account_id and water_and_sewage_cod=:water_and_sewage_cod","account_id={$user->account_id}&water_and_sewage_cod={$this->water_and_sewage_cod}")->count();
        }

        if(!empty($this->fire_department_cod)){
            return (new Apportionment())->find("status=1 and account_id=:account_id and fire_department_cod=:fire_department_cod","account_id={$user->account_id}&fire_department_cod={$this->fire_department_cod}")->count();
        }

        if(!empty($this->gas_cod)){
            return (new Apportionment())->find("status=1 and account_id=:account_id and gas_cod=:gas_cod","account_id={$user->account_id}&gas_cod={$this->gas_cod}")->count();
        }


    }
}