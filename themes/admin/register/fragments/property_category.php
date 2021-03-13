<article class="auxs_aux">
    <h3><?=$category->description?></h3>
    <a class="remove" href="#" data-action="<?= $router->route("auxiliar.categoryDelete"); ?>"
       data-id="<?=$category->id?>">Deletar</a>
</article>