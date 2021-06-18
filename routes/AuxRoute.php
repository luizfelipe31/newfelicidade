<?php
$router->post("/cadastro/document", "Auxiliar:documentAdd","auxiliar.documentAdd");
$router->post("/cadastro/document/delete","Auxiliar:documentDelete","auxiliar.documentDelete");
$router->get("/cadastro/document/select","Auxiliar:documentSelect","auxiliar.documentSelect");

$router->post("/cadastro/genre", "Auxiliar:genreAdd","auxiliar.genreAdd");
$router->post("/cadastro/genre/delete","Auxiliar:genreDelete","auxiliar.genreDelete");
$router->get("/cadastro/genre/select","Auxiliar:genreSelect","auxiliar.genreSelect");

$router->post("/cadastro/nationality", "Auxiliar:nationalityAdd","auxiliar.nationalityAdd");
$router->post("/cadastro/nationality/delete","Auxiliar:nationalityDelete","auxiliar.nationalityDelete");
$router->get("/cadastro/nationality/select","Auxiliar:nationalitySelect","auxiliar.nationalitySelect");


$router->post("/cadastro/place_of_birth", "Auxiliar:placeOfBirthAdd","auxiliar.place_of_birthAdd");
$router->post("/cadastro/place_of_birth/delete","Auxiliar:placeOfBirthDelete","auxiliar.place_of_birthDelete");
$router->get("/cadastro/place_of_birth/select","Auxiliar:placeOfBirthSelect","auxiliar.place_of_birthSelect");


$router->post("/cadastro/civil_status", "Auxiliar:civilStatusAdd","auxiliar.civil_statusAdd");
$router->post("/cadastro/civil_status/delete","Auxiliar:civilStatusDelete","auxiliar.civil_statusDelete");
$router->get("/cadastro/civil_status/select","Auxiliar:civilStatusSelect","auxiliar.civil_statusSelect");

$router->post("/cadastro/profession", "Auxiliar:professionAdd","auxiliar.professionAdd");
$router->post("/cadastro/profession/delete","Auxiliar:professionDelete","auxiliar.professionDelete");
$router->get("/cadastro/profession/select","Auxiliar:professionSelect","auxiliar.professionSelect");

$router->post("/cadastro/bank", "Auxiliar:bankAdd","auxiliar.bankAdd");
$router->post("/cadastro/bank/delete","Auxiliar:bankDelete","auxiliar.bankDelete");
$router->get("/cadastro/bank/select","Auxiliar:bankSelect","auxiliar.bankSelect");

$router->post("/cadastro/type_account", "Auxiliar:typeAccountAdd","auxiliar.type_accountAdd");
$router->post("/cadastro/type_account/delete","Auxiliar:typeAccountDelete","auxiliar.type_accountDelete");
$router->get("/cadastro/type_account/select","Auxiliar:typeAccountSelect","auxiliar.type_accountSelect");

$router->post("/cadastro/category", "Auxiliar:categoryAdd","auxiliar.categoryAdd");
$router->post("/cadastro/category/delete","Auxiliar:categoryDelete","auxiliar.categoryDelete");
$router->get("/cadastro/category/select","Auxiliar:categorySelect","auxiliar.categorySelect");

$router->post("/cadastro/type_property", "Auxiliar:typePropertyAdd","auxiliar.type_propertyAdd");
$router->post("/cadastro/type_property/delete","Auxiliar:typePropertyDelete","auxiliar.type_propertyDelete");
$router->get("/cadastro/type_property/select","Auxiliar:typePropertySelect","auxiliar.type_propertySelect");

$router->post("/cadastro/historic", "Auxiliar:historicAdd","auxiliar.historicAdd");
$router->post("/cadastro/historic/delete","Auxiliar:historicDelete","auxiliar.historicDelete");
$router->get("/cadastro/historic/select","Auxiliar:historicSelect","auxiliar.historicSelect");

$router->post("/cadastro/category", "Auxiliar:categoryInvoiceAdd","auxiliar.categoryInvoiceAdd");
$router->post("/cadastro/category/delete","Auxiliar:categoryInvoiceDelete","auxiliar.categoryInvoiceDelete");
$router->get("/cadastro/category/select","Auxiliar:categoryInvoiceSelect","auxiliar.categoryInvoiceSelect");