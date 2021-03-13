<?php


namespace Source\Models;


use CoffeeCode\DataLayer\DataLayer;
use Source\Support\Message;
use Exception;
use CoffeeCode\DataLayer\Connect;

class Client extends DataLayer {



    /** @var MESSAGE */
    protected $message;

    public function __construct()
    {
        parent::__construct("clients", ["person"]);
        $this->message = new Message();
    }

    /**
     * @return bool
     */
    public function save(): bool {

        $user = new User();

        if (empty($this->id)) {

            if (!$this->validateEmail() || !$this->validateDocument() || !parent::save()) {
                return false;
            }

            $log = new Log();

            $log->account_id = $user->UserLog()->account_id;
            $log->user = $user->UserLog()->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Inclusão do cliente " . $this->fullName();
            $log->save();

        }else{

            if (!$this->validateEmail() || !$this->validateDocument() ||  !parent::save()) {
                return false;
            }

            if ($this->status == 1 || $this->status == 3 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Alteração do cliente " . $this->fullName();
                $log->save();
            }

            if ($this->status == 2 && $user->UserLog()) {
                $log = new Log();

                $log->account_id = $user->UserLog()->account_id;
                $log->user = $user->UserLog()->id;
                $log->ip = $_SERVER["REMOTE_ADDR"];
                $log->description = "Exclusão do cliente " . $this->fullName();
                $log->save();
            }

        }

        return true;
    }

