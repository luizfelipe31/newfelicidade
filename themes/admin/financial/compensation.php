<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-dollar-sign"></i> Compensação</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Compensação</li>
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
                <form action="<?= $router->route("invoice.compensationSearch"); ?>" method="post">
                    <input type="hidden" name="action" id="action" value="search"/>
                    <div class="row">
                       <label>Vencimento:</label>
                       <div class="col-md-2">
                         <input type="text" class="form-control mask-date" name="date_start" value="<?=date_fmt2($date_start)?>" placeholder="dd/mm/yyyy"/>
                       </div> a
                       <div class="col-md-2">
                        <input type="text" class="form-control mask-date" name="date_end" value="<?=date_fmt2($date_end)?>" placeholder="dd/mm/yyyy"/>
                       </div>
                       <label>Operação:</label>
                       <div class="col-md-2">
                            <select class="form-control" style="width: 100%;" name="operation">
                                <option <?php if($operation=="both"): echo"selected"; endif;?> value="both">Crédito e Débito</option>
                                <option <?php if($operation=="1"): echo"selected"; endif;?> value="1">Crédito</option>
                                <option <?php if($operation=="2"): echo"selected"; endif;?> value="2">Débito</option>
                            </select>
                       </div>
                       <label>Por:</label>
                       <div class="col-md-2">
                            <select class="form-control" style="width: 100%;" name="type">
                                <option <?php if($type=="all"): echo"selected"; endif;?> value="all">Todos</option>
                                <option <?php if($type=="adm"): echo"selected"; endif;?> value="adm">Administradora de Imóvel</option>
                                <option <?php if($type=="property"): echo"selected"; endif;?> value="property">Imóvel</option>
                                <option <?php if($type=="lessor"): echo"selected"; endif;?> value="lessor">Locador</option>
                            </select>
                       </div>
                       <button class="btn btn-primary"><i class="fas fa-search"> Pesquisar</i></button>
                    </div>
                </form>
            </div><!-- /.tab-content p-3-->
        </div><!-- /.row mt-4 card-->

           <div class="row">
                <div class="col-12">
                   <div class="card">
                        <?php if ($invoices): ?> 
                            <div class="card-header">
                              <h3 class="card-title">Lista de Lançamento no período: <b><?= date_fmt2($date_start)." a ".date_fmt2($date_end);?></b></h3>
                            </div>
                            <!-- /.card-header -->
                            <br>
                            <div class="card-body table-responsive p-0">
                                <table id="example1alt" class="display">
                                    <thead>
                                        <tr>
                                            <th>Para</th>
                                            <th>Categoria</th>
                                            <th>Operação</th>
                                            <th>Tipo</th>
                                            <th>Forma de Pagamento</th>
                                            <th>Vencimento</th>
                                            <th>Referência</th>
                                            <th>Valor</th>
                                            <th>Alterar</th>
                                            <th>Baixa</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <?php 
                                           $incoming_total=0;
                                           $expense_total=0;
                                           $total=0;
                                           foreach($invoices as $invoice):
                                           ?>
                                        <tr>
                                            <td>
                                            <?php
                                                if($invoice->contract!=""){
                                                  echo "<b>Imóvel:</b> ".$invoice->contractDesc()->street." ".$invoice->contractDesc()->number." ".$invoice->contractDesc()->complement.", ".$invoice->contractDesc()->district." - ".$invoice->contractDesc()->state." - ".$invoice->contractDesc()->city;
                                                }else{
                                                    if($invoice->lessor==0 && $invoice->property==0){
                                                        echo "Admistradora de Imóveis";
                                                    } else { 

                                                        if($invoice->property!="" && $invoice->property!=0){
                                                        echo "<b>Imóvel:</b> ".$invoice->propertyDesc()->street." ".$invoice->propertyDesc()->number." ".$invoice->propertyDesc()->complement.", ".$invoice->propertyDesc()->district." - ".$invoice->propertyDesc()->state." - ".$invoice->propertyDesc()->city;
                                                        } 
                                                        if($invoice->lessor!="" && $invoice->lessor!=0){
                                                        echo "<b>Locador:</b> ".$invoice->clientDesc()->fullName();
                                                        }  
                                                    }
                                                }    
                                               
                                            ?>         
                                            </td>
                                            <td><?=$invoice->categoryDesc()->description;?></td>
                                            <td><?=($invoice->operation==1) ? "Crédito" : "Débito"?></td>
                                            <td><?=$invoice->typeInvoice()?></td>
                                            <td><?=$invoice->paymenteForm()?></td>
                                            <td><?=date_fmt2($invoice->due_date)?></td>
                                            <td><?=$invoice->reference_date?></td>
                                            <td><div <?=($invoice->operation==1) ? "style='color:green'" : "style='color:red'"?>><?=str_price($invoice->value)?></div></td>
                                            <td><a href="#" class="fas fa-edit invoice_expense" <?=($invoice->operation==1) ? "style='color:green'" : "style='color:red'"?>></a></td>
                                            <td><a href="#" class="fas fa-dollar-sign invoice_expense" <?=($invoice->operation==1) ? "style='color:green'" : "style='color:red'"?>></a></td>
                                        </tr>
                                      <?php 
                                            if($invoice->operation==1):
                                                $incoming_total += $invoice->value;
                                            else:
                                                $expense_total += $invoice->value;
                                            endif;  
                                       endforeach;
                                       $total = $incoming_total-$expense_total;
                                       ?>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td style="color:green">Crédito:<?=str_price($incoming_total)?></td>
                                            <td style="color:red">Débito:<?=str_price($expense_total)?></td>
                                            <td <?=($total<0) ? "style='color:red'" : "style='color:green'" ?> >Total:<?=str_price($total)?></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        <?php endif;?>
                   </div>
               </div>
            </div>
    </div><!-- /.container-fluid-->
</div><!-- /.content-wrapper-->

<?php $v->start("scripts");
if(!$invoices):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum cliente encontrado");
        });
    </script>
<?php
endif;
$v->end(); ?>