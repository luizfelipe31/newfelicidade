<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-user"></i> Clientes</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Clientes</li>
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
                    <a href="<?= $router->route("register.clientsAdd"); ?>" class="btn btn-success">Novo Cliente</a>
                </div>
                <div class="col-md-5">
                </div>
            </div><br>
                <?php
                if($clients):?>
                <table id="example1" class="display" >
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Código do Cliente</th>
                            <th>Pessoa</th>
                            <th>E-mail</th>
                            <th>Cliente</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($clients as $client): ?>
                        <tr>
                            <td><?= $client->fullName() ?></td>
                            <td><?= $client->client_cod ?></td>
                            <td><?=$client->person=="natural_person" ? "Física" : "Jurídica";?></td>
                            <td><?= $client->email ?></td>
                            <td>
                                <?php
                                       if($client->lessor==1):
                                           echo "Locador"."<br>";
                                       endif;

                                       if($client->lessee==1):
                                           echo " Locatário".'<br>';
                                       endif;

                                       if($client->beneficiary==1):
                                           echo " Beneficiário".'<br>';
                                       endif;

                                       if($client->surety==1):
                                           echo " Fiador".'<br>';
                                       endif;

                                       if($client->procurator==1):
                                           echo " Procurador".'<br>';
                                       endif;
                                ?>
                            </td>
                            <td><?=$client->status==1 ? "<div style='color:green'>Ativo</div>" : "<div style='color:red'>Inativo</div>";?></td>
                            <td><a href="<?= url("/cadastro/clientes/alterar/{$client->cod}"); ?>" class="btn btn-primary"><i class="fas fa-edit">Alterar</i></a></td>
                        </tr>
                      <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <td>Total: <?=count($clients);?></td>
                        <td></td>
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
if(!empty(flash())):
    ?>
    <script>
        $(function () {
            toastr.success("O cliente foi excluído com sucesso...");
        });
    </script>
<?php
endif;
if(!$clients):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum cliente encontrado");
        });
    </script>
<?php
endif;
$v->end(); ?>
