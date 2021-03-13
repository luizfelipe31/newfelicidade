<article class="auxs_aux">
    <h3><?=$nationality->description?></h3>
    <a class="remove" href="#" data-action="<?= $router->route("auxiliar.nationalityDelete"); ?>"
       data-id="<?=$nationality->id?>">Deletar</a>
</article>