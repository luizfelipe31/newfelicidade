<?php
//Clientes
$router->get("/cadastro/clientes", "Register:home","register.home");
$router->post("/cadastro/clientes", "Register:home","register.homePost");
$router->get("/cadastro/clientes/{search}/{page}", "Register:home","register.homeSearch");
$router->get("/cadastro/clientes/cadastrar", "Register:clientsAdd","register.clientsAdd");
$router->post("/cadastro/clientes/cadastrar", "Register:clientsRegister","register.clientsRegister");
$router->get("/cadastro/clientes/alterar/{client_cod}", "Register:clientsEdit","register.clientsEdit");
$router->post("/cadastro/clientes/alterar/{client_cod}", "Register:clientsEdit","register.clientsEdit");
//Imóveis
$router->get("/cadastro/imoveis", "Register:property","register.property");
$router->get("/cadastro/imoveis/cadastrar", "Register:propertyAdd","register.propertyAdd");
$router->post("/cadastro/imoveis/cadastrar", "Register:propertyAdd","register.propertyAdd");
$router->get("/cadastro/imoveis/alterar/{properties_cod}", "Register:propertyEdit","register.propertyEdit");
$router->post("/cadastro/imoveis/alterar/{properties_cod}", "Register:propertyEdit","register.propertyEdit");

//Histórico de Imóveis
$router->get("/cadastro/imoveis/historico", "Register:propertyHistoric","register.propertyHistoric");
$router->get("/cadastro/imoveis/historico/cadastrar", "Register:propertyHistoricAdd","register.propertyHistoricAdd");
$router->post("/cadastro/imoveis/historico/cadastrar", "Register:propertyHistoricAdd","register.propertyHistoricAdd");
$router->get("/cadastro/imoveis/historico/alterar/{historic_cod}", "Register:propertyHistoricEdit","register.propertyHistoricEdit");
$router->post("/cadastro/imoveis/historico/alterar/{historic_cod}", "Register:propertyHistoricEdit","register.propertyHistoricEdit");

//Rateio
$router->get("/cadastro/rateio", "Register:apportionment","register.apportionment");
$router->get("/cadastro/rateio/cadastrar", "Register:apportionmentAdd","register.apportionmentAdd");
$router->post("/cadastro/rateio/cadastrar", "Register:apportionmentAdd","register.apportionmentAdd");
$router->get("/cadastro/rateio/property/{cod}/{type}", "Register:apportionmentProperty","register.apportionmentProperty");
$router->get("/cadastro/rateio/alterar/{cod}/{type}", "Register:apportionmentEdit","register.apportionmentEdit");
$router->post("/cadastro/rateio/alterar", "Register:apportionmentEdit","register.apportionmentEdit");
$router->post("/cadastro/rateio/excluir/{cod}/{type}", "Register:apportionmentEdit","register.apportionmentEdit");