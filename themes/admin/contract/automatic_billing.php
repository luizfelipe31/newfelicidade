<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-sync"></i> Gerar Alugueis</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Gerar Alugueis</li>
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
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($contracts as $contract): 
                            $property = $contract->getProperty()->street." ".$contract->getProperty()->number." ".$contract->getProperty()->complement.", ".$contract->getProperty()->district." - ".$contract->getProperty()->state." - ".$contract->getProperty()->city;
                        ?>
                        <tr>
                            <td><?=$property;?></td>
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
                            <td><?=str_price($contract->lease_price);?></td>
                            <td><?=str_price($contract->commission);?></td>
                            <td><a class="generate" href="#" data-cod="<?= $contract->cod; ?>" data-lease="<?= str_price($contract->lease_price); ?>" data-paymento_form="<?= $contract->paymento_form; ?>" data-due_date="<?= $contract->due_date;?>" data-property="<?=$property;?>" data-toggle="modal" data-target="#modalGenerate"><i class="fas fa-sync"></i></a></td>
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
                    </tfoot>
                </table>
            <?php endif;?>
            </div><br>
            
        </div><!-- /.card-body pb-0 -->
    </div><!-- /.card card-solid -->
</div><!-- /.content-wrapper-->

<!--modal readjustment-->
<div class="modal fade" id="modalGenerate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="readjustment">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Gerar Aluguel</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="div_propety" align="center"></div><br>
                
                <form action="<?= $router->route("contract.automaticBilling"); ?>"  method="post">
                   <input type="hidden" name="contract_cod" id="contract_cod" />
                   <input type="hidden" name="action" value="generate"/>
                   <?= csrf_input(); ?>
                   <div class="tab-content p-3" id="nav-tabContent">
                        <div class="row">
                            <div class="col-md-6">
                                <label>Aluguel:</label>
                                <input type="text" class="form-control mask-money" name="lease_price" id="lease_price" placeholder="0,00" required/>
                            </div>
                            <div class="col-md-6">
                                <label>Forma de Pagamento:</label>
                                <select class="form-control" style="width: 100%;" name="paymento_form" id="paymento_form" required>
                                    <option value="">--Selecione--</option>
                                    <option value="billet">Boleto</option>                                         
                                    <optgroup label="Recibo">
                                        <option value="check">Cheque</option>
                                        <option value="bank_deposit">Depósito Bancário</option>
                                        <option value="money">Dinheiro</option>
                                    </optgroup>
                                </select>
                            </div>
                            <div class="col-md-6">
                               <label>Dia do vencimento:</label>
                               <select class="form-control" style="width: 100%;" name="due_date" id="due_date" required>
                                   <?php
                                   for($i=1;$i<=28;$i++):?>
                                       <option value='<?=$i?>'><?=$i."º dia do mês";?></option>
                                   <?php endfor; ?>
                               </select>
                            </div>
                            <div class="col-md-6">
                                <label>Data da cobrança do primeiro aluguel:</label>
                                <input type="text" class="form-control mask-date2" name="first_charge" placeholder="mm/yyyy" required/>
                            </div>
                            <br><br><br><br>
                            <div class="col-md-12">
                             <button class="btn btn-success"><i class="fas fa-edit"> Gerar</i></button>
                            </div>
                        </div>
                   </div>
                </form>
            </div>

        </div>
    </div>
</div>

<?php $v->start("scripts");
if(!empty(flash())):
    ?>
    <script>
        $(function () {
            toastr.success("Alugueis gerados com sucesso.");
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
<script src="<?= url("/shared/scripts/contract.js"); ?>"></script>
<?php $v->end(); ?>

