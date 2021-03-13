<?php $v->layout("_admin"); ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0"><i class="fas fa-file"></i> Cadastrar Contrato</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="<?= $router->route("contract.home"); ?>">Contratos</a></li>
                            <li class="breadcrumb-item active">Cadastrar Contrato</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="<?= $router->route("contract.contractAdd"); ?>" enctype="multipart/form-data" method="post">
                    <input type="hidden" name="action" value="create"/>
                    <input type="hidden" name="procurator_status" id="procurator_status"/>
                    <?= csrf_input(); ?>
                    <div class="row mt-4 card">
                        <nav class="w-100">
                            <div class="nav nav-tabs" id="product-tab" role="tablist">
                                <a class="nav-item nav-link active" id="registration-tab" data-toggle="tab" href="#registration" role="tab" aria-controls="ragistration" aria-selected="true">Imóvel</a>
                                <a class="nav-item nav-link" id="tenancy-tab" data-toggle="tab" href="#tenancy" role="tab" aria-controls="tenancy" aria-selected="true">Locação</a>
                                <a class="nav-item nav-link" id="proxy-tab" data-toggle="tab" href="#proxy" role="tab" aria-controls="proxy" aria-selected="false" style="display:none">Procuração</a>
                                <a class="nav-item nav-link" id="assurance-tab" data-toggle="tab" href="#assurance" role="tab" aria-controls="assurance" aria-selected="false">Garantia</a>
                                <a class="nav-item nav-link" id="terms-tab" data-toggle="tab" href="#terms" role="tab" aria-controls="terms" aria-selected="false" >Termos/Upload</a>
                                <a class="nav-item nav-link" id="terms-tab" data-toggle="tab" href="#note" role="tab" aria-controls="note" aria-selected="false" >Observação</a>
                            </div>
                        </nav>
                        <div class="tab-content p-3" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="registration" role="tabpanel" aria-labelledby="registration-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Imóvel:</label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="property" id="property" required>
                                            <option value="">--Selecione--</option>
                                            <?php  if(!empty($properties)):
                                                foreach($properties as $property):?>
                                                    <option value="<?=$property->id?>"><?=$property->fullNameComplete();?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                    </div>
                                    <div class="col-md-4">
                                        <label>Locadores:</label>
                                        <div id="value_lessor"></div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label>Locatários:</label>
                                            <select class="duallistbox" multiple="multiple" name="lessee[]" required>
                                                <?php  if(!empty($clients)):
                                                    foreach($clients as $client):?>
                                                        <option value="<?=$client->id?>"><?=$client->name;?></option>
                                                    <?php   endforeach;
                                                endif;?>
                                            </select>
                                        </div>
                                        <!-- /.form-group -->
                                    </div>
                                    <div class="col-md-6">
                                        <label>Corretor Responsável:</label>
                                        <select class="form-control select2" style="width: 100%;" name="realtor" id="realtor">
                                            <option value="">Sem Corretor</option>
                                            <?php  if(!empty($realtors)):
                                                foreach($realtors as $realtor):?>
                                                    <option value="<?=$realtor->id?>"><?=$realtor->fullName()?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                       <label>Código do Contrato:<i class="far fa-question-circle" style="cursor:pointer" data-toggle="modal" data-target="#modalContractCod"></i></label>
                                       <input type="text" class="form-control" name="contract_cod" placeholder="Código de identificação do contrato(Não obrigatório)" >
                                   </div>
                                </div>
                            </div>
                            <!--tenancy-->
                            <div class="tab-pane fade" id="tenancy" role="tabpanel" aria-labelledby="tenancy-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Valor da Locação:</label>
                                        <input class="form-control mask-money" type="text" name="lease_price" id="lease_price" placeholder="0,00" required/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Comissão %:</label>
                                        <input class="form-control mask-percent" type="text" name="commission" id="commission" placeholder="Comissão %" required />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Tipo de Reajuste:</label>
                                        <select class="form-control" style="width: 100%;" name="readjustment_type" id="readjustment_type" >
                                            <option value="IPCA">IPCA</option>
                                            <option value="IGPM">IGPM</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Prazo da locação:</label>
                                        <select class="form-control select2" style="width: 100%;" name="lease_term" id="lease_term" required>
                                            <option value="">--Selecione--</option>
                                            <option value="6">06 Meses</option>
                                            <option value="12">12 Meses</option>
                                            <option value="18">18 Meses</option>
                                            <option value="24">24 Meses</option>
                                            <option value="30">30 Meses</option>
                                            <option value="36">36 Meses</option>
                                            <option value="42">42 Meses</option>
                                            <option value="48">48 Meses</option>
                                            <option value="60">60 Meses</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Data de Início:</label>
                                        <input type="text" class="form-control mask-date" name="start_date" id="start_date" placeholder="dd/mm/yyyy" required/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Data de Fim:</label>
                                        <input type="text" class="form-control mask-date" disabled name="end_date_show" id="ending_date" placeholder="dd/mm/yyyy" required/>
                                        <input type="hidden" name="end_date" id="end_date_value" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Renovação:</label>
                                        <select class="form-control select2" style="width: 100%;" name="renovation" id="renovation">
                                            <option value="automatic">Automática</option>
                                            <option value="manual">Manual</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Dia do vencimento:</label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="due_date" required>
                                            <option value="">--Selecione--</option>
                                            <?php
                                            for($i=1;$i<=28;$i++):?>
                                                <option value='<?=$i?>'><?=$i."º dia do mês";?></option>
                                            <?php endfor; ?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Forma de Pagamento:</label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="paymento_form" required>
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
                                        <label>Data do Próximo Reajuste:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalReadjustment"></i></label>
                                        <input type="text" class="form-control mask-date2" name="date_next_readjustment" placeholder="mm/yyyy" />
                                    </div>
                                    <!--div class="col-md-6">
                                        <label>Data de Vencimento da 1ª cobrança:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalDuedate"></i></label>
                                        <input type="text" class="form-control mask-date2" name="start_date" placeholder="mm/yyyy"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Data do Último Reajuste:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalReadjustment"></i></label>
                                        <input type="text" class="form-control mask-date2" name="start_date" placeholder="mm/yyyy"/>
                                    </div-->
                                </div>
                            </div>
                            <!--proxy-->
                            <div class="tab-pane fade" id="proxy" role="tabpanel" aria-labelledby="proxy-tab">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label>Procurador:</label>
                                        <div id="value_procurator1"></div>
                                        <input type="hidden" name="procurator" id="procurator"/>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Data da Validade da Procuração:</label>
                                        <input type="text" class="form-control mask-date" name="date_procuration" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-5">
                                        <label>Upload da Procuração</label>
                                        <input type="file" class="form-control" name="upload_procuration"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                </div>
                                <div class="row" id="div_procurator2" style="display:none">
                                    <div class="col-md-3">
                                        <label>Procurador:</label>
                                        <div id="value_procurator2"></div>
                                        <input type="hidden" name="procurator2" id="procurator2"/>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Data da Validade da Procuração:</label>
                                        <input type="text" class="form-control mask-date" name="date_procuration2" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-5">
                                        <label>Upload da Procuração</label>
                                        <input type="file" class="form-control" name="upload_procuration2"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                </div>
                                <div class="row" id="div_procurator3" style="display:none">
                                    <div class="col-md-3">
                                        <label>Procurador:</label>
                                        <div id="value_procurator3"></div>
                                        <input type="hidden" name="procurator3" id="procurator3"/>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Data da Validade da Procuração:</label>
                                        <input type="text" class="form-control mask-date" name="date_procuration3" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-5">
                                        <label>Upload da Procuração</label>
                                        <input type="file" class="form-control" name="upload_procuration3"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                </div>
                                <div class="row" id="div_procurator4"  style="display:none">
                                    <div class="col-md-3">
                                        <label>Procurador:</label>
                                        <div id="value_procurator4"></div>
                                        <input type="hidden" name="procurator4" id="procurator4"/>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Data da Validade da Procuração:</label>
                                        <input type="text" class="form-control mask-date" name="date_procuration4" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-5">
                                        <label>Upload da Procuração</label>
                                        <input type="file" class="form-control" name="upload_procuration4"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                </div>
                                <div class="row" id="div_procurator5" style="display:none">
                                    <div class="col-md-3">
                                        <label>Procurador:</label>
                                        <div id="value_procurator5"></div>
                                        <input type="hidden" name="procurator5" id="procurator5"/>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Data da Validade da Procuração:</label>
                                        <input type="text" class="form-control mask-date" name="date_procuration5" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-5">
                                        <label>Upload da Procuração</label>
                                        <input type="file" class="form-control" name="upload_procuration5"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                </div>
                            </div>
                            <!--assurance-->
                            <div class="tab-pane fade" id="assurance" role="tabpanel" aria-labelledby="assurance-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Tipo de Fiança:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalGuarantee"></i></label>
                                        <select class="form-control select2" style="width: 100%;" name="guarantee" id="guarantee">
                                            <option value="">Sem Garantia</option>
                                            <option value="security_deposit">Depósito Caução</option>
                                            <option value="surety">Fiador</option>
                                            <!--option value="bank_guarantee">Fiança Bancária</option-->
                                        </select>
                                    </div>
                                </div>
                                <div id="div_surety" style="display:none"><br>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Fiador:</label>
                                            <select class="form-control select2bs4" name="surety" id="surety">
                                                <option value="">--Selecione--</option>
                                                <?php  if(!empty($sureties)):
                                                    foreach($sureties as $surety):?>
                                                        <option value="<?=$surety->id?>"><?=$surety->name;?></option>
                                                    <?php   endforeach;
                                                endif;?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div id="div_security_deposit" style="display:none"><br>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Valor do Depósito:</label>
                                            <input class="form-control mask-money" type="text" name="security_deposit" id="security_deposit" placeholder="Valor do Depósito" />
                                        </div>
                                        <div class="col-md-6">
                                            <label>Parcelado Em:</label>
                                            <input class="form-control txt_numero" type="text" name="portion_deposit" id="portion_deposit" placeholder="Parcelados Em" />
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!--terms-->
                            <div class="tab-pane fade" id="terms" role="tabpanel" aria-labelledby="terms-tab">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Termos:</label>
                                        <textarea name="terms_contract"></textarea>
                                        <script>
                                            CKEDITOR.replace( 'terms_contract' );
                                        </script>
                                    </div>
                                </div>
                                <br>
                                <div align="center"><h3>UPLOAD DE ARQUIVOS DO CONTRATO</h3></div>
                                <br>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Upload do arquivo 1</label>
                                        <input type="file" class="form-control" name="contract_upload"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Upload do arquivo 2</label>
                                        <input type="file" class="form-control" name="contract_upload2"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Upload do arquivo 3</label>
                                        <input type="file" class="form-control" name="contract_upload3"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Upload do arquivo 4</label>
                                        <input type="file" class="form-control" name="contract_upload4"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Upload do arquivo 5</label>
                                        <input type="file" class="form-control" name="contract_upload5"  accept="image/x-png,image/jpeg,application/pdf">
                                    </div>
                                </div>
                            </div>
                            <!--terms-->
                            <div class="tab-pane fade" id="note" role="tabpanel" aria-labelledby="note-tab">
                                <div class="row">
                                   <div class="col-md-12">
                                      <label>Observação:</label>
                                      <textarea class="form-control" name="note"></textarea>
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
        </section>
        <!-- /.content -->
    </div><!-- /.content-wrapper -->

    
    <!--modal contract_cod-->
    <div class="modal fade" id="modalContractCod" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Código do Contrato</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php if($contracts):?>
                        <table id="example4" class="display" >
                            <thead>
                            <tr>
                                <th>Imóvel</th>
                                <th>Proprietário(s)</th>
                                <th>Locatário(s)</th>
                                <th>Código do contrato</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach($contracts as $contract):?>
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
                                    <td><?=$contract->contract_cod?></td>
                                </tr>
                            <?php endforeach;?>
                            </tbody>
                        </table>
                    <?php else:?>
                        <div class="row" >
                            <div class="col-sm-12 fas fa-info text-danger " align="center">
                                Nenhum registro encontrado.
                            </div>
                        </div>
                    <?php endif;?>

                </div>

            </div>
        </div>
    </div>
  
    <!--modal readjustment-->
    <div class="modal fade" id="modalReadjustment" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="readjustment">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Data do Último Reajuste</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Preencha essa data para informar quando será o próximo reajuse desse contrato,
                    se deixar em branco o sistema irá entender que o próximo reajuste será
                    feito 12 meses após a data de início do contrato.
                </div>

            </div>
        </div>
    </div>

<?php $v->start("scripts");
if(!empty(flash())):
    ?>
    <script>
        $(function () {
            toastr.success("Contrato cadastrado com sucesso!");
        });
    </script>
<?php
endif;
?>
    <script src="<?= url("/shared/scripts/contract.js"); ?>"></script>
<?php $v->end(); ?>