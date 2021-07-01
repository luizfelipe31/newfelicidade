<?php

/**extrato**/


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

/**lançamento de cobrança**/
$router->get("/cobranca", "InvoiceController:incoming","invoice.incoming");

/**lançamento de despesa**/
$router->get("/despesa", "InvoiceController:expense","invoice.expense");
$router->post("/despesa/lancar", "InvoiceController:expenseAdd","invoice.expenseAdd");
$router->post("/despesa/lancar", "InvoiceController:expenseAdd","invoice.expenseAdd");

/**lançamento alterar excluir**/
$router->post("/invoice/excluir", "InvoiceController:invoiceDelete","invoice.invoiceDelete");
$router->post("/invoice/alterar", "InvoiceController:invoiceUpdate","invoice.invoiceUpdate");

/**Compensação**/
$router->get("/compensacao", "InvoiceController:compensation","invoice.compensation");
$router->post("/compensacao", "InvoiceController:compensation","invoice.compensationSearch");
$router->post("/compensacao/cadastrar", "InvoiceController:compensationAdd","invoice.compensationAdd");

/**Rebico**/
$router->get("/retorna_recibo", "InvoiceController:returnReceipt","invoice.returnReceipt");

/**Boleto**/

