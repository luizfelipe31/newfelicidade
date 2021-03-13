<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-home"></i> Rateio</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Rateio</li>
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
                    <a href="<?= $router->route("register.apportionmentAdd"); ?>" class="btn btn-success">Cadastrar Rateio</a>
                </div>
                <div class="col-md-5">
                </div>
            </div><br>
            <?php
            if($apportionments):?>
                <table id="exampleOrder2" class="display" >
                    <thead>
                    <tr>
                        <th>Rateio</th>
                        <th>Código do Rateio</th>
                        <th>Imóveis</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($apportionments as $apportionment):
                            $cod="";
                            $approtionment_type = "";
                            $approtionment_text = "";
                            if (!empty($apportionment->city_hall_cod)):
                                $approtionment_type = "city_hall_cod";
                                $approtionment_text = "Rateio de Prefeitura";
                                $cod = $apportionment->city_hall_cod;
                            endif;
                            if (!empty($apportionment->light_cod)):
                                $approtionment_type = "light_cod";
                                $approtionment_text = "Rateio de Luz";
                                $cod = $apportionment->light_cod;
                            endif;
                            if (!empty($apportionment->water_and_sewage_cod)):
                                $approtionment_type = "water_and_sewage_cod";
                                $approtionment_text = "Rateio de Água e Esgoto";
                                $cod = $apportionment->water_and_sewage_cod;
                            endif;
                            if (!empty($apportionment->fire_department_cod)):
                                $approtionment_type = "fire_department_cod";
                                $approtionment_text = "Rateio de Bombeiro";
                                $cod = $apportionment->fire_department_cod;
                            endif;
                            if (!empty($apportionment->gas_cod)):
                                $approtionment_type = "gas_cod";
                                $approtionment_text = "Rateio de Gás";
                                $cod = $apportionment->gas_cod;
                            endif;
                    ?>
                        <tr>
                            <td><?=$approtionment_text;?></td>
                            <td><?=$cod;?></td>
                            <td><i style="cursor:pointer;color:blue" data-toggle="modal" class="open-AddBookDialog" id="showModal" data-id="<?=$cod?>" data-type="<?=$approtionment_type?>" data-target="#modalProperty"><?=$apportionment->propertyCount();?></i></td>
                            <td><a href="<?= url("/cadastro/rateio/alterar/{$cod}/{$approtionment_type}"); ?>" class="btn btn-primary"><i class="fas fa-edit">Alterar</i></a></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                    <td>Total: <?=count($apportionments);?></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    </tfoot>
                </table>
            <?php endif;?>
        </div><!-- /.card-body pb-0 -->
    </div><!-- /.card card-solid -->
</div><!-- /.content-wrapper-->
<div class="modal fade" id="modalProperty" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Imóveis</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="load">

            </div>

        </div>
    </div>
</div>

<?php $v->start("scripts");
if(!empty(flash())):
    ?>
    <script>
        $(function () {
            toastr.success("O rateio foi excluído com sucesso...");
        });
    </script>
<?php
endif;
if(!$apportionments):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum rateio encontrado");
        });
    </script>
<?php
endif;?>
<script src="<?= url("/shared/scripts/apportionment.js"); ?>"></script>
<?php $v->end(); ?>
