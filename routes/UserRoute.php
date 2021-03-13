<?php
$router->get("/usuario", "Users:home","users.home");
$router->post("/usuario", "Users:home","users.homePost");
$router->get("/usuario/{search}/{page}", "Users:home","users.homeSearch");
$router->get("/usuario/cadastrar", "Users:user","users.user");
$router->post("/usuario/cadastrar", "Users:user","users.userPost");
$router->get("/usuario/alterar/{user_id}", "Users:user","users.userId");
$router->post("/usuario/alterar/{user_id}", "Users:user","users.userIdPost");