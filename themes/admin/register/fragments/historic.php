<article class="auxs_aux">
    <h3><?=$historic->description?></h3>
    <a class='remove' href='#' data-action='<?= $router->route("auxiliar.historicDelete"); ?>'
       data-id="<?=$historic->id?>">Deletar</a>
</article>