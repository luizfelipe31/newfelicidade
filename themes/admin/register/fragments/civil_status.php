<article class="auxs_aux">
    <h3><?=$each->description?></h3>
    <a class="remove" href="#" data-action="<?= $router->route("auxiliar.civil_statusDelete"); ?>"
       data-id="<?=$each->id?>">Deletar</a>
</article>