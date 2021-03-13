<?php


namespace Source\App;


use Source\Models\Bank;
use Source\Models\Client;
use Source\Models\Property;
use Source\Models\User;
use Source\Models\Contract;
use Source\Models\ContractHistoric;
use Source\Models\ContractLessee;
use Source\Models\ContractProcurators;
use Source\Models\Invoice;
use Source\Models\Billet;
use Source\Models\BilletInvoice;
use Source\Models\Receipt;
use Source\Models\ReceiptInvoice;
use Source\Models\Log;
use Source\Support\Upload;

class ContractController extends Admin
{

    /**
     * Register constructor.
     * @param $router
     */
    public function __construct($router) {
        parent::__construct($router);
    }


    /**
     * 
     * @return void
     */
    public function home(): void {

        $contracts = (new Contract)->find("status=1 and account_id=:c","c={$this->user->account_id}")->fetch(true);

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Contratos",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("contract/contract", [
            "head" => $head,
            "menu" => "contract",
            "submenu" => "contract",
            "contracts" => $contracts
        ]);

    }

    /**
     * @param array|null $data
     */
    public function contractAdd(?array $data): void {
        
        if (!empty($data["action"]) && $data["action"] == "create") {
        
            if (!empty($data['csrf'])) {

                 if ($_REQUEST && !csrf_verify($_REQUEST)) {

                     $json["message"] = "Erro ao enviar o formulário, atualize a página";
                     echo json_encode($json);
                     return;
                 }
            }
            
            
            $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

            $data = (object)$post;
            
            if($data->date_next_readjustment!=""){
                $date_next_readjustment = explode("/",$data->date_next_readjustment);
                $next_readjustment=$date_next_readjustment[1]."-".$date_next_readjustment[0]."01";
            }else{
                $next_readjustment=countDate(12,$data->start_date);
                $data_explode = explode("-", $next_readjustment);
                $next_readjustment=$data_explode[0]."-".$data_explode[1]."-01";
            }
 
            $contract_create = new Contract();
            $contract_create->contract_cod = $data->contract_cod;
            $contract_create->property = $data->property;
            $contract_create->realtor = $data->realtor;
            $contract_create->lease_price = str_replace([".", ","], ["", "."], $data->lease_price);
            $contract_create->commission = str_replace([".", ","], ["", "."], $data->commission);
            $contract_create->readjustment_type = $data->readjustment_type;
            $contract_create->lease_term = $data->lease_term;        
            $contract_create->start_date = date_fmt_back($data->start_date);    
            $contract_create->end_date = date_fmt_back($data->end_date);        
            $contract_create->renovation = $data->renovation;                
            $contract_create->due_date = $data->due_date;
            $contract_create->paymento_form = $data->paymento_form;
            $contract_create->date_next_readjustment = $next_readjustment;
            $contract_create->procurator_status = $data->procurator_status;
            $contract_create->guarantee = $data->guarantee;
            $contract_create->surety = $data->surety;
            $contract_create->security_deposit = $data->security_deposit;
            $contract_create->portion_deposit = $data->portion_deposit;
            $contract_create->terms = $data->terms_contract;
            $contract_create->note = $data->note;
            $contract_create->automatic_billing = 0;
            $contract_create->contract_situation = "active";
            $contract_create->status = 1;
            $contract_create->account_id = $this->user->account_id;
            
            $property_update = (new Property())->findById($data->property);
            $property_update->contract = 'in contract';
            $property_update->save2();
            
            //upload files
            if (!empty($_FILES["contract_upload"])) {
                $files = $_FILES["contract_upload"];
                $upload = new Upload();
                if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                  $file = $upload->image($files, "contract-".md5(rand(0, 9999) . time()), 600);
                } else { 
                  $file = $upload->file($files, "contract-".md5(rand(0, 9999) . time()), 600);
                }

                if (!$file) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $contract_create->contract_upload = $file;
            }
            
            if (!empty($_FILES["contract_upload2"])) {
                $files = $_FILES["contract_upload2"];
                $upload = new Upload();
                if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                  $file = $upload->image($files, "contract-".md5(rand(0, 9999) . time()), 600);
                } else {
                  $file = $upload->file($files, "contract-".md5(rand(0, 9999) . time()), 600);
                }

                if (!$file) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $contract_create->contract_upload2 = $file;
            }
           
            if (!empty($_FILES["contract_upload3"])) {
                $files = $_FILES["contract_upload3"];
                $upload = new Upload();
                if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                  $file = $upload->image($files, "contract-".md5(rand(0, 9999) . time()), 600);
                } else {
                  $file = $upload->file($files, "contract-".md5(rand(0, 9999) . time()), 600);
                }

                if (!$file) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $contract_create->contract_upload3 = $file;
            }
            
            if (!empty($_FILES["contract_upload4"])) {
                $files = $_FILES["contract_upload4"];
                $upload = new Upload();
                if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                  $file = $upload->image($files, "contract-".md5(rand(0, 9999) . time()), 600);
                } else {
                  $file = $upload->file($files, "contract-".md5(rand(0, 9999) . time()), 600);
                }

                if (!$file) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $contract_create->contract_upload4 = $file;
            }
            
            if (!empty($_FILES["contract_upload5"])) {
                $files = $_FILES["contract_upload5"];
                $upload = new Upload();
                if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                  $file = $upload->image($files, "contract-".md5(rand(0, 9999) . time()), 600);
                } else {
                  $file = $upload->file($files, "contract-".md5(rand(0, 9999) . time()), 600);
                }

                if (!$file) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $contract_create->contract_upload5 = $file;
            }
                
            if (!$contract_create->save()) {
                    if (!empty($_FILES["contract_upload"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$contract_create->contract_upload}");
                    }
                    if (!empty($_FILES["contract_upload2"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$contract_create->contract_upload2}");
                    }
                    if (!empty($_FILES["contract_upload3"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$contract_create->contract_upload3}");
                    }
                    if (!empty($_FILES["contract_upload4"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$contract_create->contract_upload4}");
                    }
                    if (!empty($_FILES["contract_upload5"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$contract_create->contract_upload5}");
                    }
                    if (!empty($_FILES["contract_upload6"])) {
                        unlink(__DIR__ . "/../../" . CONF_UPLOAD_DIR . "/{$contract_create->photo6}");
                    }

                    $json["message"] = $contract_create->fail()->getMessage();
                    echo json_encode($json);
                    return;
                    
                }else{
                 
                    foreach($data->lessee as $lessee){
                        
                      $contract_lessee = new ContractLessee();
                      $contract_lessee->contract = $contract_create->id;
                      $contract_lessee->lessee = $lessee;
                      $contract_lessee->status = 1;
                      $contract_lessee->account_id = $this->user->account_id;
                      $contract_lessee->save();
                    }    

                    $contract_historic = new ContractHistoric();
                    $contract_historic->contract = $contract_create->id;
                    $contract_historic->lease_price = str_replace([".", ","], ["", "."], $data->lease_price);
                    $contract_historic->commission = str_replace([".", ","], ["", "."], $data->commission);
                    $contract_historic->readjustment_type = $data->readjustment_type;
                    $contract_historic->lease_term = $data->lease_term;  
                    $contract_historic->due_date = $data->due_date;
                    $contract_historic->paymento_form = $data->paymento_form;
                    $contract_historic->date_next_readjustment = $next_readjustment;
                    $contract_historic->status_historic = 4;
                    $contract_historic->status = 1;
                    $contract_historic->account_id = $this->user->account_id;
                    $contract_historic->save();
                
                    if($data->procurator_status=="1"){
                       $contract_procurators = new ContractProcurators();
                       $contract_procurators->contract = $contract_create->id;
                       $contract_procurators->procurator = $data->procurator;
                       $contract_procurators->date_procuration = date_fmt_back($data->date_procuration);
                       $contract_procurators->status = 1;
                       $contract_procurators->account_id = $this->user->account_id;
                       
                       if (!empty($_FILES["upload_procuration"])) {
                            $files = $_FILES["upload_procuration"];
                            $upload = new Upload();
                            if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                              $file = $upload->image($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                            } else {
                              $file = $upload->file($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                            }

                            if (!$file) {
                                $json["message"] = $upload->message()->render();
                                echo json_encode($json);
                                return;
                            }

                            $contract_procurators->upload_procuration = $file;
                      }     
                      
                       $contract_procurators->save();
                      
                      if($data->procurator2!=""){
 
                            $contract_procurators2 = new ContractProcurators();
                            $contract_procurators2->contract = $contract_create->id;
                            $contract_procurators2->procurator = $data->procurator2;
                            $contract_procurators2->date_procuration = date_fmt_back($data->date_procuration2);
                            $contract_procurators2->status = 1;
                            $contract_procurators2->account_id = $this->user->account_id;
                            
                            if (!empty($_FILES["upload_procuration2"])) {
                                 $files = $_FILES["upload_procuration2"];
                                 $upload = new Upload();
                                 if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                                   $file = $upload->image($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                                 } else {
                                   $file = $upload->file($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                                 }

                                 if (!$file) {
                                     $json["message"] = $upload->message()->render();
                                     echo json_encode($json);
                                     return;
                                 }

                                 $contract_procurators2->upload_procuration = $file;
                           }  
                           $contract_procurators2->save();
                      } 

                      if($data->procurator3!=""){
 
                            $contract_procurators3 = new ContractProcurators();
                            $contract_procurators3->contract = $contract_create->id;
                            $contract_procurators3->procurator = $data->procurator3;
                            $contract_procurators3->date_procuration = date_fmt_back($data->date_procuration3);
                            $contract_procurators3->status = 1;
                            $contract_procurators3->account_id = $this->user->account_id;
                       
                            if (!empty($_FILES["upload_procuration3"])) {
                                 $files = $_FILES["upload_procuration3"];
                                 $upload = new Upload();
                                 if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                                   $file = $upload->image($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                                 } else {
                                   $file = $upload->file($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                                 }

                                 if (!$file) {
                                     $json["message"] = $upload->message()->render();
                                     echo json_encode($json);
                                     return;
                                 }

                                 $contract_procurators3->upload_procuration = $file;
                           }  
                           $contract_procurators3->save();
                      }
                      
                      if($data->procurator4!=""){
 
                            $contract_procurators4 = new ContractProcurators();
                            $contract_procurators4->contract = $contract_create->id;
                            $contract_procurators4->procurator = $data->procurator4;
                            $contract_procurators4->date_procuration = date_fmt_back($data->date_procuration4);
                            $contract_procurators4->status = 1;
                            $contract_procurators4->account_id = $this->user->account_id;
                            
                            if (!empty($_FILES["upload_procuration4"])) {
                                 $files = $_FILES["upload_procuration4"];
                                 $upload = new Upload();
                                 if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                                   $file = $upload->image($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                                 } else {
                                   $file = $upload->file($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                                 }

                                 if (!$file) {
                                     $json["message"] = $upload->message()->render();
                                     echo json_encode($json);
                                     return;
                                 }

                                 $contract_procurators4->upload_procuration = $file;
                           }  
                           $contract_procurators4->save();
                      } 
                      
                      if($data->procurator5!=""){
 
                            $contract_procurators5 = new ContractProcurators();
                            $contract_procurators5->contract = $contract_create->id;
                            $contract_procurators5->procurator = $data->procurator5;
                            $contract_procurators5->date_procuration = date_fmt_back($data->date_procuration5);
                            $contract_procurators5->status = 1;
                            $contract_procurators5->account_id = $this->user->account_id;
                       
                            if (!empty($_FILES["upload_procuration5"])) {
                                 $files = $_FILES["upload_procuration5"];
                                 $upload = new Upload();
                                 if ($files["type"] == 'image/jpeg' || $files["type"] == 'image/png') {
                                   $file = $upload->image($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                                 } else {
                                   $file = $upload->file($files, "procuration-".md5(rand(0, 9999) . time()), 600);
                                 }

                                 if (!$file) {
                                     $json["message"] = $upload->message()->render();
                                     echo json_encode($json);
                                     return;
                                 }

                                 $contract_procurators5->upload_procuration = $file;
                           }  
                           $contract_procurators5->save();
                      } 
                      
                    }
                    
                    $this->message->info("Contrato cadastrado com sucesso...")->flash();
                    $json["redirect"] = url("/contrato/cadastrar");

                    echo json_encode($json);
                    return;
                }
            
        }

        $properties = (new Property())->find("status=1 and contract='free' and account_id=:c","c={$this->user->account_id}")->fetch(true);

        $clients = (new Client())->showLessee();

        $realtors = (new User())->find("status!=2 and account_id=:account and realtor=1","account={$this->user->account_id}")->order("first_name,last_name")->fetch(true);

        $sureties = (new Client())->showSurety();

        $banks = (new Bank())->find("account_id=:account","account={$this->user->account_id}")->order("description")->fetch(true);
        
        $contracts = (new Contract())->find("status!=2 and contract_cod!='' and account_id=:account","account={$this->user->account_id}")->fetch(true);
                
        $head = $this->seo->render(
            CONF_SITE_NAME . " | Cadastrar Contratos",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("contract/contract_add", [
            "head" => $head,
            "menu" => "contract",
            "submenu" => "contract",
            "properties" => $properties,
            "clients" => $clients,
            "realtors" => $realtors,
            "sureties" => $sureties,
            "banks" => $banks,
            "contracts" => $contracts
        ]);

    }

    /**
     * 
     * @return void
     */
    public function automaticBilling(?array $data): void {
        
        if (!empty($data["action"]) && $data["action"] == "generate") {
        
            if (!empty($data['csrf'])) {

                 if ($_REQUEST && !csrf_verify($_REQUEST)) {

                     $json["message"] = "Erro ao enviar o formulário, atualize a página";
                     echo json_encode($json);
                     return;
                 }
            }
            
            
            $data_value = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
            
            $contract = (new Contract)->find("cod=:c","c={$data_value['contract_cod']}")->fetch();
       
            $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

            $data = (object)$post;
            
            if($data->due_date<10){
               $due_day = "0".$data->due_date; 
            }else{
               $due_day = $data->due_date; 
            }
            
            if(validate_date($due_day.'/'.$data->first_charge)!=1){
                $json["message"] = "Digite uma data válida";
                echo json_encode($json);
                return;
            }
            
            $start_date = date_datetime($due_day.'/'.$data->first_charge);
                         
            for($i=1;$i<=960;$i++){
                
                $clone = clone $start_date;        
                $date1=$clone->modify( '+ '.($i-1).'month');
                $due_date=$date1->format( "Y-m-d" );
                
                $clone2 = clone new \DateTime($due_date);   
                $date2 = $clone2->modify( '-1 month');
                $reference_date=$date2->format( "m/Y" ); 
                
                $invoice_create = new Invoice();
                $invoice_create->value = str_replace([".", ","], ["", "."], $data->lease_price);
                $invoice_create->operation = 1;
                $invoice_create->category = 1;
                $invoice_create->wallet = 1;
                $invoice_create->reference_date = $reference_date;
                $invoice_create->due_date = $due_date;
                $invoice_create->contract = $contract->id;
                $invoice_create->fixed = 1;
                $invoice_create->recurrent = null;
                $invoice_create->status_comission = 1;
                $invoice_create->status = 1;
                $invoice_create->account_id = $this->user->account_id;

                if (!$invoice_create->save()) {
                    $json["message"] = $invoice_create->fail()->getMessage();
                    echo json_encode($json);
                    return;
                }
                ///condição para saber se é boleto ou recibo
                if ($contract->paymento_form=="billet"){

                    $billet_create = new Billet();
                    $billet_create->contract = $contract->id;
                    $billet_create->due_date = $due_date;
                    $billet_create->status = 1;
                    $billet_create->account_id = $this->user->account_id;
                    $billet_create->save();

                    $billet_invoice_create = new BilletInvoice();
                    $billet_invoice_create->billet = $billet_create->id;
                    $billet_invoice_create->invoice =  $invoice_create->id;  
                    $billet_invoice_create->save();

                }else{

                    $receipt_create = new Receipt();
                    $receipt_create->contract = $contract->id;
                    $receipt_create->due_date = $due_date;
                    $receipt_create->payment_form = $data->paymento_form;
                    $receipt_create->status = 1;
                    $receipt_create->account_id = $this->user->account_id;
                    $receipt_create->save();

                    $receipt_invoice_create = new ReceiptInvoice();
                    $receipt_invoice_create->receipt = $receipt_create->id;
                    $receipt_invoice_create->invoice = $invoice_create->id;
                    $receipt_invoice_create->save();

                }
                
            }
            
            /////atualiza contrato
            $contract->lease_price = str_replace([".", ","], ["", "."], $data->lease_price);
            $contract->paymento_form = $data->paymento_form;
            $contract->due_date = $data->due_date;
            $contract->automatic_billing = 1;
            $contract->save2();
            
            ////gravo na log
            if($contract->contract_cod!=""){
                $cod = $contract->contract_cod;
            }else{
                $cod = $contract->cod;
            }
            
            $log = new Log();
            $log->account_id = $this->user->account_id;
            $log->user = $this->user->id;
            $log->ip = $_SERVER["REMOTE_ADDR"];
            $log->description = "Gerar aluguel do contrato" . $cod;
            $log->save();
            
            
            $this->message->info("Cobrança gerada com sucesso...")->flash();
            $json["redirect"] = url("/contrato/gerar-aluguel");

            echo json_encode($json);
            return;
        }    
           
        
        $contracts = (new Contract)->find("status=1 and automatic_billing=0 and contract_situation='active' and account_id=:c","c={$this->user->account_id}")->fetch(true);
        
        $head = $this->seo->render(
            CONF_SITE_NAME . " | Gerar Alugueis de Contratos",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("contract/automatic_billing", [
            "head" => $head,
            "menu" => "contract",
            "submenu" => "automaticBilling",
            "contracts" => $contracts
        ]);
    }
 
    /**
     * 
     * @return void
     */
    public function readjustment(?array $data): void {
        
        $get_date=date('Y-m')."-01";
  
        $contracts = (new Contract())->find("status=1 and date_next_readjustment=:d and contract_situation='active' and account_id=:c","c={$this->user->account_id}&d={$get_date}")->fetch(true);
        
        $date_readjustment = date("m/Y");
        
        $head = $this->seo->render(
            CONF_SITE_NAME . " | Reajuste de Contrato",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("contract/readjustment", [
            "head" => $head,
            "menu" => "contract",
            "submenu" => "readjustment",
            "contracts" => $contracts,
            "date_readjustment" => $date_readjustment
        ]);
    }
    /**
     * @param array $data
     */
    public function getOwner(array $data): void {

        $properties = (new Property())->findById("{$data["property"]}");

        $ownerList = null;

        foreach ($properties->owners() as $owner) {

            $ownerList[] = $owner;

        }

        echo json_encode(["owner" => $ownerList]);

    }

    /**
     * @param array $data
     */
    public function getProxy(array $data): void {

        $properties = (new Property())->findById("{$data["property"]}");

        $procuratorList = null;

        foreach ($properties->procurators() as $procurator) {

            $procuratorList[] = $procurator;

        }

        echo json_encode(["procurator" => $procuratorList]);

    }

    /**
     * @param array $data
     */
    public function getTenancy(array $data): void {

        $properties = (new Property())->find("id=:id","id={$data["property"]}")->fetch(true);

        $tenancyList = null;

        foreach ($properties as $property) {

            $tenancyList[] = $property->data();

        }

        echo json_encode(["tenancy" => $tenancyList]);

    }

    /**
     * @param array $data
     */
    public function getDate(array $data): void {

        $date_part1=substr($data["start_date"] , 0, 2);
        $date_part2=substr($data["start_date"] , 2, 1);
        $date_part25=substr($data["start_date"] , 3, 1);
        $date_part3=substr($data["start_date"] , 4, 4);
        $date_concat=$date_part2.''.$date_part25;
        $end_date = mktime(0, 0, 0, ($date_concat + $data["lease_term"]), ($date_part1 -1), $date_part3);

        $new_date = date ( 'd/m/Y' , $end_date );

        echo json_encode($new_date);
        return;

    }


}