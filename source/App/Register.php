<?php


namespace Source\App;


use Source\Models\Apportionment;
use Source\Models\Bank;
use Source\Models\CivilStatus;
use Source\Models\Client;
use Source\Models\DocumentSecundaryComplement;
use Source\Models\Genre;
use Source\Models\Historic;
use Source\Models\Nationality;
use Source\Models\Owner;
use Source\Models\PlaceOfBirth;
use Source\Models\Profession;
use Source\Models\Property;
use Source\Models\PropertyCategory;
use Source\Models\PropertyHistoric;
use Source\Models\TypeAccount;
use Source\Models\TypeProperty;
use Source\Models\User;
use Source\Support\Pager;
use Source\Support\Thumb;
use Source\Support\Upload;

class Register extends Admin
{
    /**
     * Register constructor.
     * @param $router
     */
    public function __construct($router) {
        parent::__construct($router);
    }

    /**
     * @param array|null $data
     */
    public function home(?array $data): void {

        $user = User::UserLog();

        $user_logo = user()->account()->logo;

        $clients = (new Client())->find("status!=2 and account_id=:account","account={$user->account_id}")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Clientes",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/client", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "client",
            "clients" => $clients,
            "logo" => $user_logo
        ]);

    }

    /**
     * @param array|null $data
     */
    public function clientsAdd(?array $data): void {

        $user = User::UserLog();

        $clients = (new Client())->find("status!=2 and account_id=:account and client_cod!='' ","account={$user->account_id}")->fetch(true);

        $document_secundary_complements = (new DocumentSecundaryComplement())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $genres = (new Genre())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $nationalities = (new Nationality())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $place_of_births = (new PlaceOfBirth())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $civil_status = (new CivilStatus())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $professions = (new Profession())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $banks = (new Bank())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $type_accounts = (new TypeAccount())->find()->order("description")->fetch(true);


        $head = $this->seo->render(
            CONF_SITE_NAME . " | Cadastrar Cliente",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/client_add", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "client",
            "clients" => $clients,
            "document_secundary_complements" => $document_secundary_complements,
            "genres" => $genres,
            "nationalities" => $nationalities,
            "place_of_births" => $place_of_births,
            "civil_status" => $civil_status,
            "professions" => $professions,
            "banks" => $banks,
            "type_accounts" => $type_accounts
        ]);

    }

    /**
     * @param array|null $data
     */
    public function clientsRegister(?array $data): void {

        if (!empty($data['csrf'])) {

            if ($_REQUEST && !csrf_verify($_REQUEST)) {

                $json["message"] = "Erro ao enviar o formulário, atualize a página";
                echo json_encode($json);
                return;
            }

            $user = User::UserLog();

            if($data['person']=="natural_person"){
                if (empty($data["first_name"]) || empty($data["last_name"])){
                    $json["message"] = "Nome e Sobrenome são obrigatórios.";
                    echo json_encode($json);
                    return;
                }
                if (empty($data["document"])){
                    $json["message"] = "CPF é obrigatório.";
                    echo json_encode($json);
                    return;
                }
            }else{
                if (empty($data["company_name"])){
                    $json["message"] = "Nome da empresa é obrigatório.";
                    echo json_encode($json);
                    return;
                }
                if (empty($data["company_document"])){
                    $json["message"] = "CNPJ é obrigatório.";
                    echo json_encode($json);
                    return;
                }
            }

            $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

            $data = (object) $post;

            if(!isset($data->ch_lessor) && !isset($data->ch_lessee) && !isset($data->ch_beneficiary) && !isset($data->ch_surety) && !isset($data->ch_procurator)) {
                $json["message"] ="Necessário marcar ao menos um tipo de cliente.";
                echo json_encode($json);
                return;
            }

            $lessor=0;
            $lessee=0;
            $beneficiary=0;
            $surety=0;
            $procurator=0;

            if(isset($data->ch_lessor)) {
                $lessor=1;
            }
            if(isset($data->ch_lessee)) {
                $lessee=1;
            }
            if(isset($data->ch_beneficiary)) {
                $beneficiary=1;
            }
            if(isset($data->ch_surety)) {
                $surety=1;
            }
            if(isset($data->ch_procurator)) {
                $procurator=1;
            }

            $clientCreate = new Client();

            $clientCreate->person = $data->person;
            $clientCreate->email = $data->email;
            $clientCreate->email_secundary = $data->email_secundary;
            $clientCreate->phone = $data->phone;
            $clientCreate->cel = $data->cel;
            $clientCreate->zipcode = preg_replace("/[^0-9]/", "", $data->zipcode);
            $clientCreate->street = $data->street;
            $clientCreate->number = $data->number;
            $clientCreate->complement = $data->complement;
            $clientCreate->district = $data->district;
            $clientCreate->state = $data->state;
            $clientCreate->city = $data->city;
            $clientCreate->bank = $data->bank;
            $clientCreate->type_account = $data->type_account;
            $clientCreate->agency = $data->agency;
            $clientCreate->number_account = $data->number_account;
            $clientCreate->lessor = $lessor;
            $clientCreate->lessee = $lessee;
            $clientCreate->beneficiary = $beneficiary;
            $clientCreate->surety = $surety;
            $clientCreate->procurator = $procurator;
            $clientCreate->status = 1;
            $clientCreate->account_id = $user->account_id;
            $clientCreate->pix = $data->pix;

            if($data->person=="natural_person"){

                $clientCreate->first_name = str_title($data->first_name);
                $clientCreate->last_name = str_title($data->last_name);
                $clientCreate->client_cod = $data->client_cod;
                $clientCreate->document = preg_replace("/[^0-9]/", "", $data->document);
                $clientCreate->document_secundary = preg_replace("/[^0-9]/", "", $data->document_secundary);
                $clientCreate->document_secundary_complement = $data->document_secundary_complement;
                $clientCreate->shipping_date = date_fmt_back($data->shipping_date);
                $clientCreate->genre = $data->genre;
                $clientCreate->datebirth = date_fmt_back($data->datebirth);
                $clientCreate->nationality = $data->nationality;
                $clientCreate->place_of_birth = $data->place_of_birth;
                $clientCreate->civil_status = $data->civil_status;
                $clientCreate->mother_name = str_title($data->mother_name);
                $clientCreate->father_name = str_title($data->father_name);
                $clientCreate->profession = $data->profession;
                $clientCreate->salary = str_replace([".", ","], ["", "."], $data->salary);
                $clientCreate->company = $data->company;
                $clientCreate->another_income = $data->another_income;
                $clientCreate->income = str_replace([".", ","], ["", "."], $data->income);
                $clientCreate->name_spouse = str_title($data->name_spouse);
                $clientCreate->document_spouse = preg_replace("/[^0-9]/", "", $data->document_spouse);
                $clientCreate->document_secundary_spouse = preg_replace("/[^0-9]/", "", $data->document_secundary_spouse);
                $clientCreate->document_secundary_complement_spouse = $data->document_secundary_complement_spouse;
                $clientCreate->shipping_date_spouse = date_fmt_back($data->shipping_date_spouse);
                $clientCreate->genre_spouse = $data->genre_spouse;
                $clientCreate->datebirth_spouse = date_fmt_back($data->datebirth_spouse);
                $clientCreate->nationality_spouse = $data->nationality_spouse;
                $clientCreate->place_of_birth_spouse = $data->place_of_birth_spouse;
                $clientCreate->profession_spouse = $data->profession_spouse;
                $clientCreate->email_spouse = $data->email_spouse;
                $clientCreate->phone_spouse = $data->phone_spouse;
                $clientCreate->cel_spouse = $data->cel_spouse;
                $clientCreate->name_partner = null;
                $clientCreate->document_partner = null;
                $clientCreate->document_secundary_partner = null;
                $clientCreate->document_secundary_complement_partner = null;
                $clientCreate->shipping_date_partner = null;
                $clientCreate->genre_partner = null;
                $clientCreate->datebirth_partner = null;
                $clientCreate->nationality_partner = null;
                $clientCreate->place_of_birth_partner = null;
                $clientCreate->civil_status_partner = null;
                $clientCreate->email_partner = null;
                $clientCreate->phone_partner = null;
                $clientCreate->cel_partner = null;
                $clientCreate->zipcode_partner = null;
                $clientCreate->street_partner = null;
                $clientCreate->number_partner = null;
                $clientCreate->complement_partner = null;
                $clientCreate->district_partner = null;
                $clientCreate->state_partner = null;
                $clientCreate->city_partner = null;
                $clientCreate->company_name = null;
                $clientCreate->company_document = null;
                $clientCreate->municipal_registration = null;
                $clientCreate->state_registration = null;

                //upload photo
                if (!empty($_FILES["photo"])) {
                    $files = $_FILES["photo"];
                    $upload = new Upload();
                    $image = $upload->image($files, "client-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $clientCreate->photo = $image;
                }

                if (!$clientCreate->save()) {
                    if (!empty($_FILES["photo"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$clientCreate->photo}");
                    }

                    $json["message"] = $clientCreate->fail()->getMessage();
                    echo json_encode($json);
                    return;
                }

            }else{

                $clientCreate->first_name = null;
                $clientCreate->last_name = null;
                $clientCreate->document = null;
                $clientCreate->document_secundary = null;
                $clientCreate->document_secundary_complement = null;
                $clientCreate->shipping_date = null;
                $clientCreate->genre = null;
                $clientCreate->datebirth = null;
                $clientCreate->nationality = null;
                $clientCreate->place_of_birth = null;
                $clientCreate->civil_status = null;
                $clientCreate->mother_name = null;
                $clientCreate->father_name = null;
                $clientCreate->profession = null;
                $clientCreate->salary = null;
                $clientCreate->company = null;
                $clientCreate->another_income = null;
                $clientCreate->income = null;
                $clientCreate->name_spouse = null;
                $clientCreate->document_spouse = null;
                $clientCreate->document_secundary_spouse = null;
                $clientCreate->document_secundary_complement_spouse = null;
                $clientCreate->shipping_date_spouse = null;
                $clientCreate->genre_spouse = null;
                $clientCreate->datebirth_spouse = null;
                $clientCreate->nationality_spouse = null;
                $clientCreate->place_of_birth_spouse = null;
                $clientCreate->profession_spouse = null;
                $clientCreate->email_spouse = null;
                $clientCreate->phone_spouse = null;
                $clientCreate->cel_spouse = null;
                $clientCreate->name_partner = str_title($data->name_partner);
                $clientCreate->document_partner = preg_replace("/[^0-9]/", "", $data->document_partner);
                $clientCreate->document_secundary_partner = preg_replace("/[^0-9]/", "", $data->document_secundary_partner);
                $clientCreate->document_secundary_complement_partner = $data->document_secundary_complement_partner;
                $clientCreate->shipping_date_partner = date_fmt_back($data->shipping_date_partner);
                $clientCreate->genre_partner = $data->genre_partner;
                $clientCreate->datebirth_partner = date_fmt_back($data->datebirth_partner);
                $clientCreate->nationality_partner = $data->nationality_partner;
                $clientCreate->place_of_birth_partner = $data->place_of_birth_partner;
                $clientCreate->civil_status_partner = $clientCreate->civil_status_partner;
                $clientCreate->email_partner = $data->email_partner;
                $clientCreate->phone_partner = $data->phone_partner;
                $clientCreate->cel_partner = $data->cel_partner;
                $clientCreate->zipcode_partner = preg_replace("/[^0-9]/", "", $data->zipcode_partner);
                $clientCreate->street_partner = $data->street_partner;
                $clientCreate->number_partner = $data->number_partner;
                $clientCreate->complement_partner = $data->complement_partner;
                $clientCreate->district_partner = $data->district_partner;
                $clientCreate->state_partner = $data->state_partner;
                $clientCreate->city_partner = $data->city_partner;
                $clientCreate->company_name = $data->company_name;
                $clientCreate->client_cod = $data->client_cod_company;
                $clientCreate->company_document = preg_replace("/[^0-9]/", "", $data->company_document);
                $clientCreate->municipal_registration = $data->municipal_registration;
                $clientCreate->state_registration = $data->state_registration;

                //upload photo
                if (!empty($_FILES["photo_company"])) {
                    $files = $_FILES["photo_company"];
                    $upload = new Upload();
                    $image = $upload->image($files, "client-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $clientCreate->photo = $image;
                }

                if (!$clientCreate->save()) {
                    if (!empty($_FILES["photo_company"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$clientCreate->photo}");
                    }

                    $json["message"] = $clientCreate->fail()->getMessage();
                    echo json_encode($json);
                    return;
                }
            }

            $this->message->info("Cliente cadastrado com sucesso...")->flash();
            $json["redirect"] = url("/cadastro/clientes/cadastrar");

            echo json_encode($json);
            return;
        }

    }

    /**
     * @param array|null $data
     */
    public function clientsEdit(?array $data): void {

        $user = User::UserLog();

        //delete
        if (!empty($data["action"]) && $data["action"] == "delete") {

            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

            $clientDelete = (new Client())->find("status!=2 and account_id=:account and cod=:cod","account={$user->account_id}&cod={$data["client_cod"]}")->fetch();

            if ($clientDelete==null) {
                $json["message"] = "Você tentou deletar um cliente que não existe";
                echo json_encode($json);
                return;
            }

            $clientDelete->status = 2;

            $clientDelete->save();

            $this->message->info("O cliente foi excluído com sucesso")->flash();
            $json["redirect"] = url("/cadastro/clientes");

            echo json_encode($json);
            return;

        }

        //update
        if (!empty($data["action"]) && $data["action"] == "update") {

          if (!empty($data['csrf'])) {

              if ($_REQUEST && !csrf_verify($_REQUEST)) {

                  $json["message"] = "Erro ao enviar o formulário, atualize a página";
                  echo json_encode($json);
                  return;
              }
              $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

              $clientUpdate = (new Client())->find("status!=2 and account_id=:account and cod=:cod",
                  "account={$user->account_id}&cod={$data["client_cod"]}")->fetch();

              if ($clientUpdate == null) {
                  $json["message"] = "Você tentou deletar um cliente que não existe";
                  echo json_encode($json);
                  return;
              }

              if ($data['person'] == "natural_person") {
                  if (empty($data["first_name"]) || empty($data["last_name"])) {
                      $json["message"] = "Nome e Sobrenome são obrigatórios.";
                      echo json_encode($json);
                      return;
                  }
                  if (empty($data["document"])) {
                      $json["message"] = "CPF é obrigatório.";
                      echo json_encode($json);
                      return;
                  }
              } else {
                  if (empty($data["company_name"])) {
                      $json["message"] = "Nome da empresa é obrigatório.";
                      echo json_encode($json);
                      return;
                  }
                  if (empty($data["company_document"])) {
                      $json["message"] = "CNPJ é obrigatório.";
                      echo json_encode($json);
                      return;
                  }
              }

              $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

              $data = (object)$post;

              if (!isset($data->ch_lessor) && !isset($data->ch_lessee) && !isset($data->ch_beneficiary) && !isset($data->ch_surety) && !isset($data->ch_procurator)) {
                  $json["message"] = "Necessário marcar ao menos um tipo de cliente.";
                  echo json_encode($json);
                  return;
              }

              $lessor = 0;
              $lessee = 0;
              $beneficiary = 0;
              $surety = 0;
              $procurator = 0;

              if (isset($data->ch_lessor)) {
                  $lessor = 1;
              }
              if (isset($data->ch_lessee)) {
                  $lessee = 1;
              }
              if (isset($data->ch_beneficiary)) {
                  $beneficiary = 1;
              }
              if (isset($data->ch_surety)) {
                  $surety = 1;
              }
              if (isset($data->ch_procurator)) {
                  $procurator = 1;
              }

              $clientUpdate->person = $data->person;
              $clientUpdate->email = $data->email;
              $clientUpdate->email_secundary = $data->email_secundary;
              $clientUpdate->phone = $data->phone;
              $clientUpdate->cel = $data->cel;
              $clientUpdate->zipcode = preg_replace("/[^0-9]/", "", $data->zipcode);
              $clientUpdate->street = $data->street;
              $clientUpdate->number = $data->number;
              $clientUpdate->complement = $data->complement;
              $clientUpdate->district = $data->district;
              $clientUpdate->state = $data->state;
              $clientUpdate->city = $data->city;
              $clientUpdate->bank = $data->bank;
              $clientUpdate->type_account = $data->type_account;
              $clientUpdate->agency = $data->agency;
              $clientUpdate->number_account = $data->number_account;
              $clientUpdate->lessor = $lessor;
              $clientUpdate->lessee = $lessee;
              $clientUpdate->beneficiary = $beneficiary;
              $clientUpdate->surety = $surety;
              $clientUpdate->procurator = $procurator;
              $clientUpdate->account_id = $user->account_id;
              $clientUpdate->pix = $data->pix;

              if ($data->person == "natural_person") {

                  $clientUpdate->status = $data->status;
                  $clientUpdate->first_name = str_title($data->first_name);
                  $clientUpdate->last_name = str_title($data->last_name);
                  $clientUpdate->client_cod = $data->client_cod;
                  $clientUpdate->document = preg_replace("/[^0-9]/", "", $data->document);
                  $clientUpdate->document_secundary = preg_replace("/[^0-9]/", "", $data->document_secundary);
                  $clientUpdate->document_secundary_complement = $data->document_secundary_complement;
                  $clientUpdate->shipping_date = date_fmt_back($data->shipping_date);
                  $clientUpdate->genre = $data->genre;
                  $clientUpdate->datebirth = date_fmt_back($data->datebirth);
                  $clientUpdate->nationality = $data->nationality;
                  $clientUpdate->place_of_birth = $data->place_of_birth;
                  $clientUpdate->civil_status = $data->civil_status;
                  $clientUpdate->mother_name = str_title($data->mother_name);
                  $clientUpdate->father_name = str_title($data->father_name);
                  $clientUpdate->profession = $data->profession;
                  $clientUpdate->salary = str_replace([".", ","], ["", "."], $data->salary);
                  $clientUpdate->company = $data->company;
                  $clientUpdate->another_income = $data->another_income;
                  $clientUpdate->income = str_replace([".", ","], ["", "."], $data->income);
                  $clientUpdate->name_spouse = str_title($data->name_spouse);
                  $clientUpdate->document_spouse = preg_replace("/[^0-9]/", "", $data->document_spouse);
                  $clientUpdate->document_secundary_spouse = preg_replace("/[^0-9]/", "",
                      $data->document_secundary_spouse);
                  $clientUpdate->document_secundary_complement_spouse = $data->document_secundary_complement_spouse;
                  $clientUpdate->genre_spouse = $data->genre_spouse;
                  $clientUpdate->datebirth_spouse = date_fmt_back($data->datebirth_spouse);
                  $clientUpdate->nationality_spouse = $data->nationality_spouse;
                  $clientUpdate->place_of_birth_spouse = $data->place_of_birth_spouse;
                  $clientUpdate->profession_spouse = $data->profession_spouse;
                  $clientUpdate->email_spouse = $data->email_spouse;
                  $clientUpdate->phone_spouse = $data->phone_spouse;
                  $clientUpdate->cel_spouse = $data->cel_spouse;
                  $clientUpdate->name_partner = null;
                  $clientUpdate->document_partner = null;
                  $clientUpdate->document_secundary_partner = null;
                  $clientUpdate->document_secundary_complement_partner = null;
                  $clientUpdate->shipping_date_partner = null;
                  $clientUpdate->genre_partner = null;
                  $clientUpdate->datebirth_partner = null;
                  $clientUpdate->nationality_partner = null;
                  $clientUpdate->place_of_birth_partner = null;
                  $clientUpdate->civil_status_partner = null;
                  $clientUpdate->email_partner = null;
                  $clientUpdate->phone_partner = null;
                  $clientUpdate->cel_partner = null;
                  $clientUpdate->zipcode_partner = null;
                  $clientUpdate->street_partner = null;
                  $clientUpdate->number_partner = null;
                  $clientUpdate->complement_partner = null;
                  $clientUpdate->district_partner = null;
                  $clientUpdate->state_partner = null;
                  $clientUpdate->city_partner = null;
                  $clientUpdate->company_name = null;
                  $clientUpdate->company_document = null;
                  $clientUpdate->municipal_registration = null;
                  $clientUpdate->state_registration = null;

                  //upload photo
                  if (!empty($_FILES["photo"])) {

                      if ($clientUpdate->photo && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$clientUpdate->photo}")) {
                          unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$clientUpdate->photo}");
                      }

                      $files = $_FILES["photo"];
                      $upload = new Upload();
                      $image = $upload->image($files, "client-".md5(rand(0, 9999) . time()), 600);

                      if (!$image) {
                          $json["message"] = $upload->message()->render();
                          echo json_encode($json);
                          return;
                      }

                      $clientUpdate->photo = $image;
                  }

              } else {

                  $clientUpdate->status = $data->status_company;
                  $clientUpdate->first_name = null;
                  $clientUpdate->last_name = null;
                  $clientUpdate->document = null;
                  $clientUpdate->document_secundary = null;
                  $clientUpdate->document_secundary_complement = null;
                  $clientUpdate->shipping_date = null;
                  $clientUpdate->genre = null;
                  $clientUpdate->datebirth = null;
                  $clientUpdate->nationality = null;
                  $clientUpdate->place_of_birth = null;
                  $clientUpdate->civil_status = null;
                  $clientUpdate->mother_name = null;
                  $clientUpdate->father_name = null;
                  $clientUpdate->profession = null;
                  $clientUpdate->salary = null;
                  $clientUpdate->company = null;
                  $clientUpdate->another_income = null;
                  $clientUpdate->income = null;
                  $clientUpdate->name_spouse = null;
                  $clientUpdate->document_spouse = null;
                  $clientUpdate->document_secundary_spouse = null;
                  $clientUpdate->document_secundary_complement_spouse = null;
                  $clientUpdate->shipping_date_spouse = null;
                  $clientUpdate->genre_spouse = null;
                  $clientUpdate->datebirth_spouse = null;
                  $clientUpdate->nationality_spouse = null;
                  $clientUpdate->place_of_birth_spouse = null;
                  $clientUpdate->profession_spouse = null;
                  $clientUpdate->email_spouse = null;
                  $clientUpdate->phone_spouse = null;
                  $clientUpdate->cel_spouse = null;
                  $clientUpdate->name_partner = str_title($data->name_partner);
                  $clientUpdate->document_partner = preg_replace("/[^0-9]/", "", $data->document_partner);
                  $clientUpdate->document_secundary_partner = preg_replace("/[^0-9]/", "",
                      $data->document_secundary_partner);
                  $clientUpdate->document_secundary_complement_partner = $data->document_secundary_complement_partner;
                  $clientUpdate->shipping_date_partner = date_fmt_back($data->shipping_date_partner);
                  $clientUpdate->genre_partner = $data->genre_partner;
                  $clientUpdate->datebirth_partner = date_fmt_back($data->datebirth_partner);
                  $clientUpdate->nationality_partner = $data->nationality_partner;
                  $clientUpdate->place_of_birth_partner = $data->place_of_birth_partner;
                  $clientUpdate->civil_status_partner = $clientUpdate->civil_status_partner;
                  $clientUpdate->email_partner = $data->email_partner;
                  $clientUpdate->phone_partner = $data->phone_partner;
                  $clientUpdate->cel_partner = $data->cel_partner;
                  $clientUpdate->zipcode_partner = preg_replace("/[^0-9]/", "", $data->zipcode_partner);
                  $clientUpdate->street_partner = $data->street_partner;
                  $clientUpdate->number_partner = $data->number_partner;
                  $clientUpdate->complement_partner = $data->complement_partner;
                  $clientUpdate->district_partner = $data->district_partner;
                  $clientUpdate->state_partner = $data->state_partner;
                  $clientUpdate->city_partner = $data->city_partner;
                  $clientUpdate->company_name = $data->company_name;
                  $clientUpdate->client_cod = $data->client_cod_company;
                  $clientUpdate->company_document = preg_replace("/[^0-9]/", "", $data->company_document);
                  $clientUpdate->municipal_registration = $data->municipal_registration;
                  $clientUpdate->state_registration = $data->state_registration;

                  //upload photo
                  if (!empty($_FILES["photo_company"])) {

                      if ($clientUpdate->photo && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$clientUpdate->photo}")) {
                          unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$clientUpdate->photo}");
                      }


                      $files = $_FILES["photo_company"];
                      $upload = new Upload();
                      $image = $upload->image($files, "client-".md5(rand(0, 9999) . time()), 600);

                      if (!$image) {
                          $json["message"] = $upload->message()->render();
                          echo json_encode($json);
                          return;
                      }

                      $clientUpdate->photo = $image;
                  }

              }

              if (!$clientUpdate->save()) {
                  $json["message"] = $clientUpdate->fail()->getMessage();
                  echo json_encode($json);
                  return;
              }

              $this->message->info("Cliente atualizado com sucesso...")->flash();
              $json["redirect"] = url("/cadastro/clientes/alterar/{$clientUpdate->cod}");

              echo json_encode($json);
              return;
          }
        }

        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $clients = (new Client())->find("status!=2 and account_id=:account and client_cod!='' ","account={$user->account_id}")->fetch(true);

        $clientEdit = (new Client())->find("status!=2 and account_id=:account and cod=:cod","account={$user->account_id}&cod={$data["client_cod"]}")->fetch();

        $document_secundary_complements = (new DocumentSecundaryComplement())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $genres = (new Genre())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $nationalities = (new Nationality())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $place_of_births = (new PlaceOfBirth())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $civil_status = (new CivilStatus())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $professions = (new Profession())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $banks = (new Bank())->find("account_id=:account","account={$user->account_id}")->order("description")->fetch(true);
        $type_accounts = (new TypeAccount())->find()->order("description")->fetch(true);

        if($clientEdit==null){
            redirect("/error");
        }

        if (!empty($data["action"]) && $data["action"] == "update") {

            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

            $this->message->info("Cliente alterado com sucesso...")->flash();
            $json["redirect"] = url("/cadastro/clientes/alterar/{$data["client_cod"]}");

            echo json_encode($json);
            return;
        }

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Alterar Cliente",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/client_edit", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "client",
            "client" => $clientEdit,
            "document_secundary_complements" => $document_secundary_complements,
            "genres" => $genres,
            "nationalities" => $nationalities,
            "place_of_births" => $place_of_births,
            "civil_status" => $civil_status,
            "professions" => $professions,
            "banks" => $banks,
            "type_accounts" => $type_accounts,
            "clients_cod" => $clients
        ]);
    }

    /**
     * @param array|null $data
     */
    public function property(?array $data): void {

        $user = User::UserLog();

        $properties = (new Property())->find("status!=2 and account_id=:account","account={$user->account_id}")->order("street","number","complement")->fetch(true);
        /*foreach ($properties as $property){
            var_dump($property->owners());
        }
        exit;*/
        $head = $this->seo->render(
            CONF_SITE_NAME . " | Imóveis",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/property", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "property",
            "properties" => $properties
        ]);
    }

    /**
     * @param array|null $data
     */
    public function propertyAdd(?array $data): void
    {
        $user = User::UserLog();

        if (!empty($data["action"]) && $data["action"] == "create") {

            if (!empty($data['csrf'])) {

                if ($_REQUEST && !csrf_verify($_REQUEST)) {

                    $json["message"] = "Erro ao enviar o formulário, atualize a página";
                    echo json_encode($json);
                    return;
                }


/////////////////////////////////// VALIDAÇÕES DE PROPRIETÁRIOS
                $sum_percent = array(str_price_invert($data["lessor_percent"]), str_price_invert($data["lessor_percent2"]), str_price_invert($data["lessor_percent3"]), str_price_invert($data["lessor_percent4"]), str_price_invert($data["lessor_percent5"]));

                if(array_sum($sum_percent)<99.96 || array_sum($sum_percent)>100.03){
                    $json["message"] = "A soma da porcentagem dos propretários deve ser igual a 100%";
                    echo json_encode($json);
                    return;
                }

///////////////////////////////////

                $array_compare = array($data["lessor"],$data["lessor2"],$data["lessor3"],$data["lessor4"],$data["lessor5"]);

                $arr = array_count_values($array_compare);

                $value_lessor_repeat = 0;

                foreach($arr as $key => $value){
                    if($value > 1){
                       if($key!=""){
                           $value_lessor_repeat = 1;
                       }
                    }
                }

                if($value_lessor_repeat==1){
                    $json["message"] = "Não pode selecionar o mesmo locador mais de uma vez.";
                    echo json_encode($json);
                    return;
                }

///////////////////////////////////

                if($data["lessor"]=="" && $data["lessor2"]=="" && $data["lessor3"]=="" && $data["lessor4"]=="" && $data["lessor5"]==""){
                    $json["message"] = "Necessário selecionar ao menos um locador.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor"]!="" && $data["lessor_percent"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor2"]!="" && $data["lessor_percent2"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor3"]!="" && $data["lessor_percent3"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor4"]!="" && $data["lessor_percent4"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor5"]!="" && $data["lessor_percent5"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }
///////////////////////////////////

                if($data["lessor"]==$data["beneficiary"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor"]==$data["procurator"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor2"]==$data["beneficiary2"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor2"]==$data["procurator2"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor3"]==$data["beneficiary3"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor3"]==$data["procurator3"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor4"]==$data["beneficiary4"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor4"]==$data["procurator4"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor5"]==$data["beneficiary5"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor5"]==$data["procurator5"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }
////////////////////////////////////////////////////////////

                if($data["procurator"]!="0" && $data["beneficiary"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }

                if($data["procurator2"]!="0" && $data["beneficiary2"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }

                if($data["procurator3"]!="0" && $data["beneficiary3"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }

                if($data["procurator4"]!="0" && $data["beneficiary4"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }

                if($data["procurator5"]!="0" && $data["beneficiary5"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }
////////////////////////// FIM DA VALIDAÇÃO DE PROPRIETÁRIO

                $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

                $data = (object) $post;


                $propertyCreate = new Property();

                $propertyCreate->properties_cod = $data->property_cod;
                $propertyCreate->category = $data->category;
                $propertyCreate->type = $data->type;
                $propertyCreate->realtor = $data->realtor;
                $propertyCreate->lease_price = str_replace([".", ","], ["", "."], $data->lease_price);
                $propertyCreate->lease_term = $data->lease_term;
                $propertyCreate->readjustment_type = $data->readjustment_type;
                $propertyCreate->commission = str_replace([".", ","], ["", "."], $data->commission);
                $propertyCreate->zipcode = $data->zipcode;
                $propertyCreate->street = $data->street;
                $propertyCreate->number = $data->number;
                $propertyCreate->complement = $data->complement;
                $propertyCreate->district = $data->district;
                $propertyCreate->state = $data->state;
                $propertyCreate->city = $data->city;
                $propertyCreate->total_area = $data->total_area;
                $propertyCreate->useful_area = $data->useful_area;
                $propertyCreate->living_room = $data->living_room;
                $propertyCreate->bedroom = $data->bedroom;
                $propertyCreate->bathroom = $data->bathroom;
                $propertyCreate->suites = $data->suites;
                $propertyCreate->garage = $data->garage;
                $propertyCreate->maid_dependence = $data->maid_dependence;
                $propertyCreate->kitchen = $data->kitchen;
                $propertyCreate->pool = $data->pool;
                $propertyCreate->grill = $data->grill;
                $propertyCreate->library = $data->library;
                $propertyCreate->office = $data->office;
                $propertyCreate->furnished = $data->furnished;
                $propertyCreate->description = $data->description;
                $propertyCreate->contract = "free";
                $propertyCreate->status = 1;
                $propertyCreate->account_id = $user->account_id;

                //upload photo
                if (!empty($_FILES["photo1"])) {
                    $files = $_FILES["photo1"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo1 = $image;

                }

                if (!empty($_FILES["photo2"])) {
                    $files = $_FILES["photo2"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo2 = $image;
                }


                if (!empty($_FILES["photo3"])) {
                    $files = $_FILES["photo3"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo3 = $image;
                }



                if (!empty($_FILES["photo4"])) {
                    $files = $_FILES["photo4"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo4 = $image;
                }


                if (!empty($_FILES["photo5"])) {
                    $files = $_FILES["photo5"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo5 = $image;
                }



                if (!empty($_FILES["photo6"])) {
                    $files = $_FILES["photo6"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo6 = $image;
                }



                if (!empty($_FILES["photo7"])) {
                    $files = $_FILES["photo7"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo7 = $image;
                }


                if (!empty($_FILES["photo8"])) {
                    $files = $_FILES["photo8"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo8 = $image;
                }


                if (!empty($_FILES["photo9"])) {
                    $files = $_FILES["photo9"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo9 = $image;
                }


                if (!empty($_FILES["photo10"])) {
                    $files = $_FILES["photo10"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyCreate->photo10 = $image;
                }


                if (!$propertyCreate->save()) {
                    if (!empty($_FILES["photo1"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo1}");
                    }
                    if (!empty($_FILES["photo2"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo2}");
                    }
                    if (!empty($_FILES["photo3"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo3}");
                    }
                    if (!empty($_FILES["photo4"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo4}");
                    }
                    if (!empty($_FILES["photo5"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo5}");
                    }
                    if (!empty($_FILES["photo6"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo6}");
                    }
                    if (!empty($_FILES["photo7"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo7}");
                    }
                    if (!empty($_FILES["photo8"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo8}");
                    }
                    if (!empty($_FILES["photo9"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo9}");
                    }
                    if (!empty($_FILES["photo10"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo10}");
                    }

                    $json["message"] = $propertyCreate->fail()->getMessage();
                    echo json_encode($json);
                    return;
                }else{

                    $validateAddOwner = 1 ;

                    if($data->lessor!="") {

                        $ownerCreate = new Owner();

                        $ownerCreate->property = $propertyCreate->id;
                        $ownerCreate->lessor = $data->lessor;
                        $ownerCreate->beneficiary = $data->beneficiary;
                        $ownerCreate->procurator = $data->procurator;
                        $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent);
                        $ownerCreate->date_start = date('Y-m-d');
                        $ownerCreate->date_end = null;
                        $ownerCreate->status = 1;
                        $ownerCreate->account_id = $user->account_id;

                        if (!$ownerCreate->save()) {

                            $validateAddOwner=0;

                            $json["message"] = $ownerCreate->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }

                    }

                    if($data->lessor2!="") {

                        $ownerCreate = new Owner();

                        $ownerCreate->property = $propertyCreate->id;
                        $ownerCreate->lessor = $data->lessor2;
                        $ownerCreate->beneficiary = $data->beneficiary2;
                        $ownerCreate->procurator = $data->procurator2;
                        $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent2);
                        $ownerCreate->date_start = date('Y-m-d');
                        $ownerCreate->date_end = null;
                        $ownerCreate->status = 1;
                        $ownerCreate->account_id = $user->account_id;


                        if (!$ownerCreate->save()) {

                            $validateAddOwner=0;

                            $json["message"] = $ownerCreate->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }


                    }

                    if($data->lessor3!="") {

                        $ownerCreate = new Owner();

                        $ownerCreate->property = $propertyCreate->id;
                        $ownerCreate->lessor = $data->lessor3;
                        $ownerCreate->beneficiary = $data->beneficiary3;
                        $ownerCreate->procurator = $data->procurator3;
                        $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent3);
                        $ownerCreate->date_start = date('Y-m-d');
                        $ownerCreate->date_end = null;
                        $ownerCreate->status = 1;
                        $ownerCreate->account_id = $user->account_id;


                        if (!$ownerCreate->save()) {

                            $validateAddOwner=0;

                            $json["message"] = $ownerCreate->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }
                    }

                    if($data->lessor4!="") {

                        $ownerCreate = new Owner();

                        $ownerCreate->property = $propertyCreate->id;
                        $ownerCreate->lessor = $data->lessor4;
                        $ownerCreate->beneficiary = $data->beneficiary4;
                        $ownerCreate->procurator = $data->procurator4;
                        $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent4);
                        $ownerCreate->date_start = date('Y-m-d');
                        $ownerCreate->date_end = null;
                        $ownerCreate->status = 1;
                        $ownerCreate->account_id = $user->account_id;


                        if (!$ownerCreate->save()) {

                            $validateAddOwner=0;

                            $json["message"] = $ownerCreate->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }
                    }

                    if($data->lessor5!="") {

                        $ownerCreate = new Owner();

                        $ownerCreate->property = $propertyCreate->id;
                        $ownerCreate->lessor = $data->lessor5;
                        $ownerCreate->beneficiary = $data->beneficiary5;
                        $ownerCreate->procurator = $data->procurator5;
                        $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent5);
                        $ownerCreate->date_start = date('Y-m-d');
                        $ownerCreate->date_end = null;
                        $ownerCreate->status = 1;
                        $ownerCreate->account_id = $user->account_id;


                        if (!$ownerCreate->save()) {

                            $validateAddOwner=0;

                            $json["message"] = $ownerCreate->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }
                    }

                    if ($validateAddOwner==0 ) {

                        $propertyDelete = (new Property())->findById($propertyCreate->id);

                        $propertyDelete->destroy();

                        if (!empty($_FILES["photo1"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo1}");
                        }
                        if (!empty($_FILES["photo2"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo2}");
                        }
                        if (!empty($_FILES["photo3"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo3}");
                        }
                        if (!empty($_FILES["photo4"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo4}");
                        }
                        if (!empty($_FILES["photo5"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo5}");
                        }
                        if (!empty($_FILES["photo6"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo6}");
                        }
                        if (!empty($_FILES["photo7"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo7}");
                        }
                        if (!empty($_FILES["photo8"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo8}");
                        }
                        if (!empty($_FILES["photo9"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo9}");
                        }
                        if (!empty($_FILES["photo10"])) {
                            unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyCreate->photo10}");
                        }
                    }
                }

                $this->message->info("Imóvel cadastrado com sucesso...")->flash();
                $json["redirect"] = url("/cadastro/imoveis/cadastrar");

                echo json_encode($json);
                return;

            }

        }

        $properties = (new Property())->find("status!=2 and account_id=:account and properties_cod!='' ","account={$user->account_id}")->fetch(true);

        $lessors = (new Client())->showLessor();

        $beneficiaries = (new Client())->showBeneficiary();

        $procurators = (new Client())->showProcurator();

        $realtors = (new User())->find("status!=2 and account_id=:account and realtor=1","account={$user->account_id}")->order("first_name,last_name")->fetch(true);

        $categories = (new PropertyCategory())->find()->order("description")->fetch(true);
        $type_properties = (new TypeProperty())->find()->order("description")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Cadastrar Imóvel",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/property_add", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "property",
            "lessors" =>$lessors,
            "beneficiaries" =>$beneficiaries,
            "procurators" =>$procurators,
            "properties" => $properties,
            "realtors" => $realtors,
            "categories" => $categories,
            "type_properties" => $type_properties
        ]);
    }


    /**
     * @param array|null $data
     */
    public function propertyEdit(?array $data): void {

        $user = User::UserLog();

        //delete
        if (!empty($data["action"]) && $data["action"] == "delete") {

            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

            $propertyDelete = (new Property())->find("status!=2 and account_id=:account and cod=:cod",
                "account={$user->account_id}&cod={$data["properties_cod"]}")->fetch();

            if ($propertyDelete==null) {
                $json["message"] = "Você tentou deletar um imóvel que não existe mais";
                echo json_encode($json);
                return;
            }

            $propertyDelete->status = 2;

            $propertyDelete->save();

            $apportioments = (new Apportionment())->find("status=1 and property=:p","p={$propertyDelete->id}")->fetch(true);

/// Exclui todos os rateios relacionados aquele imóvel
            if($apportioments!=null){

                foreach($apportioments as $apportioment){

                    if($apportioment->city_hall_cod!=""){

                        $apportionmentDeletes = (new Apportionment())->find("status=1 and city_hall_cod=:cod","cod={$apportioment->city_hall_cod}")->fetch(true);

                        foreach($apportionmentDeletes as $apportionmentDelete){
                            $apportionmentDelete->status = 2;
                            $apportionmentDelete->save2();
                        }
                    }
                    if($apportioment->light_cod!=""){
                        $apportionmentDeletes = (new Apportionment())->find("status=1 and light_cod=:cod","cod={$apportioment->light_cod}")->fetch(true);

                        foreach($apportionmentDeletes as $apportionmentDelete){
                            $apportionmentDelete->status = 2;
                            $apportionmentDelete->save2();
                        }
                    }
                    if($apportioment->water_and_sewage_cod!=""){
                        $apportionmentDeletes = (new Apportionment())->find("status=1 and water_and_sewage_cod=:cod","cod={$apportioment->water_and_sewage_cod}")->fetch(true);

                        foreach($apportionmentDeletes as $apportionmentDelete){
                            $apportionmentDelete->status = 2;
                            $apportionmentDelete->save2();
                        }
                    }
                    if($apportioment->fire_department_cod!=""){
                        $apportionmentDeletes = (new Apportionment())->find("status=1 and fire_department_cod=:cod","cod={$apportioment->fire_department_cod}")->fetch(true);

                        foreach($apportionmentDeletes as $apportionmentDelete){
                            $apportionmentDelete->status = 2;
                            $apportionmentDelete->save2();
                        }
                    }
                    if($apportioment->gas_cod!=""){
                        $apportionmentDeletes = (new Apportionment())->find("status=1 and gas_cod=:cod","cod={$apportioment->gas_cod}")->fetch(true);

                        foreach($apportionmentDeletes as $apportionmentDelete){
                            $apportionmentDelete->status = 2;
                            $apportionmentDelete->save2();
                        }
                    }

                }

            }

            $this->message->info("O imóvel foi excluído com sucesso")->flash();
            $json["redirect"] = url("/cadastro/imoveis");

            echo json_encode($json);
            return;

        }

        if (!empty($data["action"]) && $data["action"] == "update") {

            if (!empty($data['csrf'])) {

                if ($_REQUEST && !csrf_verify($_REQUEST)) {

                    $json["message"] = "Erro ao enviar o formulário, atualize a página";
                    echo json_encode($json);
                    return;
                }

                $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

                $propertyUpdate = (new Property())->find("status!=2 and account_id=:account and cod=:cod",
                    "account={$user->account_id}&cod={$data["properties_cod"]}")->fetch();

                if ($propertyUpdate == null) {
                    $json["message"] = "Você tentou atualizar um imóvel que não existe mais";
                    echo json_encode($json);
                    return;
                }

/////////////////////////////////// VALIDAÇÕES DE PROPRIETÁRIOS
                $sum_percent = array(str_price_invert($data["lessor_percent"]), str_price_invert($data["lessor_percent2"]), str_price_invert($data["lessor_percent3"]), str_price_invert($data["lessor_percent4"]), str_price_invert($data["lessor_percent5"]));
                if(array_sum($sum_percent)<99.96 || array_sum($sum_percent)>100.03){
                    $json["message"] = "A soma da porcentagem dos propretários deve ser igual a 100%";
                    echo json_encode($json);
                    return;
                }

///////////////////////////////////

                $array_compare = array($data["lessor"],$data["lessor2"],$data["lessor3"],$data["lessor4"],$data["lessor5"]);

                $arr = array_count_values($array_compare);

                $value_lessor_repeat = 0;

                foreach($arr as $key => $value){
                    if($value > 1){
                        if($key!=""){
                            $value_lessor_repeat = 1;
                        }
                    }
                }

                if($value_lessor_repeat==1){
                    $json["message"] = "Não pode selecionar o mesmo locador mais de uma vez.";
                    echo json_encode($json);
                    return;
                }

///////////////////////////////////

                if($data["lessor"]=="" && $data["lessor2"]=="" && $data["lessor3"]=="" && $data["lessor4"]=="" && $data["lessor5"]==""){
                    $json["message"] = "Necessário selecionar ao menos um locador.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor"]!="" && $data["lessor_percent"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor2"]!="" && $data["lessor_percent2"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor3"]!="" && $data["lessor_percent3"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor4"]!="" && $data["lessor_percent4"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor5"]!="" && $data["lessor_percent5"]==""){
                    $json["message"] = "Preencha todas as porcentagens dos locadores selecionados.";
                    echo json_encode($json);
                    return;
                }
///////////////////////////////////

                if($data["lessor"]==$data["beneficiary"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor"]==$data["procurator"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor2"]==$data["beneficiary2"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor2"]==$data["procurator2"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor3"]==$data["beneficiary3"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor3"]==$data["procurator3"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor4"]==$data["beneficiary4"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor4"]==$data["procurator4"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor5"]==$data["beneficiary5"]){
                    $json["message"] = "O locador não pode ser beneficiário dele mesmo.";
                    echo json_encode($json);
                    return;
                }

                if($data["lessor5"]==$data["procurator5"]){
                    $json["message"] = "O locador não pode ser procurador dele mesmo.";
                    echo json_encode($json);
                    return;
                }
////////////////////////////////////////////////////////////

                if($data["procurator"]!="0" && $data["beneficiary"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }

                if($data["procurator2"]!="0" && $data["beneficiary2"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }

                if($data["procurator3"]!="0" && $data["beneficiary3"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }

                if($data["procurator4"]!="0" && $data["beneficiary4"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }

                if($data["procurator5"]!="0" && $data["beneficiary5"]!="0"){
                    $json["message"] = "O locador só pode ter um beneficiário ou um procurador.";
                    echo json_encode($json);
                    return;
                }
////////////////////////// FIM DA VALIDAÇÃO DE PROPRIETÁRIO


                $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

                $data = (object)$post;

                $propertyUpdate->properties_cod = $data->property_cod;
                $propertyUpdate->category = $data->category;
                $propertyUpdate->type = $data->type;
                $propertyUpdate->realtor = $data->realtor;
                $propertyUpdate->lease_price = str_replace([".", ","], ["", "."], $data->lease_price);
                $propertyUpdate->lease_term = $data->lease_term;
                $propertyUpdate->readjustment_type = $data->readjustment_type;
                $propertyUpdate->commission = str_replace([".", ","], ["", "."], $data->commission);
                $propertyUpdate->zipcode = $data->zipcode;
                $propertyUpdate->street = $data->street;
                $propertyUpdate->number = $data->number;
                $propertyUpdate->complement = $data->complement;
                $propertyUpdate->district = $data->district;
                $propertyUpdate->state = $data->state;
                $propertyUpdate->city = $data->city;
                $propertyUpdate->total_area = $data->total_area;
                $propertyUpdate->useful_area = $data->useful_area;
                $propertyUpdate->living_room = $data->living_room;
                $propertyUpdate->bedroom = $data->bedroom;
                $propertyUpdate->bathroom = $data->bathroom;
                $propertyUpdate->suites = $data->suites;
                $propertyUpdate->garage = $data->garage;
                $propertyUpdate->maid_dependence = $data->maid_dependence;
                $propertyUpdate->kitchen = $data->kitchen;
                $propertyUpdate->pool = $data->pool;
                $propertyUpdate->grill = $data->grill;
                $propertyUpdate->library = $data->library;
                $propertyUpdate->office = $data->office;
                $propertyUpdate->furnished = $data->furnished;
                $propertyUpdate->description = $data->description;
                $propertyUpdate->status = $data->status;


                if (!empty($_FILES["photo1"])) {

                    if ($propertyUpdate->photo1 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo1}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo1}");
                    }

                    $files = $_FILES["photo1"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo1 = $image;
                }

                if (!empty($_FILES["photo2"])) {

                    if ($propertyUpdate->photo2 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo2}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo2}");
                    }

                    $files = $_FILES["photo2"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo2 = $image;
                }

                if (!empty($_FILES["photo3"])) {

                    if ($propertyUpdate->photo3 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo3}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo3}");
                    }

                    $files = $_FILES["photo3"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo3 = $image;
                }

                if (!empty($_FILES["photo4"])) {

                    if ($propertyUpdate->photo4 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo4}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo4}");
                    }

                    $files = $_FILES["photo4"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo4 = $image;
                }

                if (!empty($_FILES["photo5"])) {

                    if ($propertyUpdate->photo5 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo5}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo5}");
                    }

                    $files = $_FILES["photo5"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo5 = $image;
                }

                if (!empty($_FILES["photo6"])) {

                    if ($propertyUpdate->photo6 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo6}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo6}");
                    }

                    $files = $_FILES["photo6"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo6 = $image;
                }

                if (!empty($_FILES["photo7"])) {

                    if ($propertyUpdate->photo7 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo7}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo7}");
                    }

                    $files = $_FILES["photo7"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo7 = $image;
                }

                if (!empty($_FILES["photo8"])) {

                    if ($propertyUpdate->photo8 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo8}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo8}");
                    }

                    $files = $_FILES["photo8"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo8 = $image;
                }

                if (!empty($_FILES["photo9"])) {

                    if ($propertyUpdate->photo9 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo9}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo9}");
                    }

                    $files = $_FILES["photo9"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo9 = $image;
                }

                if (!empty($_FILES["photo10"])) {

                    if ($propertyUpdate->photo10 && file_exists(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo10}")) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$propertyUpdate->photo10}");
                    }

                    $files = $_FILES["photo10"];
                    $upload = new Upload();
                    $image = $upload->image($files, "property-".md5(rand(0, 9999) . time()), 600);

                    if (!$image) {
                        $json["message"] = $upload->message()->render();
                        echo json_encode($json);
                        return;
                    }

                    $propertyUpdate->photo10 = $image;
                }

                if (!$propertyUpdate->save()) {

                    $json["message"] = $propertyUpdate->fail()->getMessage();
                    echo json_encode($json);
                    return;
                }else{

                    $owners = (New Owner())->find("property=:property and status=1","property={$propertyUpdate->id}")->fetch(true);

                    $i=1;

                    foreach($owners as $owner){

                        if(($i==1) && ($owner->lessor != $data->lessor || $owner->beneficiary != $data->beneficiary || $owner->procurator != $data->procurator || $owner->percent != str_replace([".", ","], ["", "."], $data->lessor_percent) )){


                            $ownerEach = (New Owner())->findById($owner->id);

                            $ownerEach->date_end = date('Y-m-d');
                            $ownerEach->status = 2;
                            $ownerEach->save();

                            $ownerCreate = new Owner();

                            $ownerCreate->property = $propertyUpdate->id;
                            $ownerCreate->lessor = $data->lessor;
                            $ownerCreate->beneficiary = $data->beneficiary;
                            $ownerCreate->procurator = $data->procurator;
                            $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent);
                            $ownerCreate->date_start = date('Y-m-d');
                            $ownerCreate->date_end = null;
                            $ownerCreate->status = 1;
                            $ownerCreate->account_id = $user->account_id;


                            if (!$ownerCreate->save()) {

                                $json["message"] = $ownerCreate->fail()->getMessage();
                                echo json_encode($json);
                                return;
                            }
                        }

                        if(($data->lessor2!="") && ($owner->lessor != $data->lessor2 || $owner->beneficiary != $data->beneficiary2 || $owner->procurator != $data->procurator2 || $owner->percent != str_replace([".", ","], ["", "."], $data->lessor_percent2) )){


                            $ownerEach = (New Owner())->findById($owner->id);

                            $ownerEach->date_end = date('Y-m-d');
                            $ownerEach->status = 2;
                            $ownerEach->save();

                            $ownerCreate = new Owner();

                            $ownerCreate->property = $propertyUpdate->id;
                            $ownerCreate->lessor = $data->lessor2;
                            $ownerCreate->beneficiary = $data->beneficiary2;
                            $ownerCreate->procurator = $data->procurator2;
                            $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent2);
                            $ownerCreate->date_start = date('Y-m-d');
                            $ownerCreate->date_end = null;
                            $ownerCreate->status = 1;
                            $ownerCreate->account_id = $user->account_id;


                            if (!$ownerCreate->save()) {

                                $json["message"] = $ownerCreate->fail()->getMessage();
                                echo json_encode($json);
                                return;
                            }
                        }

                        if(($data->lessor3!="") && ($owner->lessor != $data->lessor3 || $owner->beneficiary != $data->beneficiary3 || $owner->procurator != $data->procurator3 || $owner->percent != str_replace([".", ","], ["", "."], $data->lessor_percent3) )){


                            $ownerEach = (New Owner())->findById($owner->id);

                            $ownerEach->date_end = date('Y-m-d');
                            $ownerEach->status = 2;
                            $ownerEach->save();

                            $ownerCreate = new Owner();

                            $ownerCreate->property = $propertyUpdate->id;
                            $ownerCreate->lessor = $data->lessor3;
                            $ownerCreate->beneficiary = $data->beneficiary3;
                            $ownerCreate->procurator = $data->procurator3;
                            $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent3);
                            $ownerCreate->date_start = date('Y-m-d');
                            $ownerCreate->date_end = null;
                            $ownerCreate->status = 1;
                            $ownerCreate->account_id = $user->account_id;


                            if (!$ownerCreate->save()) {

                                $json["message"] = $ownerCreate->fail()->getMessage();
                                echo json_encode($json);
                                return;
                            }
                        }

                        if(($data->lessor4!="") && ($owner->lessor != $data->lessor4 || $owner->beneficiary != $data->beneficiary4 || $owner->procurator != $data->procurator4 || $owner->percent != str_replace([".", ","], ["", "."], $data->lessor_percent4) )){


                            $ownerEach = (New Owner())->findById($owner->id);

                            $ownerEach->date_end = date('Y-m-d');
                            $ownerEach->status = 2;
                            $ownerEach->save();

                            $ownerCreate = new Owner();

                            $ownerCreate->property = $propertyUpdate->id;
                            $ownerCreate->lessor = $data->lessor4;
                            $ownerCreate->beneficiary = $data->beneficiary4;
                            $ownerCreate->procurator = $data->procurator4;
                            $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent4);
                            $ownerCreate->date_start = date('Y-m-d');
                            $ownerCreate->date_end = null;
                            $ownerCreate->status = 1;
                            $ownerCreate->account_id = $user->account_id;


                            if (!$ownerCreate->save()) {

                                $json["message"] = $ownerCreate->fail()->getMessage();
                                echo json_encode($json);
                                return;
                            }
                        }

                        if(($data->lessor5!="") && ($owner->lessor != $data->lessor5 || $owner->beneficiary != $data->beneficiary5 || $owner->procurator != $data->procurator5 || $owner->percent != str_replace([".", ","], ["", "."], $data->lessor_percent5) )){


                            $ownerEach = (New Owner())->findById($owner->id);

                            $ownerEach->date_end = date('Y-m-d');
                            $ownerEach->status = 2;
                            $ownerEach->save();

                            $ownerCreate = new Owner();

                            $ownerCreate->property = $propertyUpdate->id;
                            $ownerCreate->lessor = $data->lessor5;
                            $ownerCreate->beneficiary = $data->beneficiary5;
                            $ownerCreate->procurator = $data->procurator5;
                            $ownerCreate->percent = str_replace([".", ","], ["", "."], $data->lessor_percent5);
                            $ownerCreate->date_start = date('Y-m-d');
                            $ownerCreate->date_end = null;
                            $ownerCreate->status = 1;
                            $ownerCreate->account_id = $user->account_id;


                            if (!$ownerCreate->save()) {

                                $json["message"] = $ownerCreate->fail()->getMessage();
                                echo json_encode($json);
                                return;
                            }
                        }

                        $i++;
                    }


                }



                $this->message->info("Imóvel atualizado com sucesso...")->flash();
                $json["redirect"] = url("/cadastro/imoveis/alterar/{$propertyUpdate->cod}");

                echo json_encode($json);
                return;
            }
        }


        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $propertyEdit = (new Property())->find("status!=2 and account_id=:account and cod=:cod",
            "account={$user->account_id}&cod={$data["properties_cod"]}")->fetch();

        if($propertyEdit==null){
            redirect("/error");
        }

        $properties = (new Property())->find("status!=2 and account_id=:account and properties_cod!='' ","account={$user->account_id}")->fetch(true);

        $lessors = (new Client())->showLessor();

        $beneficiaries = (new Client())->showBeneficiary();

        $procurators = (new Client())->showProcurator();

        $realtors = (new User())->find("status!=2 and account_id=:account and realtor=1","account={$user->account_id}")->order("first_name,last_name")->fetch(true);

        $i=1;
        $lessor="";
        $beneficiary="";
        $procurator="";
        $percent="";
        $lessor2="";
        $beneficiary2="";
        $procurator2="";
        $percent2="";
        $lessor3="";
        $beneficiary3="";
        $procurator3="";
        $percent3="";
        $lessor4="";
        $beneficiary4="";
        $procurator4="";
        $percent4="";
        $lessor5="";
        $beneficiary5="";
        $procurator5="";
        $percent5="";


        foreach($propertyEdit->ownersProperty() as $owner){

            if($i==1) {
              $lessor=$owner->lessor;
              $beneficiary=$owner->beneficiary;
              $procurator=$owner->procurator;
              $percent=$owner->percent;
            }

            if($i==2) {
                $lessor2=$owner->lessor;
                $beneficiary2=$owner->beneficiary;
                $procurator2=$owner->procurator;
                $percent2=$owner->percent;
            }

            if($i==3) {
                $lessor3=$owner->lessor;
                $beneficiary3=$owner->beneficiary;
                $procurator3=$owner->procurator;
                $percent3=$owner->percent;
            }

            if($i==4) {
                $lessor4=$owner->lessor;
                $beneficiary4=$owner->beneficiary;
                $procurator4=$owner->procurator;
                $percent4=$owner->percent;
            }

            if($i==5) {
                $lessor5=$owner->lessor;
                $beneficiary5=$owner->beneficiary;
                $procurator5=$owner->procurator;
                $percent5=$owner->percent;
            }
            $i++;
        }


        $categories = (new PropertyCategory())->find()->order("description")->fetch(true);
        $type_properties = (new TypeProperty())->find()->order("description")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Editar Imóvel",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/property_edit", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "property",
            "property" => $propertyEdit,
            "lessors" =>$lessors,
            "beneficiaries" =>$beneficiaries,
            "procurators" =>$procurators,
            "properties" => $properties,
            "lessor" => $lessor,
            "beneficiary" => $beneficiary,
            "procurator" => $procurator,
            "percent" => $percent,
            "lessor2" => $lessor2,
            "beneficiary2" => $beneficiary2,
            "procurator2" => $procurator2,
            "percent2" => $percent2,
            "lessor3" => $lessor3,
            "beneficiary3" => $beneficiary3,
            "procurator3" => $procurator3,
            "percent3" => $percent3,
            "lessor4" => $lessor4,
            "beneficiary4" => $beneficiary4,
            "procurator4" => $procurator4,
            "percent4" => $percent4,
            "lessor5" => $lessor5,
            "beneficiary5" => $beneficiary5,
            "procurator5" => $procurator5,
            "percent5" => $percent5,
            "realtors" => $realtors,
            "categories" => $categories,
            "type_properties" => $type_properties
        ]);


    }


    /**
     * @param array|null $data
     */
    public function apportionment(): void {

        $user = User::UserLog();

        //$apportionments = (new Apportionment())->apportionmentList();

        $apportionments = (new Apportionment())->find("STATUS=1 AND account_id=:account_id","account_id={$user->account_id}","city_hall_cod,light_cod,water_and_sewage_cod,fire_department_cod,gas_cod")->group("city_hall_cod,light_cod,water_and_sewage_cod,fire_department_cod,gas_cod")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Rateio",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/apportionment", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "apportionment",
            "apportionments" => $apportionments,
        ]);

    }


    /**
     * @param array|null $data
     */
    public function apportionmentAdd(?array $data): void {

        $user = User::UserLog();

        if (!empty($data["action"]) && $data["action"] == "create") {

            if (!empty($data['csrf'])) {

                if ($_REQUEST && !csrf_verify($_REQUEST)) {

                    $json["message"] = "Erro ao enviar o formulário, atualize a página";
                    echo json_encode($json);
                    return;
                }

                if(empty($data["water_and_sewage_cod"])&&empty($data["fire_department_cod"])&&empty($data["gas_cod"])&&empty($data["light_cod"])&&empty($data["city_hall_cod"])){

                    $json["message"] = "É necessário preencher algum código de rateio";
                    echo json_encode($json);
                    return;
                }

                if( empty($data["property"]) || count($data["property"])<2){
                    $json["message"] = "É necessário selecionar no mínimo dois imóveis";
                    echo json_encode($json);
                    return;
                }

                $property = $data["property"];

                $sum_percent = 0;

                foreach($property as $property_each){

                    if(!empty($data["city_hall_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and city_hall_cod=:city_hall_cod","account={$user->account_id}&city_hall_cod={$data["city_hall_cod"]}")->fetch(true);

                        if($apportionment_search){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["light_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and light_cod=:light_cod","account={$user->account_id}&light_cod={$data["light_cod"]}")->fetch(true);

                        if($apportionment_search){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["water_and_sewage_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and water_and_sewage_cod=:water_and_sewage_cod","account={$user->account_id}&water_and_sewage_cod={$data["water_and_sewage_cod"]}")->fetch(true);

                        if($apportionment_search){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["fire_department_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and fire_department_cod=:fire_department_cod","account={$user->account_id}&fire_department_cod={$data["fire_department_cod"]}")->fetch(true);

                        if($apportionment_search){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["gas_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and gas_cod=:gas_cod","account={$user->account_id}&gas_cod={$data["gas_cod"]}")->fetch(true);

                        if($apportionment_search){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(empty($data["percent_".ltrim($property_each)])){
                        $json["message"] = "Todas as porcentagens dos imóveis selecionados precisam está preenchidas";
                        echo json_encode($json);
                        return;
                    }

                    $sum_percent +=str_price_invert($data["percent_".ltrim($property_each)]);

                }

                if($sum_percent<99.96 || $sum_percent>100.03){
                    $json["message"] = "A soma das porcentagens deve ser igual a 100%";
                    echo json_encode($json);
                    return;
                }

                //$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

                //$data = (object) $post;

                foreach($property as $property_each){


                    if(!empty($data["city_hall_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = $data["city_hall_cod"];
                        $apportionment->city_hall_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->light_cod = null;
                        $apportionment->light_percent = null;
                        $apportionment->water_and_sewage_cod = null;
                        $apportionment->water_and_sewage_percent = null;
                        $apportionment->fire_department_cod = null;
                        $apportionment->fire_department_percent = null;
                        $apportionment->gas_cod = null;
                        $apportionment->gas_percent = null;
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["light_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = null;
                        $apportionment->city_hall_percent = null;
                        $apportionment->light_cod = $data["light_cod"];
                        $apportionment->light_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->water_and_sewage_cod = null;
                        $apportionment->water_and_sewage_percent = null;
                        $apportionment->fire_department_cod = null;
                        $apportionment->fire_department_percent = null;
                        $apportionment->gas_cod = null;
                        $apportionment->gas_percent = null;
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }

                    }

                    if(!empty($data["water_and_sewage_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = null;
                        $apportionment->city_hall_percent = null;
                        $apportionment->light_cod = null;
                        $apportionment->light_percent = null;
                        $apportionment->water_and_sewage_cod = $data["water_and_sewage_cod"];
                        $apportionment->water_and_sewage_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->fire_department_cod = null;
                        $apportionment->fire_department_percent = null;
                        $apportionment->gas_cod = null;
                        $apportionment->gas_percent = null;
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }

                    }

                    if(!empty($data["fire_department_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = null;
                        $apportionment->city_hall_percent = null;
                        $apportionment->light_cod = null;
                        $apportionment->light_percent = null;
                        $apportionment->water_and_sewage_cod = null;
                        $apportionment->water_and_sewage_percent = null;
                        $apportionment->fire_department_cod = $data["fire_department_cod"];
                        $apportionment->fire_department_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->gas_cod = null;
                        $apportionment->gas_percent = null;
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }

                    }

                    if(!empty($data["gas_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = null;
                        $apportionment->city_hall_percent = null;
                        $apportionment->light_cod = null;
                        $apportionment->light_percent = null;
                        $apportionment->water_and_sewage_cod = null;
                        $apportionment->water_and_sewage_percent = null;
                        $apportionment->fire_department_cod = null;
                        $apportionment->fire_department_percent = null;
                        $apportionment->gas_cod = $data["gas_cod"];
                        $apportionment->gas_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }
                    }

                }

                $this->message->info("Rateio cadastrado com sucesso...")->flash();
                $json["redirect"] = url("/cadastro/rateio/cadastrar");

                echo json_encode($json);
                return;
            }
        }

        $properties = (new Property())->find("status!=2 and account_id=:account","account={$user->account_id}")->order("street","number","complement")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Cadastrar Rateio",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/apportionment_add", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "apportionment",
            "properties" => $properties
        ]);

    }

    /**
     * @param array|null $data
     */
    public function apportionmentProperty(?array $data): void {

        $user = User::UserLog();

        if($data["type"]=="city_hall_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and city_hall_cod=:city_hall_cod","account={$user->account_id}&city_hall_cod={$data["cod"]}")->fetch(true);
        }

        if($data["type"]=="light_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and light_cod=:light_cod","account={$user->account_id}&light_cod={$data["cod"]}")->fetch(true);
        }

        if($data["type"]=="water_and_sewage_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and water_and_sewage_cod=:water_and_sewage_cod","account={$user->account_id}&water_and_sewage_cod={$data["cod"]}")->fetch(true);
        }

        if($data["type"]=="fire_department_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and fire_department_cod=:fire_department_cod","account={$user->account_id}&fire_department_cod={$data["cod"]}")->fetch(true);
        }

        if($data["type"]=="gas_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and gas_cod=:gas_cod","account={$user->account_id}&gas_cod={$data["cod"]}")->fetch(true);
        }

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Cadastrar Rateio de Imóveis",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/fragments/apportionment_property", [
            "apportionments" => $apportionments,

        ]);

    }


    /**
     * @param array|null $data
     */
    public function apportionmentEdit(?array $data): void {

        $user = User::UserLog();

        if (!empty($data["action"]) && $data["action"] == "update") {

            if (!empty($data['csrf'])) {

                if ($_REQUEST && !csrf_verify($_REQUEST)) {

                    $json["message"] = "Erro ao enviar o formulário, atualize a página";
                    echo json_encode($json);
                    return;
                }


                if(empty($data["water_and_sewage_cod"])&&empty($data["fire_department_cod"])&&empty($data["gas_cod"])&&empty($data["light_cod"])&&empty($data["city_hall_cod"])){

                    $json["message"] = "É necessário preencher algum código de rateio";
                    echo json_encode($json);
                    return;
                }

                if( empty($data["property"]) || count($data["property"])<2){
                    $json["message"] = "É necessário selecionar no mínimo dois imóveis";
                    echo json_encode($json);
                    return;
                }

                if($data["type"]=="city_hall_cod"){
                    $apportionments = (new Apportionment())->find("status=1 and account_id=:account and city_hall_cod=:city_hall_cod","account={$user->account_id}&city_hall_cod={$data["cod"]}")->fetch(true);
                }

                if($data["type"]=="light_cod"){
                    $apportionments = (new Apportionment())->find("status=1 and account_id=:account and light_cod=:light_cod","account={$user->account_id}&light_cod={$data["cod"]}")->fetch(true);
                }

                if($data["type"]=="water_and_sewage_cod"){
                    $apportionments = (new Apportionment())->find("status=1 and account_id=:account and water_and_sewage_cod=:water_and_sewage_cod","account={$user->account_id}&water_and_sewage_cod={$data["cod"]}")->fetch(true);
                }

                if($data["type"]=="fire_department_cod"){
                    $apportionments = (new Apportionment())->find("status=1 and account_id=:account and fire_department_cod=:fire_department_cod","account={$user->account_id}&fire_department_cod={$data["cod"]}")->fetch(true);
                }

                if($data["type"]=="gas_cod"){
                    $apportionments = (new Apportionment())->find("status=1 and account_id=:account and gas_cod=:gas_cod","account={$user->account_id}&gas_cod={$data["cod"]}")->fetch(true);
                }

                if(!$apportionments){
                    $json["message"] = "Esse rateio não existe mais";
                    echo json_encode($json);
                    return;
                }



                $property = $data["property"];

                $sum_percent = 0;

                foreach($property as $property_each){

                    if(!empty($data["city_hall_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and city_hall_cod=:city_hall_cod","account={$user->account_id}&city_hall_cod={$data["city_hall_cod"]}")->fetch(true);

                        if($apportionment_search && $data["cod_old"]!=$data["city_hall_cod"]){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["light_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and light_cod=:light_cod","account={$user->account_id}&light_cod={$data["light_cod"]}")->fetch(true);

                        if($apportionment_search && $data["cod_old"]!=$data["light_cod"]){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["water_and_sewage_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and water_and_sewage_cod=:water_and_sewage_cod","account={$user->account_id}&water_and_sewage_cod={$data["water_and_sewage_cod"]}")->fetch(true);

                        if($apportionment_search && $data["cod_old"]!=$data["water_and_sewage_cod"]){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["fire_department_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and fire_department_cod=:fire_department_cod","account={$user->account_id}&fire_department_cod={$data["fire_department_cod"]}")->fetch(true);

                        if($apportionment_search && $data["cod_old"]!=$data["fire_department_cod"]){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["gas_cod"])){
                        $apportionment_search = (new Apportionment())->find("status!=2 and account_id=:account and gas_cod=:gas_cod","account={$user->account_id}&gas_cod={$data["gas_cod"]}")->fetch(true);

                        if($apportionment_search && $data["cod_old"]!=$data["gas_cod"]){
                            $json["message"] = "Esse código já foi cadastrado para outro rateio";
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(empty($data["percent_".ltrim($property_each)])){
                        $json["message"] = "Todas as porcentagens dos imóveis selecionados precisam está preenchidas";
                        echo json_encode($json);
                        return;
                    }

                    $sum_percent +=str_price_invert($data["percent_".ltrim($property_each)]);

                }

                if($sum_percent<99.96 || $sum_percent>100.03){
                    $json["message"] = "A soma das porcentagens deve ser igual a 100%";
                    echo json_encode($json);
                    return;
                }

                foreach($apportionments as $apportionment) {
                    $apportionment->status = 3;
                    $apportionment->save();
                }

                //$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

                //$data = (object) $post;

                foreach($property as $property_each){


                    if(!empty($data["city_hall_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = $data["city_hall_cod"];
                        $apportionment->city_hall_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->light_cod = null;
                        $apportionment->light_percent = null;
                        $apportionment->water_and_sewage_cod = null;
                        $apportionment->water_and_sewage_percent = null;
                        $apportionment->fire_department_cod = null;
                        $apportionment->fire_department_percent = null;
                        $apportionment->gas_cod = null;
                        $apportionment->gas_percent = null;
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save2()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }
                    }

                    if(!empty($data["light_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = null;
                        $apportionment->city_hall_percent = null;
                        $apportionment->light_cod = $data["light_cod"];
                        $apportionment->light_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->water_and_sewage_cod = null;
                        $apportionment->water_and_sewage_percent = null;
                        $apportionment->fire_department_cod = null;
                        $apportionment->fire_department_percent = null;
                        $apportionment->gas_cod = null;
                        $apportionment->gas_percent = null;
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save2()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }

                    }

                    if(!empty($data["water_and_sewage_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = null;
                        $apportionment->city_hall_percent = null;
                        $apportionment->light_cod = null;
                        $apportionment->light_percent = null;
                        $apportionment->water_and_sewage_cod = $data["water_and_sewage_cod"];
                        $apportionment->water_and_sewage_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->fire_department_cod = null;
                        $apportionment->fire_department_percent = null;
                        $apportionment->gas_cod = null;
                        $apportionment->gas_percent = null;
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }

                    }

                    if(!empty($data["fire_department_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = null;
                        $apportionment->city_hall_percent = null;
                        $apportionment->light_cod = null;
                        $apportionment->light_percent = null;
                        $apportionment->water_and_sewage_cod = null;
                        $apportionment->water_and_sewage_percent = null;
                        $apportionment->fire_department_cod = $data["fire_department_cod"];
                        $apportionment->fire_department_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->gas_cod = null;
                        $apportionment->gas_percent = null;
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save2()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }

                    }

                    if(!empty($data["gas_cod"])){

                        $apportionment = new Apportionment();
                        $apportionment->property = $property_each;
                        $apportionment->city_hall_cod = null;
                        $apportionment->city_hall_percent = null;
                        $apportionment->light_cod = null;
                        $apportionment->light_percent = null;
                        $apportionment->water_and_sewage_cod = null;
                        $apportionment->water_and_sewage_percent = null;
                        $apportionment->fire_department_cod = null;
                        $apportionment->fire_department_percent = null;
                        $apportionment->gas_cod = $data["gas_cod"];
                        $apportionment->gas_percent = str_price_invert($data["percent_".ltrim($property_each)]);
                        $apportionment->status = 1 ;
                        $apportionment->account_id = $user->account_id;

                        if (!$apportionment->save2()) {

                            $json["message"] = $apportionment->fail()->getMessage();
                            echo json_encode($json);
                            return;
                        }
                    }

                }


                $this->message->info("Rateio atualizado com sucesso...")->flash();
                $json["redirect"] = url("/cadastro/rateio/alterar/{$data["cod"]}/{$data["type"]}");

                echo json_encode($json);
                return;

            }
        }

        if (!empty($data["action"]) && $data["action"] == "delete") {

            if($data["type"]=="city_hall_cod"){
                $apportionments = (new Apportionment())->find("status=1 and account_id=:account and city_hall_cod=:city_hall_cod","account={$user->account_id}&city_hall_cod={$data["cod"]}")->fetch(true);
            }

            if($data["type"]=="light_cod"){
                $apportionments = (new Apportionment())->find("status=1 and account_id=:account and light_cod=:light_cod","account={$user->account_id}&light_cod={$data["cod"]}")->fetch(true);
            }

            if($data["type"]=="water_and_sewage_cod"){
                $apportionments = (new Apportionment())->find("status=1 and account_id=:account and water_and_sewage_cod=:water_and_sewage_cod","account={$user->account_id}&water_and_sewage_cod={$data["cod"]}")->fetch(true);
            }

            if($data["type"]=="fire_department_cod"){
                $apportionments = (new Apportionment())->find("status=1 and account_id=:account and fire_department_cod=:fire_department_cod","account={$user->account_id}&fire_department_cod={$data["cod"]}")->fetch(true);
            }

            if($data["type"]=="gas_cod"){
                $apportionments = (new Apportionment())->find("status=1 and account_id=:account and gas_cod=:gas_cod","account={$user->account_id}&gas_cod={$data["cod"]}")->fetch(true);
            }

            if(!$apportionments){
                $json["message"] = "Esse rateio não existe";
                echo json_encode($json);
                return;
            }

            foreach($apportionments as $apportionment) {
                $apportionment->status = 2;
                $apportionment->save();
            }

            $this->message->info("O rateio foi excluído com sucesso")->flash();
            $json["redirect"] = url("/cadastro/rateio");

            echo json_encode($json);
            return;

        }

        $city_hall_cod="";
        $light_cod="";
        $water_and_sewage_cod="";
        $fire_department_cod="";
        $gas_cod="";

        if($data["type"]=="city_hall_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and city_hall_cod=:city_hall_cod","account={$user->account_id}&city_hall_cod={$data["cod"]}")->fetch(true);
            $city_hall_cod = $data["cod"];
        }

        if($data["type"]=="light_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and light_cod=:light_cod","account={$user->account_id}&light_cod={$data["cod"]}")->fetch(true);
            $light_cod = $data["cod"];
        }

        if($data["type"]=="water_and_sewage_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and water_and_sewage_cod=:water_and_sewage_cod","account={$user->account_id}&water_and_sewage_cod={$data["cod"]}")->fetch(true);
            $water_and_sewage_cod = $data["cod"];
        }

        if($data["type"]=="fire_department_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and fire_department_cod=:fire_department_cod","account={$user->account_id}&fire_department_cod={$data["cod"]}")->fetch(true);
            $fire_department_cod = $data["cod"];
        }

        if($data["type"]=="gas_cod"){
            $apportionments = (new Apportionment())->find("status=1 and account_id=:account and gas_cod=:gas_cod","account={$user->account_id}&gas_cod={$data["cod"]}")->fetch(true);
            $gas_cod = $data["cod"];
        }

        if(empty($apportionments)){
            $this->message->info("Esse rateio não existe mais")->flash();
            $json["redirect"] = url("/cadastro/rateio");

            echo json_encode($json);
            return;

        }

        $properties = (new Property())->find("status!=2 and account_id=:account","account={$user->account_id}")->order("street","number","complement")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Alterar Rateio de Imóveis",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/apportionment_edit", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "apportionment",
            "apportionments" => $apportionments,
            "properties" => $properties,
            "city_hall_cod" => $city_hall_cod,
            "light_cod" => $light_cod,
            "water_and_sewage_cod" => $water_and_sewage_cod,
            "fire_department_cod" => $fire_department_cod,
            "gas_cod" => $gas_cod,
            "cod" => $data["cod"],
            "type" =>$data["type"]
            
        ]);


    }

    /**
     *
     */
    public function propertyHistoric(): void {

        $properties = (new Property())->find("status!=2 and account_id=:account","account={$this->user->account_id}")->order("street","number","complement")->fetch(true);

        $property_historics = (new PropertyHistoric())->find("status!=2 and account_id=:a","a={$this->user->account_id}")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Histórico de Imóveis",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/property_historic", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "property_historic",
            "properties" => $properties,
            "property_historics" => $property_historics
        ]);

    }

    public function propertyHistoricAdd(?array $data): void{


        if (!empty($data["action"]) && $data["action"] == "create") {

            if (!empty($data['csrf'])) {

                if ($_REQUEST && !csrf_verify($_REQUEST)) {

                    $json["message"] = "Erro ao enviar o formulário, atualize a página";
                    echo json_encode($json);
                    return;
                }

                if(empty($data["property"])|| empty($data["date_historic"]) || empty($data["historic"]) || empty($data["description"])){
                    $json["message"] = "Todos os dados precisam ser preenchidos.";
                    echo json_encode($json);
                    return;
                }

                $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

                $data = (object)$post;


                $propertyHistoric = new PropertyHistoric();

                $propertyHistoric->property = $data->property;
                $propertyHistoric->historic = $data->historic;
                $propertyHistoric->description = $data->description;
                $propertyHistoric->date_historic = date_fmt_back($data->date_historic);
                $propertyHistoric->status = 1;
                $propertyHistoric->account_id = $this->user->account_id;


                if (!$propertyHistoric->save()) {

                    $json["message"] = $propertyHistoric->fail()->getMessage();
                    echo json_encode($json);
                    return;
                }

                $this->message->info("Histórico cadastrado com sucesso.")->flash();
                $json["redirect"] = url("/cadastro/imoveis/historico/cadastrar");

                echo json_encode($json);
                return;
            }
        }

        $properties = (new Property())->find("status!=2 and account_id=:account","account={$this->user->account_id}")->order("street","number","complement")->fetch(true);

        $historics = (new Historic())->find("","")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Cadastrar Histórico de Imóveis",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("register/property_historic_add", [
            "head" => $head,
            "menu" => "register",
            "submenu" => "property_historic",
            "properties" => $properties,
            "historics" => $historics
        ]);

    }

  public function propertyHistoricEdit(?array $data): void{

      $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

      $property_historic = (new PropertyHistoric())->find("status!=2 and cod=:cod","cod={$data["historic_cod"]}")->fetch();

      if($property_historic == null){
          $json["message"] = "Esse histórico não existe.";
          echo json_encode($json);
          return;
      }


      if (!empty($data["action"]) && $data["action"] == "delete") {


          $property_historic->status = 2;
          $property_historic->save();

          $this->message->info("O histórico foi excluído com sucesso")->flash();
          $json["redirect"] = url("/cadastro/imoveis/historico");

          echo json_encode($json);
          return;

      }

      if (!empty($data["action"]) && $data["action"] == "update") {

          if (!empty($data['csrf'])) {

              if ($_REQUEST && !csrf_verify($_REQUEST)) {

                  $json["message"] = "Erro ao enviar o formulário, atualize a página";
                  echo json_encode($json);
                  return;
              }


              if(empty($data["property"])|| empty($data["date_historic"]) || empty($data["historic"]) || empty($data["description"])){
                  $json["message"] = "Todos os dados precisam ser preenchidos.";
                  echo json_encode($json);
                  return;
              }


              $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

              $data = (object)$post;

              $property_historic->property = $data->property;
              $property_historic->historic = $data->historic;
              $property_historic->description = $data->description;
              $property_historic->date_historic = date_fmt_back($data->date_historic);

              if (!$property_historic->save()) {

                  $json["message"] = $property_historic->fail()->getMessage();
                  echo json_encode($json);
                  return;
              }

              $this->message->info("Histórico alterado com sucesso.")->flash();
              $json["redirect"] = url("/cadastro/imoveis/historico/alterar/{$property_historic->cod}");

              echo json_encode($json);
              return;

          }
      }

      $properties = (new Property())->find("status!=2 and account_id=:account","account={$this->user->account_id}")->order("street","number","complement")->fetch(true);

      $historics = (new Historic())->find("","")->fetch(true);

      $head = $this->seo->render(
          CONF_SITE_NAME . " | Alterar Histórico de Imóveis",
          CONF_SITE_DESC,
          url("/"),
          url("/assets/images/image.jpg"),
          false
      );

      echo $this->view->render("register/property_historic_edit", [
          "head" => $head,
          "menu" => "register",
          "submenu" => "property_historic",
          "properties" => $properties,
          "historics" => $historics,
          "property_historic" => $property_historic
      ]);

  }
}
