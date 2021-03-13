<?php

namespace Source\App;

use Source\Models\User;
use Source\Models\Level;
use Source\Support\Pager;
use Source\Support\Thumb;
use Source\Support\Upload;

/**
 * Description of Users
 *
 * @author Luiz
 */
class Users extends Admin {

    /**
     * Users constructor.
     * @param $router
     */
    public function __construct($router) {
        parent::__construct($router);
    }

    /**
     * @param array|null $data
     */
    public function home(?array $data): void {
        //search redirect
        if (!empty($data["action"])) {
            if (!empty($data["s"])) {
                $users = (new User())->find("MATCH(first_name, last_name, email) AGAINST(:s) and status!=2 and admin_account=0 and account_id=:account",
                    "s={$data["s"]}&account={$this->user->account_id}");

                $s = str_search($data["s"]);
                echo json_encode(["redirect" => url("/usuario/{$s}/1")]);
                return;
            }else{
                echo json_encode(["redirect" => url("/usuario")]);
                return;
            }
        }

        $search = null;
        $users = (new User())->find("admin_account=0 and status!=2 and account_id=:account","account={$this->user->account_id}");


        if (!empty($data["search"]) && str_search($data["search"]) != "todos") {
            $search = str_search($data["search"]);
            $users = (new User())->find("MATCH(first_name, last_name, email) AGAINST(:s) and status!=2 and admin_account=0 and account_id=:account", "s={$search}&account={$this->user->account_id}");

        }

        $all = ($search ?? "all");
        $pager = new Pager(url("/usuario/{$all}/"));
        $pager->pager($users->count(), 12, (!empty($data["page"]) ? $data["page"] : 1));

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Usuários",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("users/home", [
            "menu" => "user",
            "submenu" => "home",
            "head" => $head,
            "search" => $search,
            "users" => $users->order("first_name, last_name")->limit($pager->limit())->offset($pager->offset())->fetch(true),
            "paginator" => $pager->render()
        ]);
    }

    /**
     * @param array|null $data
     * @throws \Exception
     */
    public function user(?array $data): void {
        //create
        if (!empty($data["action"]) && $data["action"] == "create") {
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

            $user = User::UserLog();

            if (empty($data["first_name"]) || empty($data["last_name"]) || empty($data["email"])
                || empty($data["password"]) || empty($data["level"]) || empty($data["status"])) {
                $json["message"] = "Os Campos com asteríscos no início são obrigatórios.";
                echo json_encode($json);
                return;
            }

            $realtor = 0;

            if (isset($data["ch_realtor"])) {
                $realtor = 1;
            }

            $userCreate = new User();
            $userCreate->first_name = str_title($data["first_name"]);
            $userCreate->last_name = str_title($data["last_name"]);
            $userCreate->user_name = null;
            $userCreate->email = $data["email"];
            $userCreate->password = $data["password"];
            $userCreate->level_id = $data["level"];
            $userCreate->genre = $data["genre"];
            $userCreate->datebirth = date_fmt_back($data["datebirth"]);
            $userCreate->document = preg_replace("/[^0-9]/", "", $data["document"]);
            $userCreate->realtor = $realtor;
            $userCreate->status = $data["status"];
            $userCreate->account_id = $user->account_id;

            //upload photo
            if (!empty($_FILES["photo"])) {
                $files = $_FILES["photo"];
                $upload = new Upload();
                $image = $upload->image($files, $userCreate->fullName(), 600);

                if (!$image) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $userCreate->photo = $image;
            }

            if (!$userCreate->save()) {
                if (!empty($_FILES["photo"])) {
                    unlink(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$userCreate->photo}");
                }

                $json["message"] = $userCreate->fail()->getMessage();
                echo json_encode($json);
                return;
            }

            $this->message->info("Usuário cadastrado com sucesso...")->flash();
            $json["redirect"] = url("/usuario/cadastrar");

            echo json_encode($json);
            return;
        }

        //update
        if (!empty($data["action"]) && $data["action"] == "update") {
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
            $userUpdate = (new User())->findById($data["user_id"]);

            if (!$userUpdate) {
                echo json_encode(["redirect" => url("/usuario")]);
                return;
            }

            if (!is_passwd($data["password"])&&!empty($data["password"])) {
                $json["message"] = "A senha precisa ter entre 8 a 40 digitos";
                echo json_encode($json);
                return;
            }

            $realtor = 0;

            if (isset($data["ch_realtor"])) {
                $realtor = 1;
            }


            $userUpdate->first_name = str_title($data["first_name"]);
            $userUpdate->last_name = str_title($data["last_name"]);
            $userUpdate->email = $data["email"];
            $userUpdate->password = (!empty($data["password"]) ? $data["password"] : $userUpdate->password);
            $userUpdate->level_id = $data["level"];
            $userUpdate->genre = $data["genre"];
            $userUpdate->datebirth = date_fmt_back($data["datebirth"]);
            $userUpdate->document = preg_replace("/[^0-9]/", "", $data["document"]);
            $userUpdate->realtor = $realtor;
            $userUpdate->status = $data["status"];

            //upload photo
            if (!empty($_FILES["photo"])) {

                if ($userUpdate->photo && file_exists(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$userUpdate->photo}")) {
                    unlink(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$userUpdate->photo}");
                    (new Thumb())->flush($userUpdate->photo);
                }


                $files = $_FILES["photo"];
                $upload = new Upload();
                $image = $upload->image($files, $userUpdate->fullName(), 600);

                if (!$image) {
                    $json["message"] = $upload->message()->render();
                    echo json_encode($json);
                    return;
                }

                $userUpdate->photo = $image;
            }

            if (!$userUpdate->save()) {
                $json["message"] = $userUpdate->fail()->getMessage();
                echo json_encode($json);
                return;
            }

            $this->message->info("Usuário atualizado com sucesso...")->flash();
            echo json_encode(["redirect" => url("/usuario/alterar/{$data["user_id"]}")]);
            return;
        }

        //delete
        if (!empty($data["action"]) && $data["action"] == "delete") {
            $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);
            $userDelete = (new User())->findById($data["user_id"]);

            if (!$userDelete) {
                $this->message->info("Você tentou deletar um usuário que não existe")->flash();
                echo json_encode(["redirect" => url("/usuario")]);
                return;
            }

            if ($userDelete->photo && file_exists(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$userDelete->photo}")) {
                unlink(__DIR__ . "/../../../" . CONF_UPLOAD_DIR . "/{$userDelete->photo}");
                (new Thumb())->flush($userDelete->photo);
            }


            $userDelete->status = 2;

            $userDelete->save();


            $this->message->info("O usuário foi excluído com sucesso")->flash();
            $json["redirect"] = url("/usuario");

            echo json_encode($json);
            return;
        }

        $userEdit = null;
        if (!empty($data["user_id"])) {
            $userId = filter_var($data["user_id"], FILTER_VALIDATE_INT);
            $userEdit = (new User())->findById($userId);

            if($userEdit==null){
                redirect("/error");
            }

            $head = $this->seo->render(
                CONF_SITE_NAME . " | " . "Perfil de {$userEdit->fullName()}",
                CONF_SITE_DESC,
                url("/"),
                url("/assets/images/image.jpg"),
                false
            );

            $level = (new Level())->find()->fetch(true);

            echo $this->view->render("users/user_alt", [
                "menu" => "user",
                "submenu" => "home",
                "head" => $head,
                "user" => $userEdit,
                "level" => $level
            ]);
        }else {

            $head = $this->seo->render(
                CONF_SITE_NAME . " | " . "Cadastrar Usuário",
                CONF_SITE_DESC,
                url("/"),
                url("/assets/images/image.jpg"),
                false
            );

            $level = (new Level())->find()->fetch(true);

            echo $this->view->render("users/user", [
                "menu" => "user",
                "submenu" => "home",
                "head" => $head,
                "user" => $userEdit,
                "level" => $level
            ]);
        }
    }

}