    /**
     * @return bool
     */
    protected function validateEmail(): bool {

        $user = new User();

        if(!empty($this->email)) {
            if (!filter_var($this->email, FILTER_VALIDATE_EMAIL)) {
                $this->fail = new Exception("Informe um e-mail válido");
                return false;
            }

            $userByEmail = null;
            if (!$this->id) {
                $userByEmail = $this->find("email = :email and status!=2 and account_id=:account_id",
                    "email={$this->email}&account_id={$user->UserLog()->account_id}")->count();
            } else {
                $userByEmail = $this->find("email = :email AND id != :id  and status!=2 and account_id=:account_id",
                    "email={$this->email}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
            }

            if ($userByEmail) {
                $this->fail = new Exception("E-mail já cadastrado");
                return false;
            }

        }

        if(!empty($this->email_secundary)) {
            if (!filter_var($this->email_secundary, FILTER_VALIDATE_EMAIL)) {
                $this->fail = new Exception("Informe um e-mail válido");
                return false;
            }

            $userByEmail2 = null;
            if (!$this->id) {
                $userByEmail2 = $this->find("email_secundary = :email and status!=2 and account_id=:account_id",
                    "email={$this->email_secundary}&account_id={$user->UserLog()->account_id}")->count();
            } else {
                $userByEmail2 = $this->find("email_secundary = :email AND id != :id  and status!=2 and account_id=:account_id",
                    "email={$this->email_secundary}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
            }

            if ($userByEmail2) {
                $this->fail = new Exception("E-mail já cadastrado");
                return false;
            }
        }

        if($this->person=="natural_person") {
            if (!empty($this->email_spouse)) {
                if (!filter_var($this->email_spouse, FILTER_VALIDATE_EMAIL)) {
                    $this->fail = new Exception("Informe um e-mail de cônjuge válido");
                    return false;
                }

                $userByEmail3 = null;
                if (!$this->id) {
                    $userByEmail3 = $this->find("email_spouse = :email and status!=2 and account_id=:account_id",
                        "email={$this->email_spouse}&account_id={$user->UserLog()->account_id}")->count();
                } else {
                    $userByEmail3 = $this->find("email_spouse = :email AND id != :id  and status!=2 and account_id=:account_id",
                        "email={$this->email_spouse}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
                }

                if ($userByEmail3) {
                    $this->fail = new Exception("E-mail desse cônjuge já está cadastrado");
                    return false;
                }
            }
        }

        if($this->person=="legal_person") {
            if (!empty($this->email_partner)) {
                if (!filter_var($this->email_partner, FILTER_VALIDATE_EMAIL)) {
                    $this->fail = new Exception("Informe um e-mail de representante válido");
                    return false;
                }
            }
        }

        return true;
    }

    /**
     * @return bool
     */
    protected function validateDocument(): bool{

        $user = new User();

        if($this->person=="natural_person") {

            if (!empty($this->document)) {

                $userByDocument = null;
                if (!$this->id) {
                    $userByDocument = $this->find("document = :document and status!=2 and account_id=:account_id",
                        "document={$this->document}&account_id={$user->UserLog()->account_id}")->count();
                } else {
                    $userByDocument = $this->find("document = :document AND id != :id  and status!=2 and account_id=:account_id",
                        "document={$this->document}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
                }

                if ($userByDocument) {
                    $this->fail = new Exception("CPF já cadastrado");
                    return false;
                }

            }

            if (!empty($this->document_secundary)) {

                $userByDocumentSecundary = null;
                if (!$this->id) {
                    $userByDocumentSecundary = $this->find("document_secundary = :document_secundary and status!=2 and account_id=:account_id",
                        "document_secundary={$this->document_secundary}&account_id={$user->UserLog()->account_id}")->count();
                } else {
                    $userByDocumentSecundary = $this->find("document_secundary = :document_secundary AND id != :id  and status!=2 and account_id=:account_id",
                        "document_secundary={$this->document_secundary}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
                }

                if ($userByDocumentSecundary) {
                    $this->fail = new Exception("RG já cadastrado");
                    return false;
                }

            }

            if (!empty($this->document_spouse)) {

                $userByDocumentSpouse = null;
                if (!$this->id) {
                    $userByDocumentSpouse = $this->find("document_spouse = :document_spouse and status!=2 and account_id=:account_id",
                        "document_spouse={$this->document_spouse}&account_id={$user->UserLog()->account_id}")->count();
                } else {
                    $userByDocumentSpouse = $this->find("document_spouse = :document_spouse AND id != :id  and status!=2 and account_id=:account_id",
                        "document_spouse={$this->document_spouse}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
                }

                if ($userByDocumentSpouse) {
                    $this->fail = new Exception("CPF desse cônjuge já está cadastrado");
                    return false;
                }

            }

            if (!empty($this->document_secundary_spouse)) {

                $userByDocumentSecundarySpouse = null;
                if (!$this->id) {
                    $userByDocumentSecundarySpouse = $this->find("document_secundary_spouse = :document_secundary_spouse and status!=2 and account_id=:account_id",
                        "document_secundary_spouse={$this->document_secundary_spouse}&account_id={$user->UserLog()->account_id}")->count();
                } else {
                    $userByDocumentSecundarySpouse = $this->find("document_secundary_spouse = :document_secundary_spouse AND id != :id  and status!=2 and account_id=:account_id",
                        "document_secundary_spouse={$this->document_secundary_spouse}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
                }

                if ($userByDocumentSecundarySpouse) {
                    $this->fail = new Exception("RG desse cônjuge já está cadastrado");
                    return false;
                }

            }
        }else {
            if (!empty($this->company_document)) {

                $userByCompanyDocument = null;
                if (!$this->id) {
                    $userByCompanyDocument = $this->find("company_document = :company_document and status!=2 and account_id=:account_id",
                        "company_document={$this->company_document}&account_id={$user->UserLog()->account_id}")->count();
                } else {
                    $userByCompanyDocument = $this->find("company_document = :company_document AND id != :id  and status!=2 and account_id=:account_id",
                        "company_document={$this->company_document}&account_id={$user->UserLog()->account_id}&id={$this->id}")->count();
                }

                if ($userByCompanyDocument) {
                    $this->fail = new Exception("CNPJ já cadastrado");
                    return false;
                }
            }
        }

        return true;
    }

    /**
     * @param string $email
     * @param string $columns
     * @return User|null
     */
    public function findByEmail(string $email, string $columns = "*"): ?User {

        $user = new User();
        $find = $this->find("email= :e and status=1 and account_id=:account_id", "e={$email}&account_id={$user->UserLog()->account_id}", $columns)->fetch();

        return $find;
    }

    /**
     * @param string $email
     * @param string $columns
     * @return User|null
     */
    public function findByEmail2(string $email, string $columns = "*"): ?User {

        $user = new User();
        $find = $this->find("email_secundary= :e and status=1 and account_id=:account_id", "e={$email}&account_id={$user->UserLog()->account_id}", $columns)->fetch();

        return $find;
    }


    /**
     * @return string
     */
    public function fullName(): string {

        if($this->person=="natural_person") {
            return "{$this->first_name} {$this->last_name}";
        }else{
            return "{$this->company_name}";
        }
    }

    /**
     *
     * @return string|null
     */
    public function showPhoto(): ?string {

        if ($this->photo && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$this->photo}")) {
            return $this->photo;
        }

        return null;
    }


    public function showLessor()
    {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $clients = $connect->query("SELECT id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name FROM clients WHERE lessor=1 and status!=2 and account_id='{$user->account_id}' ORDER BY name");

        return $clients->fetchAll();
    }

    /**
     * @return Level|null
     */
    public function showLessee() {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $owners = $connect->query("SELECT id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name  
   FROM clients WHERE lessee=1 and status=1 and account_id='{$user->account_id}' ORDER BY name");

        return $owners->fetchAll();
    }

    public function showBeneficiary()
    {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $clients = $connect->query("SELECT id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name FROM clients WHERE beneficiary=1 and status!=2 and account_id='{$user->account_id}' ORDER BY name");

        return $clients->fetchAll();
    }

    public function showProcurator()
    {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $clients = $connect->query("SELECT id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name FROM clients WHERE procurator=1 and status!=2 and account_id='{$user->account_id}' ORDER BY name");

        return $clients->fetchAll();
    }

    public function showSurety()
    {
        $user = User::UserLog();

        $connect = Connect::getInstance();

        $clients = $connect->query("SELECT id,CASE
    WHEN person='natural_person' THEN CONCAT(first_name, ' ', last_name) ELSE company_name END AS name FROM clients WHERE surety=1 and status!=2 and account_id='{$user->account_id}' ORDER BY name");

        return $clients->fetchAll();
    }


}