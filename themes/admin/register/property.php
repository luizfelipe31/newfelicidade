<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-home"></i> Imóveis</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Imóveis</li>
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
                    <a href="<?= $router->route("register.propertyAdd"); ?>" class="btn btn-success">Novo Imóvel</a>
                </div>
                <div class="col-md-5">
                </div>
            </div><br>
            <?php
            if($properties):?>
                <table id="example1" class="display" >
                    <thead>
                    <tr>
                        <th>Imóvel</th>
                        <th>Código do imóvel</th>
                        <th>Locador</th>
                        <th>Contrato</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($properties as $property): ?>
                        <tr>
                            <td><?=$property->street." ".$property->number." ".$property->complement.", ".$property->district." - ".$property->state." - ".$property->city;?></td>
                            <td><?=$property->properties_cod;?></td>
                            <td><?php $i=1;foreach($property->owners() as $owner):
                                    echo $i." - ".$owner->name.'<br>';
                                    $i++;
                              endforeach;?>
                            </td>
                            <td><?=$property->contract=="free" ? "Livre" : "Em Contrato";?></td>
                            <td><?=$property->status==1 ? "<div style='color:green'>Ativo</div>" : "<div style='color:red'>Inativo</div>";?></td>
                            <td><a href="<?= url("/cadastro/imoveis/alterar/{$property->cod}"); ?>" class="btn btn-primary"><i class="fas fa-edit">Alterar</i></a></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <td>Total: <?=count($properties);?></td>
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
            toastr.success("O imóvel foi excluído com sucesso...");
        });
    </script>
<?php
endif;
if(!$properties):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum imóvel encontrado");
        });
    </script>
<?php
endif;
$v->end(); ?>
