<?php

/**Contrato**/
$router->get("/contrato", "ContractController:home","contract.home");
$router->get("/contrato/cadastrar", "ContractController:contractAdd","contract.contractAdd");
$router->post("/contrato/cadastrar", "ContractController:contractAdd","contract.contractAdd");
$router->get("/contrato/alterar/{cod}", "ContractController:contractUpdade","contract.contractUpdade");
$router->get("/contract/getOwner/{property}", "ContractController:getOwner","contract.getOwner");
$router->get("/contract/getProxy/{property}", "ContractController:getProxy","contract.getProxy");
$router->get("/contract/getTenancy/{property}", "ContractController:getTenancy","contract.getTenancy");
$router->get("/contract/getDate/{lease_term}/{start_date}", "ContractController:getDate","contract.getDate");

/**Cobrança Automática**/
$router->get("/contrato/gerar-aluguel", "ContractController:automaticBilling","contract.automaticBilling");
$router->post("/contrato/gerar-aluguel", "ContractController:automaticBilling","contract.automaticBilling");

/** Reajuste **/
$router->get("/contrato/reajuste", "ContractController:readjustment","contract.readjustment");
$router->get("/contrato/reajuste/search=", "ContractController:readjustment","contract.readjustmentSearch");
