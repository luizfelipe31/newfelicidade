<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-home"></i> Cadastrar Imóvel</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item"><a href="<?= $router->route("register.property"); ?>">Imóveis</a></li>
                        <li class="breadcrumb-item active">Cadastrar Imóvel</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form action="<?= $router->route("register.propertyAdd"); ?>" enctype="multipart/form-data" method="post">
                <?= csrf_input(); ?>
                <input type="hidden" name="action" value="create"/>
                <div class="row mt-4 card">
                    <nav class="w-100">
                        <div class="nav nav-tabs" id="product-tab" role="tablist">
                            <a class="nav-item nav-link active" id="registration-tab" data-toggle="tab" href="#registration" role="tab" aria-controls="ragistration" aria-selected="true">Dados Principais</a>
                            <a class="nav-item nav-link" id="features-tab" data-toggle="tab" href="#features" role="tab" aria-controls="features" aria-selected="true">Características</a>
                            <a class="nav-item nav-link" id="owner-tab" data-toggle="tab" href="#owner" role="tab" aria-controls="owner" aria-selected="false">Proprietário</a>
                            <a class="nav-item nav-link" id="image-tab" data-toggle="tab" href="#image" role="tab" aria-controls="image" aria-selected="false">Imagem</a>
                        </div>
                    </nav>
                    <div class="tab-content p-3" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="registration" role="tabpanel" aria-labelledby="registration-tab">
                          <div class="row">
                            <div class="col-md-6">
                                <label>Código do Imóvel:<i class="far fa-question-circle" style="cursor:pointer" data-toggle="modal" data-target="#modalPropertyCod"></i></label>
                                <input type="text" class="form-control" name="property_cod" placeholder="Código de identificação do imóvel(Não obrigatório)" >
                            </div>
                            <div class="col-md-6">
                              <label>Categoria:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalCategory"></i></label>
                              <select class="form-control select2bs4" style="width: 100%;" name="category">
                                  <option value="without information">Sem Informação</option>
                                  <option value="commercial">Comercial/Industrial</option>
                                  <option value="residential">Imóvel Residencial</option>
                                  <?php  if(!empty($categories)): ?>
                                  <!--optgroup label="Categorias Cadastradas"-->
                                    <?php  foreach($categories as $category):?>
                                          <option value="<?=$category->id?>"><?=$category->description?></option>
                                      <?php   endforeach;
                                  endif;?>
                                  <!--/optgroup-->
                              </select>
                            </div>
                            <div class="col-md-6">
                              <label>Tipo de Imóvel:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalTypeProperty"></i></label>
                              <select class="form-control select2bs4" style="width: 100%;" name="type">
                                  <option value="without information">Sem Informação</option>
                                  <option value="apartment">Apartamento</option>
                                  <option value="house">Casa</option>
                                  <option value="commercial room">Sala Comercial</option>
                                  <?php  if(!empty($type_properties)): ?>
                                      <!--optgroup label="Categorias Cadastradas"-->
                                      <?php  foreach($type_properties as $type_property):?>
                                          <option value="<?=$type_property->id?>"><?=$type_property->description?></option>
                                      <?php   endforeach;
                                  endif;?>
                                  <!--/optgroup-->
                              </select>
                            </div>
                            <div class="col-md-6">
                              <label>Corretor Responsável:</label>
                              <select class="form-control select2bs4" style="width: 100%;" name="realtor">
                                  <option value="without information">Sem Corretor</option>
                                  <?php  if(!empty($realtors)):
                                      foreach($realtors as $realtor):?>
                                          <option value="<?=$realtor->id?>"><?=$realtor->fullName()?></option>
                                      <?php   endforeach;
                                  endif;?>
                              </select>
                            </div>
                            <div class="col-md-6">
                              <label>Valor da Locação:</label>
                              <input class="form-control mask-money" type="text" name="lease_price" placeholder="0,00" />
                            </div>
                            <div class="col-md-6">
                              <label>Prazo da locação:</label>
                              <select class="form-control select2bs4" style="width: 100%;" name="lease_term">
                                  <option value="without information">Sem Informação</option>
                                  <option value="06">06 Meses</option>
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
                              <label>Tipo de Reajuste:</label>
                              <select class="form-control" style="width: 100%;" name="readjustment_type">
                                  <option value="IPCA">IPCA</option>
                                  <option value="IGPM">IGPM</option>
                              </select>
                            </div>
                            <div class="col-md-6">
                              <label>Comissão:</label>
                              <input class="form-control mask-percent" type="text" name="commission" placeholder="Comissão %" />
                            </div>
                          </div>
                          </br>
                            <div align="center"><h3>ENDEREÇO</h3></div>
                          </br>
                          <div class="row">
                            <div class="col-md-4">
                              <label>CEP:</label>
                              <input class="form-control mask-cep" type="text" name="zipcode" id="zipcode" placeholder="Digite o CEP" />
                            </div>
                            <div class="col-md-8">
                              <label>Logradouro:</label>
                              <input class="form-control" type="text" name="street" id="street" placeholder="Logradouro" />
                            </div>
                            <div class="col-md-4">
                              <label>Número:</label>
                              <input class="form-control" type="text" name="number" placeholder="Número" />
                            </div>
                            <div class="col-md-8">
                              <label>Complemento:</label>
                              <input class="form-control" type="text" name="complement" placeholder="Complemento" />
                            </div>
                            <div class="col-md-12">
                              <label>Bairro:</label>
                              <input class="form-control" type="text" name="district" id="district" placeholder="Bairro" />
                            </div>
                            <div class="col-md-6">
                              <label>Estado:</label>
                              <input class="form-control" type="text" name="state" id="state" placeholder="Estado" />
                            </div>
                            <div class="col-md-6">
                              <label>Cidade:</label>
                              <input class="form-control" type="text" name="city" id="city" placeholder="Cidade" />
                            </div>
                          </div>
                        </div>
                        <!--features-->
                        <div class="tab-pane fade" id="features" role="tabpanel" aria-labelledby="features-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Área Total m²:</label>
                                    <input class="form-control mask-money" type="text" name="total_area" placeholder="Quantidade em m²" />
                                </div>
                                <div class="col-md-6">
                                    <label>Área Útil m²:</label>
                                    <input class="form-control mask-money" type="text" name="useful_area" placeholder="Quantidade em m²" />
                                </div>
                                <div class="col-md-6">
                                    <label>Salas:</label>
                                    <input class="form-control txt_numero" type="text" name="living_room" placeholder="Quantidade de Salas" />
                                </div>
                                <div class="col-md-6">
                                    <label>Quartos:</label>
                                    <input class="form-control txt_numero" type="text" name="bedroom" placeholder="Quantidade de Quartos" />
                                </div>
                                <div class="col-md-6">
                                    <label>Banheiros:</label>
                                    <input class="form-control txt_numero" type="text" name="bathroom" placeholder="Quantidade de Banheiros" />
                                </div>
                                <div class="col-md-6">
                                    <label>Suítes:</label>
                                    <input class="form-control txt_numero" type="text" name="suites" placeholder="Quantidade de Suítes" />
                                </div>
                                <div class="col-md-6">
                                    <label>Garagem:</label>
                                    <input class="form-control txt_numero" type="text" name="garage" placeholder="Quantidade de Vagas na garagem" />
                                </div>
                                <div class="col-md-6">
                                    <label>Dependência de Empregada:</label>
                                    <input class="form-control txt_numero" type="text" name="maid_dependence" placeholder="Quantidade de dependencia de empregada" />
                                </div>
                                <div class="col-md-6">
                                    <label>Copa/Cozinha:</label>
                                    <input class="form-control txt_numero" type="text" name="kitchen" placeholder="Quantidade de Copa/Cozinha" />
                                </div>
                                <div class="col-md-6">
                                    <label>Piscina:</label>
                                    <select class="form-control" style="width: 100%;" name="pool">
                                        <option value="yes">Sim</option>
                                        <option selected value="no">Não</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Churrasqueira:</label>
                                    <select class="form-control" style="width: 100%;" name="grill">
                                        <option value="yes">Sim</option>
                                        <option selected value="no">Não</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Biblioteca:</label>
                                    <select class="form-control" style="width: 100%;" name="library">
                                        <option value="yes">Sim</option>
                                        <option selected value="no">Não</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Escritório:</label>
                                    <select class="form-control" style="width: 100%;" name="office">
                                        <option value="yes">Sim</option>
                                        <option selected value="no">Não</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Mobiliado:</label>
                                    <select class="form-control" style="width: 100%;" name="furnished">
                                        <option value="yes">Sim</option>
                                        <option selected value="no">Não</option>
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <label>Descrição do Imóvel:</label>
                                    <textarea class="form-control" name="description"></textarea>
                                </div>
                            </div>
                        </div>
                        <!--owner-->
                        <div class="tab-pane fade" id="owner" role="tabpanel" aria-labelledby="owner-tab">
                         <div class="row">
                             <div class="col-md-3">
                                 <label>Locador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="lessor">
                                     <option value="">--Selecione--</option>
                                     <?php  if(!empty($lessors)):
                                         foreach($lessors as $lessor):?>
                                             <option value="<?=$lessor->id?>"><?=$lessor->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Beneficiário:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="beneficiary">
                                     <option value="0">Sem Beneficiário</option>
                                     <?php  if(!empty($beneficiaries)):
                                         foreach($beneficiaries as $beneficiary):?>
                                             <option value="<?=$beneficiary->id?>"><?=$beneficiary->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Procurador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="procurator">
                                     <option value="0">Sem Procurador</option>
                                     <?php  if(!empty($procurators)):
                                         foreach($procurators as $procurator):?>
                                             <option value="<?=$procurator->id?>"><?=$procurator->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Participação %:</label>
                                 <input class="form-control mask-percent" type="text" name="lessor_percent" placeholder="Participação %" />
                             </div>
                             <div class="col-md-3">
                                 <label>Locador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="lessor2">
                                     <option value="">--Selecione--</option>
                                     <?php  if(!empty($lessors)):
                                         foreach($lessors as $lessor):?>
                                             <option value="<?=$lessor->id?>"><?=$lessor->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Beneficiário:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="beneficiary2">
                                     <option value="0">Sem Beneficiário</option>
                                     <?php  if(!empty($beneficiaries)):
                                         foreach($beneficiaries as $beneficiary):?>
                                             <option value="<?=$beneficiary->id?>"><?=$beneficiary->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Procurador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="procurator2">
                                     <option value="0">Sem Procurador</option>
                                     <?php  if(!empty($procurators)):
                                         foreach($procurators as $procurator):?>
                                             <option value="<?=$procurator->id?>"><?=$procurator->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Participação %:</label>
                                 <input class="form-control mask-percent" type="text" name="lessor_percent2" placeholder="Participação %" />
                             </div>
                             <div class="col-md-3">
                                 <label>Locador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="lessor3">
                                     <option value="">--Selecione--</option>
                                     <?php  if(!empty($lessors)):
                                         foreach($lessors as $lessor):?>
                                             <option value="<?=$lessor->id?>"><?=$lessor->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Beneficiário:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="beneficiary3">
                                     <option value="0">Sem Beneficiário</option>
                                     <?php  if(!empty($beneficiaries)):
                                         foreach($beneficiaries as $beneficiary):?>
                                             <option value="<?=$beneficiary->id?>"><?=$beneficiary->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Procurador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="procurator3">
                                     <option value="0">Sem Procurador</option>
                                     <?php  if(!empty($procurators)):
                                         foreach($procurators as $procurator):?>
                                             <option value="<?=$procurator->id?>"><?=$procurator->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Participação %:</label>
                                 <input class="form-control mask-percent" type="text" name="lessor_percent3" placeholder="Participação %" />
                             </div>
                             <div class="col-md-3">
                                 <label>Locador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="lessor4">
                                     <option value="">--Selecione--</option>
                                     <?php  if(!empty($lessors)):
                                         foreach($lessors as $lessor):?>
                                             <option value="<?=$lessor->id?>"><?=$lessor->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Beneficiário:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="beneficiary4">
                                     <option value="0">Sem Beneficiário</option>
                                     <?php  if(!empty($beneficiaries)):
                                         foreach($beneficiaries as $beneficiary):?>
                                             <option value="<?=$beneficiary->id?>"><?=$beneficiary->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Procurador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="procurator4">
                                     <option value="0">Sem Procurador</option>
                                     <?php  if(!empty($procurators)):
                                         foreach($procurators as $procurator):?>
                                             <option value="<?=$procurator->id?>"><?=$procurator->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Participação %:</label>
                                 <input class="form-control mask-percent" type="text" name="lessor_percent4" placeholder="Participação %" />
                             </div>
                             <div class="col-md-3">
                                 <label>Locador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="lessor5">
                                     <option value="">--Selecione--</option>
                                     <?php  if(!empty($lessors)):
                                         foreach($lessors as $lessor):?>
                                             <option value="<?=$lessor->id?>"><?=$lessor->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Beneficiário:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="beneficiary5">
                                     <option value="0">Sem Beneficiário</option>
                                     <?php  if(!empty($beneficiaries)):
                                         foreach($beneficiaries as $beneficiary):?>
                                             <option value="<?=$beneficiary->id?>"><?=$beneficiary->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Procurador:</label>
                                 <select class="form-control select2bs4" style="width: 100%;" name="procurator5">
                                     <option value="0">Sem Procurador</option>
                                     <?php  if(!empty($procurators)):
                                         foreach($procurators as $procurator):?>
                                             <option value="<?=$procurator->id?>"><?=$procurator->name?></option>
                                         <?php   endforeach;
                                     endif;?>
                                 </select>
                             </div>
                             <div class="col-md-3">
                                 <label>Participação %:</label>
                                 <input class="form-control mask-percent" type="text" name="lessor_percent5" placeholder="Participação %" />
                             </div>
                         </div>
                        </div>
                        <!--image-->
                        <div class="tab-pane fade" id="image" role="tabpanel" aria-labelledby="image-tab">
                          <div class="row">
                              <div class="col-md-6">
                                  <label>Foto 1:</label>
                                  <input type="file" class="form-control" name="photo1" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 2:</label>
                                  <input type="file" class="form-control" name="photo2" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 3:</label>
                                  <input type="file" class="form-control" name="photo3" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 4:</label>
                                  <input type="file" class="form-control" name="photo4" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 5:</label>
                                  <input type="file" class="form-control" name="photo5" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 6:</label>
                                  <input type="file" class="form-control" name="photo6" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 7:</label>
                                  <input type="file" class="form-control" name="photo7" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 8:</label>
                                  <input type="file" class="form-control" name="photo8" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 9:</label>
                                  <input type="file" class="form-control" name="photo9" >
                              </div>
                              <div class="col-md-6">
                                  <label>Foto 10:</label>
                                  <input type="file" class="form-control" name="photo10" >
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

    <!--modal property_cod-->
    <div class="modal fade" id="modalPropertyCod" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Código do Imóvel</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php if($properties):?>
                        <table id="example4" class="display" >
                            <thead>
                            <tr>
                                <th>Imóvel</th>
                                <th>Código do imóvel</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach($properties as $property):?>
                                <tr>
                                    <td><?=$property->street." ".$property->number." ".$property->complement." ,".$property->district.", ".$property->state.", ".$property->city;?></td>
                                    <td><?=$property->properties_cod;?></td>
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
                        <form class="ajax_form" action="<?= $router->route("auxiliar.categoryAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="category" placeholder="Categoria:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs9">
                            <?php if(!empty($categories)):
                                foreach($categories as $category):
                                    $v->insert("register/fragments/property_category",["category" => $category]);
                                endforeach;
                            endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>

    <!--modal type_property-->
    <div class="modal fade" id="modalTypeProperty" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="typeProperty">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tipo de Imóvel</h5>
                    <button type="button" class="close" id="close_type_property" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.type_propertyAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="type_property" placeholder="Tipo de Imóvel:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs10">
                            <?php if(!empty($type_properties)):
                                foreach($type_properties as $type_property):
                                    $v->insert("register/fragments/type_property",["type_property" => $type_property]);
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
            toastr.success("Imóvel cadastrado com sucesso!");
        });
    </script>
<?php
endif;
?>
    <script src="<?= url("/shared/scripts/property.js"); ?>"></script>
<?php $v->end(); ?>