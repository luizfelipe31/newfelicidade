<?php

namespace Source\App;

class InvoiceController extends Admin
{

    public function __construct($router) {
        parent::__construct($router);
    }

    public function expense(?array $data): void {

        $head = $this->seo->render(
            CONF_SITE_NAME . " | Despesas",
            CONF_SITE_DESC,
            url("/"),
            url("/assets/images/image.jpg"),
            false
        );

        echo $this->view->render("financial/expense", [
            "head" => $head,
            "menu" => "financial",
            "submenu" => "expense",
            "properties" => ""
        ]);
    }
}