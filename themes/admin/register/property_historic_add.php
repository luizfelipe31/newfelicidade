<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-home"></i> Cadastrar Histórico de Imóvel</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item"><a href="<?= $router->route("register.propertyHistoric"); ?>">Histórico de Imóvel</a></li>
                        <li class="breadcrumb-item active">Cadastrar Histórico de Imóvel</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form action="<?= $router->route("register.propertyHistoricAdd"); ?>" enctype="multipart/form-data" method="post">
                <?= csrf_input(); ?>
                <input type="hidden" name="action" value="create"/>
                <div class="row mt-4 card">
                    <div class="tab-content p-3" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="registration" role="tabpanel" aria-labelledby="registration-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Imóvel:</label>
                                    <select class="form-control select2bs4" style="width: 100%;" name="property">
                                        <option value="">--Selecione--</option>
                                        <?php  if(!empty($properties)):
                                            foreach($properties as $property):?>
                                                <option value="<?=$property->id?>"><?=$property->fullNameComplete()?></option>
                                            <?php   endforeach;
                                        endif;?>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Data:</label>
                                    <input type="text" class="form-control mask-date" name="date_historic" placeholder="dd/mm/yyyy"/>
                                </div>
                                <div class="col-md-12">
                                    <label>Histórico:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalHistoric"></i></label>
                                    <select class="form-control select2bs4" style="width: 100%;" name="historic">
                                        <option value="">--Selecione--</option>
                                        <option value="constructions">Obra</option>
                                        <option value="survey">Vistoria</option>
                                        <?php  if(!empty($historics)):
                                            foreach($historics as $historic):?>
                                                <option value="<?=$historic->id?>"><?=$historic->description;?></option>
                                            <?php   endforeach;
                                        endif;?>
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <label>Descrição:</label>
                                    <textarea class="form-control" name="description"></textarea>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.tab-content p-3 -->
                    <div class="card-footer">
                        <button class="btn btn-success"><i class="fas fa-edit"> Cadastrar</i></button>
                    </div><!-- /.card-footer -->
                </div><!-- /.row mt-4 card -->
            </form>

        </div><!-- /.container-fluid -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->


    <!--modal historic-->
    <div class="modal fade" id="modalHistoric" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="historic">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Histórico</h5>
                    <button type="button" class="close" id="close_historic" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.historicAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="historic" placeholder="Histórico:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs11">
                            <?php if(!empty($historics)):
                                foreach($historics as $historic):
                                    $v->insert("register/fragments/historic",["historic" => $historic]);
                                endforeach;
                            endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>

<?php $v->start("scripts");
if(!empty(flash())):
    ?>
    <script>
        $(function () {
            toastr.success("Histórico cadastrado com sucesso!");
        });
    </script>
<?php
endif;
?>
    <script src="<?= url("/shared/scripts/property_historic.js"); ?>"></script>
<?php $v->end(); ?>