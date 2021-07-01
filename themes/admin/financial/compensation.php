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
                                            <th>Carteira</th>
                                            <th>Conta Bancária</th>
                                            <th>Vencimento</th>
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
                                                  $label="<b>Imóvel:</b> ".$invoice->contractDesc()->street." ".$invoice->contractDesc()->number." ".$invoice->contractDesc()->complement.", ".$invoice->contractDesc()->district." - ".$invoice->contractDesc()->state." - ".$invoice->contractDesc()->city;
                                                  echo "<b>Imóvel:</b> ".$invoice->contractDesc()->street." ".$invoice->contractDesc()->number." ".$invoice->contractDesc()->complement.", ".$invoice->contractDesc()->district." - ".$invoice->contractDesc()->state." - ".$invoice->contractDesc()->city;
                                                }else{
                                                    if($invoice->lessor==0 && $invoice->property==0){
                                                        echo "Admistradora de Imóveis";$label="Admistradora de Imóveis";
                                                    } else { 

                                                        if($invoice->property!="" && $invoice->property!=0){
                                                        $label="<b>Imóvel:</b> ".$invoice->propertyDesc()->street." ".$invoice->propertyDesc()->number." ".$invoice->propertyDesc()->complement.", ".$invoice->propertyDesc()->district." - ".$invoice->propertyDesc()->state." - ".$invoice->propertyDesc()->city;
                                                        echo "<b>Imóvel:</b> ".$invoice->propertyDesc()->street." ".$invoice->propertyDesc()->number." ".$invoice->propertyDesc()->complement.", ".$invoice->propertyDesc()->district." - ".$invoice->propertyDesc()->state." - ".$invoice->propertyDesc()->city;
                                                        } 
                                                        if($invoice->lessor!="" && $invoice->lessor!=0){
                                                          $label="<b>Locador:</b> ".$invoice->clientDesc()->fullName();
                                                          echo "<b>Locador:</b> ".$invoice->clientDesc()->fullName();
                                                        }  
                                                    }
                                                }    
                                               
                                            ?>         
                                            </td>
                                            <td><?=$invoice->categoryDesc()->description;?></td>
                                            <td><?=($invoice->operation==1) ? "Crédito" : "Débito"?></td>
                                            <td><?=$invoice->typeInvoice()?></td>
                                            <td><?=$invoice->walltetDesc()->description?></td>
                                            <td><?=($invoice->bank_account_id==0)? "Pagamento em Dinheiro"  : " Conta ".$invoice->bankDesc()->type_account." ".$invoice->bankDesc()->bank." Ag:".$invoice->bankDesc()->agency." Conta:".$invoice->bankDesc()->number_account;?></td>
                                            <td><?=date_fmt2($invoice->due_date)?></td>
                                            <td><div <?=($invoice->operation==1) ? "style='color:green'" : "style='color:red'"?>><?=str_price($invoice->value)?></div></td>
                                            <td><a href="#" data-toggle="modal" data-target="#modalExpense" data-label="<?=$label?>" data-id="<?=$invoice->id?>" class="fas fa-edit invoice_expense" <?=($invoice->operation==1) ? "style='color:green'" : "style='color:red'"?>></a></td>
                                            <td><a href="#" data-toggle="modal" data-target="#modalCompensation" data-label="<?=$label?>" data-value="<?=str_price($invoice->value)?>" data-id="<?=$invoice->id?>" class="fas fa-dollar-sign invoice_compensation" <?=($invoice->operation==1) ? "style='color:green'" : "style='color:red'"?>></a></td>
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
    <!--modal Expense-->
    <div class="modal fade" id="modalExpense" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="expense">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Alterar Lançamento</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
               <div class="modal-body">
               <div align="center" id="label_desc"></div><br>
               <form class="ajax_form2" action="<?= $router->route("invoice.invoiceUpdate"); ?>" enctype="multipart/form-data" method="post">
               <input type="hidden" name="invoice_id" id="invoice_id_alter" />
                    <div class="row">
                        <div class="col-md-6">
                            <label>Forma de Pagamento:</label>
                            <select class="form-control" style="width: 100%;" name="payment_form" id="payment_form" required>
                                <option value="">--Selecione--</option>
                                <option value="billet">Boleto</option>                                         
                                <option value="check">Cheque</option>
                                <option value="bank_deposit">Depósito Bancário</option>
                                <option value="money">Dinheiro</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Conta Bancária:</label>
                            <select class="form-control" style="width: 100%;" name="bank_account" id="bank_account" required>
                                <option value="">--Selecione--</option>
                                <?php  if(!empty($bank_accounts)):
                                        foreach ($bank_accounts as $bank_account):?>
                                        <option value="<?=$bank_account->id?>"><?=$bank_account->fullAccount()?></option>
                                <?php   endforeach;
                                    endif;?>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Carteira:</label>
                            <select class="form-control" style="width: 100%;" name="wallet" id="wallet" required>
                                <option value="">--Selecione--</option>
                                <option value="<?=$main_wallet->id?>"><?=$main_wallet->description?></option>                                         
                                <?php foreach ($wallets as $wallet): ?>
                                        <option value="<?=$wallet->id?>"><?=$wallet->description?></option>
                                <?php endforeach; ?>                                   
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Categoria:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalCategory"></i></label>
                            <select class="form-control" style="width: 100%;" required name="category" id="category">
                                <option value="">--Selecione--</option>
                                    <?php foreach ($categories as $category):?>
                                        <option value="<?=$category->id?>"><?=$category->description?></option>
                                    <?php endforeach;?>                           
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Data de Vencimento:</label>
                            <input type="text" class="form-control mask-date" name="due_date" id="due_date" placeholder="dd/mm/yyyy" required/>
                        </div>
                        <div class="col-md-6">
                            <label>Data de Referência:</label>
                            <input type="text" class="form-control mask-date2" name="reference_date" id="reference_date" placeholder="mm/yyyy" required/>
                        </div>
                        <div class="col-md-6">
                            <label>Tipo:</label>
                            <select class="form-control" style="width: 100%;" name="type" id="type">
                                <option value="1">Crédito</option>                                         
                                <option value="2">Débito</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Valor da Despesa:</label>
                            <input class="form-control mask-money" type="text" name="value" id="value" required />
                        </div>
                        <div class="col-md-12">
                            <label>Observação:</label>
                            <textarea class="form-control" name="note" id="note"></textarea>
                        </div>
                    </div><br>
                    <div class="row">
                      <div class="col-md-1">
                      </div>
                      <div class="col-md-5">
                          <button class="btn btn-success btn-block"><i class="fas fa-edit"> Alterar</i></button>
                      </div>
                      <div class="col-md-5">
                        <button type="button" id="invoice_trash" class="btn btn-danger btn-block"
                           data-url="<?= url("/invoice/excluir"); ?>"
                           data-confirm="ATENÇÃO: Tem certeza que deseja excluir o lançamento? Essa ação não pode ser desfeita!"
                        ><i class="fas fa-trash"> Excluir</i></button>
                      </div>
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>

    <!--modal compensation-->
    <div class="modal fade" id="modalCompensation" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="compensation">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Compensação</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
               <div class="modal-body">
               <div align="center" id="label_desc_compensation"></div><br>
                 <form class="ajax_form2" action="<?= $router->route("invoice.compensationAdd"); ?>" enctype="multipart/form-data" method="post">
                    <input type="hidden" name="invoice_id" id="invoice_id" />
                    <div class="row">
                        <div class="col-md-6">
                            <label>Forma de Compensação:</label>
                            <select class="form-control" style="width: 100%;" name="compensation_form" id="compensation_form">
                                <option value="">Por pagamento</option>
                                <option value="">Sem Pagamento</option>                                         
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Data da Compensação:</label>
                            <input class="form-control mask-date" type="text" name="date_compensation" id="date_compensation" placeholder="Data da Compensação" required />
                        </div>
                        <div class="col-md-6">
                            <label>Valor Original:</label>
                            <input class="form-control mask-money" type="text" disabled name="value_current" id="value_current" />
                        </div>
                        <div class="col-md-6">
                            <label>Valor Final:</label>
                            <input class="form-control mask-money" type="text" name="value_compensation" id="value_compensation" required />
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-8">
                            <button class="btn btn-success btn-block"><i class="fas fa-edit"> Cadastrar</i></button>
                        </div>
                    </div>
                 </form>
               </div>
            </div>
        </div>
    </div>

   <!--modal category-->
   <div class="modal fade" id="modalCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="category">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Categoria</h5>
                    <button type="button" class="close" id="close_category" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                   <div class="create">
                    <form class="ajax_form" action="<?= $router->route("auxiliar.categoryInvoiceAdd"); ?>" name="gallery" method="post"
                            enctype="multipart/form-data">
                
                        <label>
                            <input type="text" class="form-control" name="category" required placeholder="Categoria:"/>
                        </label>
                        <label>
                            <select class="form-control" style="width: 100%;" required name="operation" id="operation">
                                <option value="">--Tipo da categoria--</option>
                                <option value="income">Crédito</option>
                                <option value="expense">Débito</option>
                                <option value="both">Ambos</option>                         
                            </select>
                        </label>
                        <div>
                            <div class="col-sm-12">
                                <!-- checkbox -->
                                <div class="form-group clearfix">
                                    <label>Comissionado: </label>
                                    <div class="icheck-success d-inline">
                                        <input type="checkbox" name="comission" checked id="checkboxComission">
                                        <label for="checkboxComission">
                                        </label>
                                    </div><br>
                                    <label>Extra Extrato: </label>
                                    <div class="icheck-success d-inline">
                                        <input type="checkbox" name="extra_extract"  id="checkboxExtraExtract">
                                        <label for="checkboxExtraExtract">
                                        </label>
                                    </div><br>
                                    <label>Carnê-leão: </label>
                                    <div class="icheck-success d-inline">
                                        <input type="checkbox" name="mandatory_collection"  id="checkboxMandatoryCollection">
                                        <label for="checkboxMandatoryCollection">
                                        </label>
                                    </div><br>
                                    <label>IR: </label>
                                    <div class="icheck-success d-inline">
                                        <input type="checkbox" name="income_tax"  id="checkboxIncomeTax">
                                        <label for="checkboxIncomeTax">
                                        </label>
                                    </div>
                                </div>
                            </div>                 
                        </div> <br>
                        <div align="left" >
                            <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                        </div>                       
                    </form>
                   </div>
                    <main class="content">
                        <section class="auxs12">
                            <?php 
                                if($categories_add):
                                    foreach ($categories_add as $category_add):
                                        $v->insert("register/fragments/category",["category" => $category_add]);
                                    endforeach;
                                endif;
                            ?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>
<?php $v->start("scripts"); ?>
<script src="<?= url("/shared/scripts/compensation.js"); ?>"></script>
<?php
if(!$invoices):
    ?>
    <script>
        $(function () {
            toastr.error("Nenhum registro encontrado");
        });
    </script>
<?php
endif;
$v->end(); ?>

