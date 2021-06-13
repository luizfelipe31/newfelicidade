<?php

namespace Source\App;

use Source\Models\Wallet;

class WalletController extends Admin
{

    public function __construct($router) {
        parent::__construct($router);
    }

    public function home(): void {

        $wallets = (new Wallet)->find("status=1 and account_id=:c","c={$this->user->account_id}")->fetch(true);
        $main_wallet = (new Wallet)->find("id=1")->fetch();
        //var_dump($wallets);exit;

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Carteira",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("financial/wallet", [
            "head" => $head,
            "menu" => "financial",
            "submenu" => "wallet",
            "wallets" => $wallets,
            "main_wallet" => $main_wallet
        ]);

    }

    public function add(?array $data): void {

       /* if (!empty($data['csrf'])) {

            if ($_REQUEST && !csrf_verify($_REQUEST)) {

                $json["message"] = "Erro ao enviar o formulário, atualize a página";
                echo json_encode($json);
                return;
            }
        }*/
        
       $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

       $data = (object)$post;

       $wallet_create = new Wallet();
       $wallet_create->description = str_title($data->description);
       $wallet_create->status = 1;
       $wallet_create->account_id = $this->user->account_id;

        if (!$wallet_create->save()) {
            $json["message"] = $wallet_create->fail()->getMessage();
            echo json_encode($json);
            return;
        }
                           
       $this->message->info("Carteira cadastrada com sucesso...")->flash();
       $json["redirect"] = url("/carteira");

       echo json_encode($json);
       return;

    }

    public function delete(?array $data): void {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $wallet = (new Wallet())->find("status!=2 and cod=:cod","cod={$data["cod"]}")->fetch();

        if($wallet == null){
            $json["message"] = "Essa carteira não existe.";
            echo json_encode($json);
            return;
        }

        $wallet->status = 2;
        $wallet->save();

        $this->message->info("Carteira excluída com sucesso...")->flash();
        redirect("/carteira");
    }


    public function edit(): void {

        $post = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);

        $data = (object)$post;

        $wallet = (new Wallet())->find("status!=2 and cod=:cod","cod={$data->cod}")->fetch();

        if($wallet == null){
            $json["message"] = "Essa carteira não existe.";
            echo json_encode($json);
            return;
        }

        $wallet->description = $data->description_edit;
        if (!$wallet->save()) {
            $json["message"] = $wallet->fail()->getMessage();
            echo json_encode($json);
            return;
        }

        $this->message->info("Carteira alterada com sucesso...")->flash();
        $json["redirect"] = url("/carteira");
 
        echo json_encode($json);
        return;
    }
}