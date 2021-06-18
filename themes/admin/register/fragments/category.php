<article class="auxs_aux">
    <h3><?=$category->description;?></h3>
    <?php if(count($category->invoiceDesc())==0): ?>
    <a class="remove" href="#" data-action="<?= $router->route("auxiliar.categoryInvoiceDelete"); ?>"
       data-id="<?=$category->id?>">Deletar</a>
    <?php endif;?>
</article>