<?php

/**conta bancária**/
$router->get("/contabancaria", "BankAccountController:home","bankaccount.home");
$router->post("/contabancaria/cadastrar", "BankAccountController:add","bankaccount.add");
$router->post("/contabancaria/alterar", "BankAccountController:edit","bankaccount.edit");
$router->get("/contabancaria/deletar/{cod}", "BankAccountController:delete","bankaccount.delete");

/**carteira**/
$router->get("/carteira", "WalletController:home","wallet.home");
$router->post("/carteira/cadastrar", "WalletController:add","wallet.add");
$router->post("/carteira/alterar", "WalletController:edit","wallet.edit");
$router->get("/carteira/deletar/{cod}", "WalletController:delete","wallet.delete");

/**lançamento**/
$router->get("/despesa", "InvoiceController:expense","invoice.expense");