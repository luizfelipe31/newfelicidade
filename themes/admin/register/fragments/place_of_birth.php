<article class="auxs_aux">
    <h3><?=$place_of_birth->description?></h3>
    <a class="remove" href="#" data-action="<?= $router->route("auxiliar.place_of_birthDelete"); ?>"
       data-id="<?=$place_of_birth->id?>">Deletar</a>
</article>