<?php

namespace Source\App;

use Source\Models\Client;
use Source\Models\Property;
use Source\Models\User;
use Source\Models\Contract;
use Source\Models\Log;

/**
 * Description of Dash
 *
 * @author Luiz
 */
class Dash extends Admin {

    /**
     * Dash constructor.
     */
    public function __construct($router) {
        parent::__construct($router);
    }

    /**
     *
     */
    public function dash(): void {
        redirect("/dash/estrategico");
    }

    /**
     * @param array|null $data
     * @throws \Exception
     */
    public function home(?array $data): void {

        $lessor_count = (new Client())->find("status!=2 and account_id=:id and lessor=1","id={$this->user->account_id}")->count();

        $lessee_count = (new Client())->find("status!=2 and account_id=:id and lessee=1","id={$this->user->account_id}")->count();

        $beneficiary_count = (new Client())->find("status!=2 and account_id=:id and beneficiary=1","id={$this->user->account_id}")->count();

        $surety_count = (new Client())->find("status!=2 and account_id=:id and surety=1","id={$this->user->account_id}")->count();

        $procurator_count = (new Client())->find("status!=2 and account_id=:id and procurator=1","id={$this->user->account_id}")->count();

        $property_count = (new Property())->find("status!=2 and account_id=:id ", "id={$this->user->account_id}")->count();

        $realtor_count = (new User())->find("status!=2 and account_id=:id and realtor=1","id={$this->user->account_id}")->count();

        $contract_count = (new Contract())->find("status!=2 and contract_situation='active' and account_id=:id ","id={$this->user->account_id}")->count();
        
        $head = $this->seo->render(
                CONF_SITE_NAME . " | Dashboard Estratégico",
                CONF_SITE_DESC,
                url("/"),
                theme("/assets/images/image.jpg", CONF_VIEW_THEME_ADMIN),
                false
        );

        echo $this->view->render("dash/dashboard1", [
            "menu" => "dash",
            "submenu" => "dash1",
            "head" => $head,
            "client" => (object) [
                "lessor" => $lessor_count,
                "lessee" => $lessee_count,
                "beneficiary" => $beneficiary_count,
                "surety" => $surety_count,
                "procurator" => $procurator_count,
                "realtor" => $realtor_count
            ],
            "contract" => $contract_count,
            "property" => $property_count,
            "log" => (new Log())->find("DATE(created_at) = DATE(now()) and account_id=:account","account={$this->user->account_id}")->order("id DESC")->fetch(true),
            "logCount" => (new Log())->find("DATE(created_at) = DATE(now()) and account_id=:account","account={$this->user->account_id}")->count()
        ]);
    }

    /**
     * 
     * @return void
     */
    public function logoff(): void {
        $this->message->info("Você saiu com sucesso {$this->user->first_name}.")->flash();

        $log = new Log();

        $log->account_id = $this->user->account_id;
        $log->user = $this->user->id;
        $log->ip = $_SERVER["REMOTE_ADDR"];
        $log->description = "Usuário " . $this->user->fullName()." saiu do sistema";
        $log->save();

        User::logout();
        redirect("/login");
    }

}
