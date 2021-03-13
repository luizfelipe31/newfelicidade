<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="far fa-copy"></i> Reajuste de Contrato</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Reajuste de Contrato</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
        <!-- Default box -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row mt-4 card">
                <div class="tab-content p-3" id="nav-tabContent">

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><label>Tipo de Reajuste:</label></span>
                            <select class="form-control" name="readjustment_type">
                                <option value="">TODOS</option>
                                <option value="IPCA">IPCA</option>
                                <option value="IGPM">IGPM</option>
                            </select>

                            <span class="input-group-addon">
                                <label>Data:</label>
                            </span>
                            <input type="text" class="form-control mask-date2" name="date_readjustment" value="<?= $date_readjustment ?>" placeholder="mm/yyyy" required/>

                            <span class="input-group-btn">
                                <button class="btn btn-primary"><i class="fas fa-search"> Pesquisar</i></button>
                            </span>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                           <button class="btn btn-success">Reajustar</button>  
                        </div>
                        <div class="col-md-6">
                           <button class="btn btn-primary">Reajustar</button>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <span class="input-group-addon">
                            <label>% Reajuste:</label>
                        </span>
                        <input class="form-control mask-percent" type="text" name="readjustment_percent" placeholder="% Reajuste" />

                        <span class="input-group-btn">
                            <button class="btn btn-primary"><i class="fas fa-success"> Reajustar</i></button>
                        </span>                       
                    </div>

                </div><!-- /.tab-content p-3-->
            </div><!-- /.row mt-4 card-->
        </div><!-- /.container-fluid-->
    </section><!-- /.content-->

</div><!-- /.content-wrapper-->



<?php
$v->start("scripts");
if (!empty(flash())):
    ?>
    <script>
        $(function () {
            toastr.success("Contrato reajustado com sucesso.");
        });
    </script>
    <?php
endif;
if (!$contracts):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum contrato encontrado");
        });
    </script>
<?php endif;
?>
<script src="<?= url("/shared/scripts/contract.js"); ?>"></script>
<?php $v->end(); ?>

