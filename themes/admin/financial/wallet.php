<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-wallet"></i> Carteira</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Carteira</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
        <!-- Default box -->
    </div>
    <!-- /.content-header -->
    <!-- Default box -->
    <div class="card card-solid">
        <div class="card-body pb-0">
            <div class="row">
                <div class="col-md-4">
                <i class="btn btn-success" style="cursor:pointer" data-toggle="modal" data-target="#modalWallet">Nova Carteira</i>
                </div>
                <div class="col-md-5">
                </div>
            </div><br>

            <div class="row">
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3>R$500</h3>

                            <p><a href="#" style="color:white;font-size:1.5em"><?=$main_wallet->description?></a></p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                        <a href="#" class="small-box-footer"></a>
                    </div>
                </div>
            <?php if($wallets): foreach ($wallets as $wallet): ?>
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3>R$500</h3>

                            <p><a href="#" style="color:white;font-size:1.5em" id="wallet_delete" data-toggle="modal" data-target="#modalWalletEdit" data-value="<?=$wallet->description?>" data-cod="<?=$wallet->cod?>"><?=$wallet->description?></a></p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-dollar-sign"></i>
                        </div>

                        <a href="<?=  url("/carteira/deletar/{$wallet->cod}"); ?>" onclick="return confirm('Tem certeza que deseja deletar essa carteira?')"  class="small-box-footer">Excluir <i class="fas fa-times-circle"></i></a>
                    </div>
                </div>
            <?php endforeach; endif; ?>
            </div>

        </div><!-- /.card-body pb-0 -->
    </div><!-- /.card card-solid -->

</div><!-- /.content-wrapper-->



    <!--modal Wallet-->
    <div class="modal fade" id="modalWallet" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="wallet">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Carteira Nova</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form action="<?= $router->route("wallet.add"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">
                            <label>
                                <input type="text" class="form-control" name="description" placeholder="Nome da Carteira:" required/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Nova</i></button>
                            </label>
                        </form>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <!--modal Wallet Edit-->
    <div class="modal fade" id="modalWalletEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="walletEdit">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar Carteira</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form action="<?= $router->route("wallet.edit"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">
                              <input type="hidden" name="cod" id="cod"/>
                            <label>
                                <input type="text" class="form-control" name="description_edit" id="description_edit" placeholder="Nome da Carteira:" required/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Editar Carteira</i></button>
                            </label>
                        </form>
                    </div>

                </div>

            </div>
        </div>
    </div>

<?php $v->start("scripts");?>
<script>
$( "#wallet_delete").click( function (e) {
    e.preventDefault();
    $( "#cod").val($(this).data('cod'));
    $( "#description_edit").val($(this).data('value'));
})
</script>
<?php $v->end(); ?>