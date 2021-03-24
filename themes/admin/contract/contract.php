<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-file"></i> Contratos</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Contratos</li>
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
                    <a href="<?= $router->route("contract.contractAdd"); ?>" class="btn btn-success">Cadastrar Contrato</a>
                </div>
                <div class="col-md-5">
                </div>
            </div><br>
            <?php
            if($contracts):?>
                <table id="example1" class="display" >
                    <thead>
                    <tr>
                        <th>Imóvel</th>
                        <th>Proprietário</th>
                        <th>Locatário</th>
                        <th>Data de Início</th>
                        <th>Aluguel</th>
                        <th>Comissão</th>
                        <th>Próximo Reajuste</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($contracts as $contract): ?>
                        <tr>
                            <td><?=$contract->getProperty()->street." ".$contract->getProperty()->number." ".$contract->getProperty()->complement.", ".$contract->getProperty()->district." - ".$contract->getProperty()->state." - ".$contract->getProperty()->city;?></td>
                            <td><?php $i=1;foreach($contract->findOwner() as $owner):
                                    echo $i." - ".$owner->name.'<br>';
                                    $i++;
                              endforeach;?>
                            </td>
                            <td><?php $i=1;foreach($contract->findLessees() as $lessees):
                                    echo $i." - ".$lessees->name.'<br>';
                                    $i++;
                              endforeach;?>
                            </td>
                            <td><?=date_fmt2($contract->start_date);?></td>
                            <td>R$<?=str_price($contract->lease_price);?></td>
                            <td><?=str_price($contract->commission);?>%</td>
                            <td><?=date_fmt_my($contract->date_next_readjustment);?></td>
                            <td><?php if($contract->contract_situation=="active"): echo "Ativo"; endif;?></td>
                            <td><a href="<?= url("/contrato/alterar/{$contract->cod}"); ?>" class="btn btn-primary">Alterar</a></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <td>Total: <?=count($contracts);?></td>
                        <td></td>
                        <td></td>
                        <td></td>
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
            toastr.success("O contrato foi encerrado com sucesso...");
        });
    </script>
<?php
endif;
if(!$contracts):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum contrato encontrado");
        });
    </script>
<?php
endif;?>
<?php $v->end(); ?>