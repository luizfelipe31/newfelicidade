<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-dollar-sign"></i> Despesas</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Despesas</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
        <!-- Default box -->
    </div>
    <!-- /.content-header -->
    <div class="card card-solid">
        <div class="card-body pb-0">
            <div class="row">
                <div class="col-md-4">
                    <label>Despesa por:</label>
                    <select class="form-control" style="width: 100%;" id="type" name="type">
                        <option selected value="property">Imóvel</option>
                        <option value="lessee">Locador</option>
                    </select>
                </div>
                <div class="col-md-5">
                </div>
            </div><br>
             <div id="property">
               <table id="example2" class="display" >
                <thead>
                    <tr>
                        <th>Imóvel</th>
                        <th>Status</th>
                        <th>Proprietário</th>
                        <th>Locatário</th>
                        <th>Lançamento</th>
                    </tr>
                </thead>
                <tbody>
                   <tr>
                    <td>Administradora de Imóvel</td>
                    <td>--</td>
                    <td>--</td>
                    <td>--</td>
                    <td align="center"><a href="#" data-toggle="modal" data-target="#modalExpense" class="fas fa-dollar-sign"></a></td>
                   </tr>
                   <?php if($properties):
                           foreach($properties as $property):
                    ?>
                   <tr>
                    <td><?=$property->street." ".$property->number." ".$property->complement.", ".$property->district." - ".$property->state." - ".$property->city;?></td>
                    <td><?=($property->contract=="free") ? "Livre" : "Alugado";?></td>
                    <td>
                        <?php $i=1;foreach($property->owners() as $owner):
                            echo $i." - ".$owner->name.'<br>';
                            $i++;
                        endforeach;?>
                    </td>
                    <td>
                        <?php $i=1;foreach($property->lesseeProperty() as $lessee):
                            echo $i." - ".$lessee->name.'<br>';
                            $i++;
                        endforeach;
                        ?>
                    </td>
                    <td align="center"><a href="#" data-toggle="modal" data-target="#modalExpense" class="fas fa-dollar-sign"></a></td>
                   </tr>
                   <?php 
                           endforeach;
                         endif; ?>
                </tbody>
               </table>
             </div>
             <div id="lessee" style="display:none;">
               <table id="example2alt" class="display" >
                <thead>
                    <tr>
                        <th>Locador</th>
                        <th>Pessoa</th>
                        <th>Lançamento</th>
                    </tr>
                </thead>
                <tbody>
                <?php if($clients):
                           foreach($clients as $client):
                    ?>
                   <tr>
                     <td><?=$client->fullName()?></td>
                     <td><?=($client->person=="natural_person")? "Física" : "Jurídica";?></td>
                     <td align="center"><a href="#"  data-toggle="modal" data-target="#modalExpense" class="fas fa-dollar-sign"></a></td>
                   </tr>
                <?php 
                           endforeach;
                        endif; ?>   
                </tbody>
               </table>
             </div>
        </div><!-- /.card-body pb-0 -->
    </div><!-- /.card card-solid -->

</div><!-- /.content-wrapper-->

    <!--modal Expense-->
    <div class="modal fade" id="modalExpense" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="expense">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Lançar Despesa</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
               <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Forma de Pagamento:</label>
                            <select class="form-control" style="width: 100%;" name="paymento_form" id="paymento_form" required>
                                <option value="">--Selecione--</option>
                                <option value="billet">Boleto</option>                                         
                                <option value="check">Cheque</option>
                                <option value="bank_deposit">Depósito Bancário</option>
                                <option value="money">Dinheiro</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Conta Bancária:</label>
                            <select class="form-control" style="width: 100%;" required name="bank_account" id="bank_account">
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
                            <select class="form-control" style="width: 100%;" name="wallet" required>
                                <option value="">--Selecione--</option>
                                <option value="<?=$main_wallet->id?>"><?=$main_wallet->description?></option>                                         
                                <?php foreach ($wallets as $wallet): ?>
                                        <option value="<?=$wallet->id?>"><?=$wallet->description?></option>
                                <?php endforeach; ?>                                   
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Categoria:</label>
                            <select class="form-control" style="width: 100%;" required name="bank_account" id="bank_account">
                                <option value="">--Selecione--</option>
                                    <?php foreach ($categories as $category):?>
                                        <option value="<?=$category->id?>"><?=$category->description?></option>
                                    <?php endforeach;?>                           
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Data de Vencimento:</label>
                            <input type="text" class="form-control mask-date" name="due_date" placeholder="dd/mm/yyyy" required/>
                        </div>
                        <div class="col-md-6">
                            <label>Data de Referência:</label>
                            <input type="text" class="form-control mask-date2" name="reference_date" placeholder="mm/yyyy" required/>
                        </div>
                        <div class="col-md-12">
                            <label>Valor da Despesa:</label>
                            <input class="form-control mask-money" type="text" name="value" id="value" required />
                        </div>
                        <div class="col-md-12">
                            <label>Observação:</label>
                            <textarea class="form-control" name="note"></textarea>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col-md-4">
                        </div>
                        <div class="col-sm-8">
                            <!-- checkbox -->
                            <div class="form-group clearfix">
                                <label>Única: </label>
                                <div class="icheck-success d-inline">
                                    <input type="checkbox" name="expense_type" checked id="checkboxSuccess1">
                                    <label for="checkboxSuccess1">
                                    </label>
                                </div>
                                <label>Fixa: </label>
                                <div class="icheck-success d-inline">
                                    <input type="checkbox" name="expense_type"  id="checkboxSuccess2">
                                    <label for="checkboxSuccess2">
                                    </label>
                                </div>
                                <label>Parcelado: </label>
                                <div class="icheck-success d-inline">
                                    <input type="checkbox" name="expense_type"  id="checkboxSuccess3">
                                    <label for="checkboxSuccess3">
                                    </label>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="row" id="div_installments" style="display:none;">
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-4">
                            <input class="form-control" type="number" name="installments" min="1"  id="installments" value="1" />
                        </div>
                        <div class="col-md-4">
                        </div>
                    </div><br>
                    <div class="row">
                          <button class="btn btn-success btn-lg btn-block"><i class="fas fa-edit"> Cadastrar</i></button>
                    </div>

                </div>
            </div>
        </div>
    </div>

<?php $v->start("scripts");  ?>
<script src="<?= url("/shared/scripts/expose.js"); ?>"></script>
<?php $v->end(); ?>