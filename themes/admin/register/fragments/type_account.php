<article class="auxs_aux">
    <h3><?=$type_account->description?></h3>
    <a class="remove" href="#" data-action="<?= $router->route("auxiliar.type_accountDelete"); ?>"
       data-id="<?=$type_account->id?>">Deletar</a>
</article>