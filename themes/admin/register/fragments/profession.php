<article class="auxs_aux">
    <h3><?=$profession->description?></h3>
    <a class="remove" href="#" data-action="<?= $router->route("auxiliar.professionDelete"); ?>"
       data-id="<?=$profession->id?>">Deletar</a>
</article>