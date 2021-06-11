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
    <div class="container-fluid">
        <div class="row mt-4 card">
            <div class="tab-content p-3" id="nav-tabContent">
                <form action="<?= $router->route("contract.readjustment"); ?>" method="post" class="ajax_form">
                    <input type="hidden" name="action" value="search"/>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><label>Tipo de Reajuste:</label></span>
                            <select class="form-control" name="readjustment_type">
                                <option <?php
                                if ($readjustment_type == ""): echo "selected";
                                endif;
                                ?> value="">TODOS</option>
                                <option <?php
                                    if ($readjustment_type == "IPCA"): echo "selected";
                                    endif;
                                    ?> value="IPCA">IPCA</option>
                                <option <?php
                                if ($readjustment_type == "IGPM"): echo "selected";
                                endif;
                                    ?> value="IGPM">IGPM</option>
                            </select>
                            &nbsp&nbsp
                            <span class="input-group-addon">
                                <label>Data:</label>
                            </span>
                            <input type="text" class="form-control mask-date2" name="date_readjustment" value="<?= $date_readjustment ?>" placeholder="mm/yyyy" required/>
                            &nbsp
                            <span class="input-group-btn">
                                <button class="btn btn-primary"><i class="fas fa-search"> Pesquisar</i></button>
                            </span>

                        </div>
                    </div>  
                </form>
                <br>                   

            </div><!-- /.tab-content p-3-->
        </div><!-- /.row mt-4 card-->
    </div><!-- /.container-fluid-->

    <div class="row">
        <div class="col-12">
            <div class="card">
<?php if ($contracts): ?>    
                    <div class="card-header">
                        <h3 class="card-title">Lista de Reajustes da Data: <?= $date_readjustment ?></h3>
                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 350px;">
                                Digite % do reajuste: <input type="text" class="form-control mask-percent" name="readjustment_percent" id="readjustment_percent" placeholder="% Reajuste">
                            </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <br>
                    <form action="<?= $router->route("contract.readjustmentDo"); ?>" method="post" >
                        <?= csrf_input(); ?>
                        <input type="hidden" name="date_readjustment_hiden" value="<?= $date_readjustment ?>"/>
                        <div class="row">
                            <div class="col-md-5">

                            </div>
                            <div class="col-md-2">
                                <button class="btn btn-success">Reajustar</button>  
                            </div>
                        </div>
                        <input type="hidden" name="count_property" id="count_property" value="<?php echo count($contracts); ?>" />
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap">
                                <thead>
                                    <tr>
                                        <th>Imóvel</th>
                                        <th>Tipo de Reajuste</th>
                                        <th>Aluguel Atual</th>
                                        <th>Valor do Reajuste</th>
                                        <th>Selecionar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td align="right">
                                            Todos<div class="icheck-success d-inline">
                                                <input type="checkbox" name="ch_all" id="chAllSuccess">
                                                <label for="chAllSuccess">
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <?php
                                    $i = 1;
                                    foreach ($contracts as $contract):
                                        $property = $contract->getProperty()->street . " " . $contract->getProperty()->number . " " . $contract->getProperty()->complement . ", " . $contract->getProperty()->district . " - " . $contract->getProperty()->state . " - " . $contract->getProperty()->city;
                                        ?>
                                    <input type="hidden" class="form-control mask-money" name="readjustment_value_hidden_<?= ltrim($contract->cod); ?>" id="readjustment_value_hidden_<?= ltrim($i); ?>" value="<?= str_price($contract->lease_price); ?>">
                                    <tr>
                                        <td><?= $property; ?></td>
                                        <td><?= $contract->readjustment_type; ?></td>
                                        <td>R$<?= str_price($contract->lease_price); ?></td>
                                        <td><input type="text" class="form-control mask-money" name="readjustment_value_<?= ltrim($contract->cod); ?>" id="readjustment_value_<?= ltrim($i); ?>" placeholder="% Reajuste"></td>
                                        <td align="right">
                                            <div class="icheck-success d-inline">
                                                <input type="checkbox" name="ch_contract[]" id="chSuccess_<?= ltrim($contract->cod); ?>" value="<?php echo ltrim($contract->cod)?>" class="mark">
                                                <label for="chSuccess_<?= ltrim($contract->cod); ?>">
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
        <?php
        $i++;
    endforeach;
    ?>
                                </tbody>
                                <tfoot>
                                <td>Total: <?= count($contracts); ?></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                </tfoot>
                            </table>

                        </div>
                        <!-- /.card-body -->
<?php endif; ?>
                </form>
            </div>
            <!-- /.card -->
        </div>
    </div>
    <!-- /.row -->

</div><!-- /.content-wrapper-->



<?php $v->start("scripts"); ?>
<script src="<?= url("/shared/scripts/contract_reajustment.js"); ?>"></script>

<?php if (!empty(flash())):
    ?>
    <script>
        $(function () {
            toastr.success("Contrato(s) reajustado(s) com sucesso.");
        });
    </script>
    <?php
endif;
if (!$contracts):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum contrato para reajuste encontrado");
        });
    </script>
    <?php
endif;
$v->end();
?>

