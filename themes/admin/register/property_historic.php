<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-home"></i> Histórico de Imóveis</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Histórico de Imóveis</li>
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
                    <a href="<?= $router->route("register.propertyHistoricAdd"); ?>" class="btn btn-success">Cadastrar Histórico</a>
                </div>
                <div class="col-md-5">
                </div>
            </div><br>
            <?php
            if($property_historics):?>
                <table id="example5" class="display" >
                    <thead>
                    <tr>
                        <th>Imóvel</th>
                        <th>Histórico</th>
                        <th>Descrição</th>
                        <th>Data</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($property_historics as $property_historic): ?>
                        <tr>
                            <td><?=$property_historic->fullName() ?></td>
                            <td>
                                <?php
                                if($property_historic->historic=="constructions" || $property_historic->historic=="survey"):
                                    if($property_historic->historic=="constructions"):
                                        echo "Obra"."<br>";
                                    endif;

                                    if($property_historic->historic=="survey"):
                                        echo " Vistoria".'<br>';
                                    endif;
                                else:
                                    echo  $property_historic->historicDescription()->description;
                                endif;
                                ?>
                            </td>
                            <td><?=$property_historic->description; ?></td>
                            <td><?=date_fmt2($property_historic->date_historic); ?></td>
                            <td><a href="<?= url("/cadastro/imoveis/historico/alterar/{$property_historic->cod}"); ?>" class="btn btn-primary"><i class="fas fa-edit">Alterar</i></a></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                    <td>Total: <?=count($property_historics);?></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    </tfoot>
                </table>
            <?php endif;?>


        </div><!-- /.card-body pb-0 -->
    </div><!-- /.card card-solid -->

</div><!-- /.content-wrapper-->


<?php $v->start("scripts");
if(!$property_historics):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum histórico encontrado");
        });
    </script>
<?php
endif;
$v->end(); ?>
