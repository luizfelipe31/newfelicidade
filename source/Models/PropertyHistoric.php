<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;
use Exception;

class PropertyHistoric extends DataLayer
{
  public function __construct()
  {
      parent::__construct("property_historics", ["property","historic","date_historic","description"]);
  }

    /**
     * @return bool
     */
    public function save(): bool {

        $user = new User();

        if (empty($this->id)) {

            if ( !$this->validateDate() || !parent::save()) {
                return false;
            }

            $log = new Log();

            $log->account_id = $user->UserLog()->account_id;
            $log->user = $user->UserLog()->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Inclusão do Histórico de imóvel " . $this->fullName();
            $log->save();

        }else{

            if ( !$this->validateDate() ||!parent::save()) {
                return false;
            }

            if (($this->status == 1 || $this->status == 3 ) && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Alteração do Histórico de imóvel " . $this->fullName();
                $log->save();
            }

            if ($this->status == 2 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Exclusão do Histórico de imóvel " . $this->fullName();
                $log->save();
            }

        }

        return true;
    }

    protected function validateDate(): bool{

        if(strtotime($this->date_historic) > strtotime(Date("Y-m-d"))) {

            $this->fail = new Exception("A data não pode ser superior a data de hoje");
            return false;

        }
        return true;

    }

    public function fullName(): string {

       $property = (new Property())->find("id=:p","p={$this->property}")->fetch();

       return "{$property->street} {$property->number} {$property->complement} {$property->district}";
    }

    public function historicDescription(): ?Historic {
        if($this->historic) {
            return (new Historic())->findById($this->historic);
        }

        return null;
    }

}