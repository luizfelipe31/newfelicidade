<?php

/**carteira**/
$router->get("/carteira", "WalletController:home","wallet.home");
$router->post("/carteira/cadastrar", "WalletController:add","wallet.add");
$router->post("/carteira/alterar", "WalletController:edit","wallet.edit");
$router->get("/carteira/deletar/{cod}", "WalletController:delete","wallet.delete");