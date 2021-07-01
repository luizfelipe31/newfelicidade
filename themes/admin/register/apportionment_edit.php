<?php $v->layout("_admin"); ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0"><i class="fas fa-home"></i> Cadastrar Rateio</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="<?= $router->route("register.apportionment"); ?>">Rateio</a></li>
                            <li class="breadcrumb-item active">Cadastrar Rateio</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="<?= url("/cadastro/rateio/excluir/{$cod}/{$type}"); ?>" enctype="multipart/form-data" method="post">
                    <?= csrf_input(); ?>
                    <input type="hidden" name="action" value="update"/>
                    <input type="hidden" name="cod_old" value="<?=$cod?>"/>
                    <div class="row mt-4 card">
                        <div class="tab-content p-3" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="registration" role="tabpanel" aria-labelledby="registration-tab">
                                <div class="row">
                                    <?php if($water_and_sewage_cod): ?>
                                    <div class="col-md-6">
                                        <label>Rateio de Água e Esgoto:</label>
                                        <input type="text" class="form-control" name="water_and_sewage_cod" value="<?=$water_and_sewage_cod;?>" placeholder="Código de Rateio" >
                                    </div>
                                    <?php endif; ?>
                                    <?php if($fire_department_cod): ?>
                                    <div class="col-md-6">
                                        <label>Rateio de Bombeiro:</label>
                                        <input type="text" class="form-control" name="fire_department_cod" value="<?=$fire_department_cod;?>" placeholder="Código de Rateio" >
                                    </div>
                                    <?php endif; ?>
                                    <?php if($gas_cod): ?>
                                    <div class="col-md-6">
                                        <label>Rateio de Gás:</label>
                                        <input type="text" class="form-control" name="gas_cod" value="<?=$gas_cod;?>" placeholder="Código de Rateio" >
                                    </div>
                                    <?php endif; ?>
                                    <?php if($light_cod): ?>
                                    <div class="col-md-6">
                                        <label>Rateio de Luz:</label>
                                        <input type="text" class="form-control" name="light_cod" value="<?=$light_cod;?>" placeholder="Código de Rateio" >
                                    </div>
                                    <?php endif; ?>
                                    <?php if($city_hall_cod): ?>
                                    <div class="col-md-6">
                                        <label>Rateio de Prefeitura:</label>
                                        <input type="text" class="form-control" name="city_hall_cod" value="<?=$city_hall_cod;?>" placeholder="Código de Rateio" >
                                    </div>
                                    <?php endif; ?>
                                    <?php if($properties): ?>
                                        <table class="table table-hover text-nowrap">
                                            <thead>
                                            <tr>
                                                <th>Selecionar</th>
                                                <th>Imóvel</th>
                                                <th>Porcentagem</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php foreach ($properties as $property):
                                                    $checked=0;
                                                    $percent="";
                                                    foreach($apportionments as $apportionment):
                                                       if($apportionment->property == $property->id):
                                                          $checked=1;

                                                           if($type=="city_hall_cod"):
                                                               $percent = $apportionment->city_hall_percent;
                                                           endif;

                                                           if($type=="light_cod"):
                                                               $percent = $apportionment->light_percent;
                                                           endif;

                                                           if($type=="water_and_sewage_cod"):
                                                               $percent = $apportionment->water_and_sewage_percent;
                                                           endif;

                                                           if($type=="fire_department_cod"):
                                                               $percent = $apportionment->fire_department_percent;
                                                           endif;

                                                           if($type=="gas_cod"):
                                                               $percent = $apportionment->gas_percent;
                                                           endif;

                                                       endif;
                                                    endforeach;
                                                ?>
                                                <tr>
                                                    <td><input type="checkbox" name="property[]" <?=$checked==1 ? "checked" : "";?> value="<?=$property->id?>"></td>
                                                    <td><?=$property->street." ".$property->number." ".$property->complement.", ".$property->district." - ".$property->state." - ".$property->city;?></td>
                                                    <td><input class="form-control mask-percent" type="text" name="percent_<?=$property->id?>" value="<?=$percent?>" placeholder="%" /></td>
                                                </tr>
                                            <?php  endforeach;?>
                                            </tbody>
                                        </table>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div><!-- /.tab-content p-3 -->
                        <div class="card-footer">
                            <button class="btn btn-success"><i class="fas fa-edit"> Editar</i></button>
                            &nbsp&nbsp
                            <a href="#" class="btn btn-danger"
                               data-post="<?= url("/cadastro/rateio/excluir/{$cod}/{$type}"); ?>"
                               data-action="delete"
                               data-confirm="ATENÇÃO: Tem certeza que deseja excluir esse rateio e todos os dados relacionados a ele? Essa ação não pode ser desfeita!"
                               data-client_cod="<?= $property->cod; ?>"><i class="fas fa-trash"> Excluir Rateio</i>
                            </a>
                        </div><!-- /.card-footer -->
                    </div><!-- /.row mt-4 card -->

                </form>

            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->

    </div><!-- /.content-wrapper -->
