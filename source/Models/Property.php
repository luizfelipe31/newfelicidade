<?php


namespace Source\Models;
use CoffeeCode\DataLayer\DataLayer;
use Source\Support\Message;
use CoffeeCode\DataLayer\Connect;
use Exception;

class Property extends DataLayer
{

    /** @var MESSAGE */
    protected $message;

    public function __construct()
    {
        parent::__construct("properties", ["category","type","realtor","realtor","zipcode","street","number","district","state","city"]);
        $this->message = new Message();
    }


    /**
     * @return bool
     */
    public function save(): bool {

        $user = new User();

        if (empty($this->id)) {

            if (!$this->validateAddresses() || !$this->validateCod() || !parent::save()) {
                return false;
            }

            $log = new Log();

            $log->account_id = $user->UserLog()->account_id;
            $log->user = $user->UserLog()->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Inclusão do imóvel " . $this->fullName();
            $log->save();

        }else{

            if (!$this->validateAddresses() || !$this->validateCod() || !parent::save()) {
                return false;
            }

            if (($this->status == 1 || $this->status == 3 ) && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Alteração do imóvel " . $this->fullName();
                $log->save();
            }

            if ($this->status == 2 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Exclusão do imóvel " . $this->fullName();
                $log->save();
            }

        }

        return true;
    }

    public function save2(): bool {
        parent::save();

        return true;
    }

    protected function validateAddresses(): bool{

        $user = new User();

        if($this->status !=2) {
            if ($this->zipcode == "" || $this->street == "" || $this->number == "" || $this->district == "" || $this->state == "" || $this->city == "") {

                $this->fail = new Exception("Preencha todos os dados de endereço necessários para identificação do imóvel");
                return false;

            }

            $propertyByAddress = null;
            if (!$this->id) {
                $propertyByAddress = $this->find("street = :street and number = :number and complement = :complement and district = :district and state= :state and city= :city  and status!=2 and account_id=:account_id",
                    "street={$this->street}&number={$this->number}&complement={$this->complement}&district={$this->district}&state={$this->state}&city={$this->city}&account_id={$user->UserLog()->account_id}")->count();
            } else {
                $propertyByAddress = $this->find("street = :street and number = :number and complement = :complement and district = :district and state= :state and city= :city  and  id != :id  and status!=2 and account_id=:account_id",
                    "id={$this->id}&street={$this->street}&number={$this->number}&complement={$this->complement}&district={$this->district}&state={$this->state}&city={$this->city}&account_id={$user->UserLog()->account_id}")->count();
            }

            if ($propertyByAddress) {
                $this->fail = new Exception("Esse endereço já foi cadastrado para um outro imóvel");
                return false;
            }
        }
        return true;

    }

    protected function validateCod(): bool{

        $user = new User();

        if($this->properties_cod!="") {
            $propertyByCod = null;
            if (!$this->id) {
                $propertyByCod = $this->find("properties_cod = :properties_cod and status!=2 and account_id=:account_id",
                    "properties_cod={$this->properties_cod}&account_id={$user->UserLog()->account_id}")->count();
            } else {
                $propertyByCod = $this->find("properties_cod = :properties_cod and  id != :id  and status!=2 and account_id=:account_id",
                    "id={$this->id}&properties_cod={$this->properties_cod}&account_id={$user->UserLog()->account_id}")->count();
            }

            if ($propertyByCod) {
                $this->fail = new Exception("Esse código já foi cadastrado para um outro imóvel.");
                return false;
            }
        }
        return true;

    }

    public function fullName(): string {

        return "{$this->street} {$this->number} {$this->complement} {$this->district}";
    }

    public function fullNameComplete(): string {

        return "{$this->street} {$this->number} {$this->complement} {$this->district} {$this->state} {$this->city}";
    }

    /**
     * @return Level|null
     */
    public function owners() {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $owners = $connect->query("SELECT clients.id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name,percent  FROM owners 
        inner join clients on clients.id=owners.lessor
   WHERE property='{$this->id}' and owners.status=1 and owners.account_id='{$user->account_id}' ORDER BY name");

        return $owners->fetchAll();
    }

    /**
     * @return Level|null
     */
    public function procurators() {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $owners = $connect->query("SELECT clients.id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name  FROM owners 
        inner join clients on clients.id=owners.procurator
   WHERE property='{$this->id}' and owners.status=1 and clients.procurator=1 and owners.account_id='{$user->account_id}' ORDER BY name");

        return $owners->fetchAll();
    }

    /**
     * @return Level|null
     */
    public function ownersProperty() {

        $user = User::UserLog();

        return (new Owner())->find("property=:p and account_id=:account_id and status=1","p={$this->id}&account_id={$user->account_id}")->fetch(true);

    }

    public function showPhoto1(): ?string {

        if ($this->photo1 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo1}")) {
            return $this->photo1;
        }

        return null;
    }

    public function showPhoto2(): ?string {

        if ($this->photo2 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo2}")) {
            return $this->photo2;
        }

        return null;
    }
    public function showPhoto3(): ?string {

        if ($this->photo3 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo3}")) {
            return $this->photo3;
        }

        return null;
    }

    public function showPhoto4(): ?string {

        if ($this->photo4 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo4}")) {
            return $this->photo4;
        }

        return null;
    }

    public function showPhoto5(): ?string {

        if ($this->photo5 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo5}")) {
            return $this->photo5;
        }

        return null;
    }

    public function showPhoto6(): ?string {

        if ($this->photo6 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo6}")) {
            return $this->photo6;
        }

        return null;
    }

    public function showPhoto7(): ?string {

        if ($this->photo7 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo7}")) {
            return $this->photo7;
        }

        return null;
    }

    public function showPhoto8(): ?string {

        if ($this->photo8 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo8}")) {
            return $this->photo8;
        }

        return null;
    }

    public function showPhoto9(): ?string {

        if ($this->photo9 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo9}")) {
            return $this->photo9;
        }

        return null;
    }

    public function showPhoto10(): ?string {

        if ($this->photo10 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo10}")) {
            return $this->photo10;
        }

        return null;
    }
}