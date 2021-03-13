<?php $v->layout("_admin"); ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0"><i class="fas fa-user"></i> Cadastrar Cliente</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="<?= $router->route("register.home"); ?>">Clientes</a></li>
                            <li class="breadcrumb-item active">Cadastrar Cliente</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="<?= $router->route("register.clientsRegister"); ?>" enctype="multipart/form-data" method="post">
                    <input type="hidden" id="client_person" value="natural_person"/>
                    <?= csrf_input(); ?>
                    <div class="row mt-4 card">
                        <nav class="w-100">
                            <div class="nav nav-tabs" id="product-tab" role="tablist">
                                <a class="nav-item nav-link active" id="registration-tab" data-toggle="tab" href="#registration" role="tab" aria-controls="ragistration" aria-selected="true">Dados Cadastrais</a>
                                <a class="nav-item nav-link" id="address-tab" data-toggle="tab" href="#address" role="tab" aria-controls="address" aria-selected="true">Endereço</a>
                                <a class="nav-item nav-link" id="spouse-tab" data-toggle="tab" href="#spouse" role="tab" aria-controls="spouse" aria-selected="false">Cônjuge</a>
                                <a class="nav-item nav-link" id="partner-tab" data-toggle="tab" href="#partner" role="tab" aria-controls="partner" aria-selected="false" style="display:none">Representante da Empresa</a>
                                <a class="nav-item nav-link" id="product-rating-tab" style="display:none" data-toggle="tab" href="#product-rating" role="tab" aria-controls="product-rating" aria-selected="false">Representante da Empresa</a>
                                <a class="nav-item nav-link" id="bank-accounting-tab" data-toggle="tab" href="#bank-accounting" role="tab" aria-controls="bank-accounting" aria-selected="false">Dados Bancários</a>
                            </div>
                        </nav>
                        <div class="tab-content p-3" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="registration" role="tabpanel" aria-labelledby="registration-tab">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-sm-9">
                                        <!-- checkbox -->
                                        <div class="form-group clearfix">
                                            <label>Locador: </label>
                                            <div class="icheck-success d-inline">
                                                <input type="checkbox" name="ch_lessor" id="checkboxSuccess1">
                                                <label for="checkboxSuccess1">
                                                </label>
                                            </div>
                                            <label>Locatário: </label>
                                            <div class="icheck-success d-inline">
                                                <input type="checkbox" name="ch_lessee"  id="checkboxSuccess2">
                                                <label for="checkboxSuccess2">
                                                </label>
                                            </div>
                                            <label>Beneficiário: </label>
                                            <div class="icheck-success d-inline">
                                                <input type="checkbox" name="ch_beneficiary"  id="checkboxSuccess3">
                                                <label for="checkboxSuccess3">
                                                </label>
                                            </div>
                                            <label>Fiador: </label>
                                            <div class="icheck-success d-inline">
                                                <input type="checkbox" name="ch_surety"  id="checkboxSuccess4">
                                                <label for="checkboxSuccess4">
                                                </label>
                                            </div>
                                            <label>Procurador: </label>
                                            <div class="icheck-success d-inline">
                                                <input type="checkbox" name="ch_procurator"  id="checkboxSuccess5">
                                                <label for="checkboxSuccess5">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Pessoa:</label>
                                        <select class="form-control" style="width: 100%;" name="person" id="person">
                                            <option selected value="natural_person">Física</option>
                                            <option value="legal_person">Jurídica</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row" id="div_natural_person">
                                    <div class="col-md-6">
                                        <label>Nome:</label>
                                        <input type="text" class="form-control" name="first_name" placeholder="Primeiro nome" >
                                    </div>
                                    <div class="col-md-6">
                                        <label>Sobrenome:</label>
                                        <input type="text" class="form-control" name="last_name" placeholder="Último nome"  >
                                    </div>
                                    <div class="col-md-6">
                                        <label>Código do Cliente:<i class="far fa-question-circle" style="cursor:pointer" data-toggle="modal" data-target="#modalClientCod"></i></label>
                                        <input type="text" class="form-control" name="client_cod" placeholder="Código de identificação do cliente(Não obrigatório)" >
                                    </div>
                                    <div class="col-md-6">
                                        <label>CPF:</label>
                                        <input class="form-control mask-doc" type="text" name="document" placeholder="CPF  do cliente"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>RG:</label>
                                        <input class="form-control" type="text" name="document_secundary" placeholder="RG  do cliente" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Orgão Expedidor:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalDocumentSecundary"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" id="document_secundary_complement" name="document_secundary_complement">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($document_secundary_complements)):
                                                    foreach($document_secundary_complements as $document_secundary_complement):?>
                                                <option value="<?=$document_secundary_complement->id?>"><?=$document_secundary_complement->description?></option>
                                            <?php   endforeach;
                                                  endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Data da Expedição:</label>
                                        <input type="text" class="form-control mask-date" name="shipping_date" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Gênero:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalGenre"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="genre">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($genres)):
                                                foreach($genres as $genre):?>
                                                    <option value="<?=$genre->id?>"><?=$genre->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nascimento:</label>
                                        <input type="text" class="form-control mask-date" name="datebirth" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nacionalidade:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalNationality"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="nationality">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($nationalities)):
                                                foreach($nationalities as $nationality):?>
                                                    <option value="<?=$nationality->id?>"><?=$nationality->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Naturalidade:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalPlaceOfBirth"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="place_of_birth">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($place_of_births)):
                                                foreach($place_of_births as $place_of_birth):?>
                                                    <option value="<?=$place_of_birth->id?>"><?=$place_of_birth->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Estado Civil:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalCivilStatus"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="civil_status">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($civil_status)):
                                                foreach($civil_status as $each):?>
                                                    <option value="<?=$each->id?>"><?=$each->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nome da Mãe:</label>
                                        <input type="text" class="form-control" name="mother_name" placeholder="Primeiro nome" value="Sem Informação">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nome do Pai:</label>
                                        <input type="text" class="form-control" name="father_name" placeholder="Primeiro nome" value="Sem Informação">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Profissão:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalProfession"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="profession">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($professions)):
                                                foreach($professions as $profession):?>
                                                    <option value="<?=$profession->id?>"><?=$profession->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Salário:</label>
                                        <input class="form-control mask-money" type="text" name="salary" placeholder="Salário" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Empresa:</label>
                                        <input class="form-control" type="text" name="company" placeholder="Nome da Empresa" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Outra Fonte de Renda:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalProfession"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="another_income">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($professions)):
                                                foreach($professions as $profession):?>
                                                    <option value="<?=$profession->id?>"><?=$profession->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Renda:</label>
                                        <input class="form-control mask-money" type="text" name="income" placeholder="Nome da Empresa" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Foto:(600x600px)</label>
                                        <input type="file" class="form-control" name="photo" >
                                    </div>
                                </div>
                                <div class="row" id="div_legal_person" style="display:none">
                                    <div class="col-md-12">
                                        <label>Nome da empresa:</label>
                                        <input type="text" class="form-control" name="company_name" placeholder="Nome da empresa" >
                                    </div>
                                    <div class="col-md-6">
                                        <label>Código do Cliente:<i class="far fa-question-circle" style="cursor:pointer" data-toggle="modal" data-target="#modalClientCod"></i></label>
                                        <input type="text" class="form-control" name="client_cod_company" placeholder="Código de identificação do cliente(Não obrigatório)" >
                                    </div>
                                    <div class="col-md-6">
                                        <label>CNPJ:</label>
                                        <input type="text" class="form-control mask-doc-company" name="company_document" placeholder="CNPJ" >
                                    </div>
                                    <div class="col-md-6">
                                        <label>Inscrição Municipal:</label>
                                        <input type="text" class="form-control" name="municipal_registration" placeholder="Inscrição Municipal">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Inscrição Estadual:</label>
                                        <input type="text" class="form-control" name="state_registration" placeholder="Inscrição Estadual">
                                    </div>
                                    <div class="col-md-12">
                                        <label>Foto:(600x600px)</label>
                                        <input type="file" class="form-control" name="photo_company" >
                                    </div>
                                </div>
                                </br>
                                <div align="center"><h3>CONTATO</h3></div>
                                </br>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>E-mail:</label>
                                        <input class="form-control" type="email" name="email" placeholder="Melhor e-mail"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>2º E-mail:</label>
                                        <input class="form-control" type="email" name="email_secundary" placeholder="Segundo e-mail"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Telefone:</label>
                                        <input class="form-control mask-tel" type="text" name="phone" placeholder="Telefone Fixo" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Celular:</label>
                                        <input class="form-control mask-cel" type="text" name="cel" placeholder="Celular" />
                                    </div>
                                </div>
                            </div>
                            <!--address-->
                            <div class="tab-pane fade" id="address" role="tabpanel" aria-labelledby="address-tab">
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
                            <!--spouse-->
                            <div class="tab-pane fade" id="spouse" role="tabpanel" aria-labelledby="spouse-tab">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Nome:</label>
                                        <input type="text" class="form-control" name="name_spouse" placeholder="Nome do Cônjuge">
                                    </div>
                                    <div class="col-md-6">
                                        <label>CPF:</label>
                                        <input class="form-control mask-doc" type="text" name="document_spouse" placeholder="CPF  do Cônjuge"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>RG:</label>
                                        <input class="form-control" type="text" name="document_secundary_spouse" placeholder="RG  do Cônjuge"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Orgão Expedidor:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalDocumentSecundary"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="document_secundary_complement_spouse">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($document_secundary_complements)):
                                                foreach($document_secundary_complements as $document_secundary_complement):?>
                                                    <option value="<?=$document_secundary_complement->id?>"><?=$document_secundary_complement->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Data da Expedição:</label>
                                        <input type="text" class="form-control mask-date" name="shipping_date_spouse" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Gênero:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalGenre"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="genre_spouse">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($genres)):
                                                foreach($genres as $genre):?>
                                                    <option value="<?=$genre->id?>"><?=$genre->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nascimento:</label>
                                        <input type="text" class="form-control mask-date" name="datebirth_spouse" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nacionalidade:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalNationality"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="nationality_spouse">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($nationalities)):
                                                foreach($nationalities as $nationality):?>
                                                    <option value="<?=$nationality->id?>"><?=$nationality->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Naturalidade:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalPlaceOfBirth"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="place_of_birth_spouse">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($place_of_births)):
                                                foreach($place_of_births as $place_of_birth):?>
                                                    <option value="<?=$place_of_birth->id?>"><?=$place_of_birth->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Profissão:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalProfession"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="profession_spouse">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($professions)):
                                                foreach($professions as $profession):?>
                                                    <option value="<?=$profession->id?>"><?=$profession->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>E-mail:</label>
                                        <input class="form-control" type="email" name="email_spouse" placeholder="E-mail do Cônjuge"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Telefone:</label>
                                        <input class="form-control mask-tel" type="text" name="phone_spouse" placeholder="Telefone Fixo do Cônjuge" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Celular:</label>
                                        <input class="form-control mask-cel" type="text" name="cel_spouse" placeholder="Celular do Cônjuge" />
                                    </div>
                                </div>
                            </div>
                            <!--partner-->
                            <div class="tab-pane fade" id="partner" role="tabpanel" aria-labelledby="partner-tab">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Nome:</label>
                                        <input type="text" class="form-control" name="name_partner" placeholder="Nome do Representante">
                                    </div>
                                    <div class="col-md-6">
                                        <label>CPF:</label>
                                        <input class="form-control mask-doc" type="text" name="document_partner" placeholder="CPF  do Representante"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>RG:</label>
                                        <input class="form-control" type="text" name="document_secundary_partner" placeholder="RG  do Representante"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Orgão Expedidor:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalDocumentSecundary"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="document_secundary_complement_partner">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($document_secundary_complements)):
                                                foreach($document_secundary_complements as $document_secundary_complement):?>
                                                    <option value="<?=$document_secundary_complement->id?>"><?=$document_secundary_complement->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Data da Expedição:</label>
                                        <input type="text" class="form-control mask-date" name="shipping_date_partner" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Gênero:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalGenre"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="genre_partner">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($genres)):
                                                foreach($genres as $genre):?>
                                                    <option value="<?=$genre->id?>"><?=$genre->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nascimento:</label>
                                        <input type="text" class="form-control mask-date" name="datebirth_partner" placeholder="dd/mm/yyyy"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nacionalidade:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalNationality"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="nationality_partner">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($nationalities)):
                                                foreach($nationalities as $nationality):?>
                                                    <option value="<?=$nationality->id?>"><?=$nationality->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Naturalidade:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalPlaceOfBirth"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="place_of_birth_partner">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($place_of_births)):
                                                foreach($place_of_births as $place_of_birth):?>
                                                    <option value="<?=$place_of_birth->id?>"><?=$place_of_birth->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Estado Civil:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalCivilStatus"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="civil_status_partner">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($civil_status)):
                                                foreach($civil_status as $each):?>
                                                    <option value="<?=$each->id?>"><?=$each->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>E-mail:</label>
                                        <input class="form-control" type="email" name="email_partner" placeholder="E-mail do Representante"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Telefone:</label>
                                        <input class="form-control mask-tel" type="text" name="phone_partner" placeholder="Telefone Fixo do Representante" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Celular:</label>
                                        <input class="form-control mask-cel" type="text" name="cel_partner" placeholder="Celular do Representante" />
                                    </div>
                                    </br>
                                </div>
                                </br></br:><div align="center"><h3>ENDEREÇO</h3></div></br>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>CEP:</label>
                                        <input class="form-control mask-cep" type="text" name="zipcode_partner" id="zipcode_partner" placeholder="Digite o CEP" />
                                    </div>
                                    <div class="col-md-8">
                                        <label>Logradouro:</label>
                                        <input class="form-control" type="text" name="street_partner" id="street_partner" placeholder="Logradouro" />
                                    </div>
                                    <div class="col-md-4">
                                        <label>Número:</label>
                                        <input class="form-control" type="text" name="number_partner" placeholder="Número" />
                                    </div>
                                    <div class="col-md-8">
                                        <label>Complemento:</label>
                                        <input class="form-control" type="text" name="complement_partner" placeholder="Complemento" />
                                    </div>
                                    <div class="col-md-12">
                                        <label>Bairro:</label>
                                        <input class="form-control" type="text" name="district_partner" id="district_partner" placeholder="Bairro" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Estado:</label>
                                        <input class="form-control" type="text" name="state_partner" id="state_partner" placeholder="Estado" />
                                    </div>
                                    <div class="col-md-6">
                                        <label>Cidade:</label>
                                        <input class="form-control" type="text" name="city_partner" id="city_partner" placeholder="Cidade" />
                                    </div>
                                </div>
                            </div>
                            <!--bank-->
                            <div class="tab-pane fade" id="bank-accounting" role="tabpanel" aria-labelledby="bank-accounting-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Banco:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalBank"></i></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="bank">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($banks)):
                                                foreach($banks as $bank):?>
                                                    <option value="<?=$bank->id?>"><?=$bank->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Tipo de Conta:<!--i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalTypeAccount"></i--></label>
                                        <select class="form-control select2bs4" style="width: 100%;" name="type_account">
                                            <option value="without information">Sem Informação</option>
                                            <?php  if(!empty($type_accounts)):
                                                foreach($type_accounts as $type_account):?>
                                                    <option value="<?=$type_account->id?>"><?=$type_account->description?></option>
                                                <?php   endforeach;
                                            endif;?>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Agência:</label>
                                        <input type="text" class="form-control" name="agency" placeholder="Agência">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Conta:</label>
                                        <input type="text" class="form-control" name="number_account" placeholder="Conta">
                                    </div>
                                    <div class="col-md-12">
                                        <label>Pix:</label>
                                        <input type="text" class="form-control" name="pix" placeholder="Pix">
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

    <!--modal client_cod-->
    <div class="modal fade" id="modalClientCod" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Código do Clientes</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php if($clients):?>
                        <table id="example4" class="display" >
                            <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Código do cliente</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach($clients as $client):?>
                                <tr>
                                    <td><?=$client->fullName();?></td>
                                    <td><?=$client->client_cod;?></td>
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

    <!--modal document_secundary_complements-->
    <div class="modal fade" id="modalDocumentSecundary" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Orgão Expedidor</h5>
                    <button type="button" class="close" id="close_document" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.documentAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="document_secundary_complement" placeholder="Orgão Expedidor:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs">
                            <?php if(!empty($document_secundary_complements)):
                                foreach($document_secundary_complements as $document_secundary_complement):
                                   $v->insert("register/fragments/document_secundary_complement",["document_secundary_complement" => $document_secundary_complement]);
                                endforeach;
                             endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>

    <!--modal genre-->
    <div class="modal fade" id="modalGenre" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="genre">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Gênero</h5>
                    <button type="button" class="close" id="close_genre" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.genreAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="genre" placeholder="Gênero:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs2">
                            <?php if(!empty($genres)):
                                foreach($genres as $genre):
                                    $v->insert("register/fragments/genre",["genre" => $genre]);
                                endforeach;
                            endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>

    <!--modal nationality-->
    <div class="modal fade" id="modalNationality" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="nationality">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Nacionalidade</h5>
                    <button type="button" class="close" id="close_nationality" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.nationalityAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="nationality" placeholder="Nacionalidade:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs3">
                            <?php if(!empty($nationalities)):
                                foreach($nationalities as $nationality):
                                    $v->insert("register/fragments/nationality",["nationality" => $nationality]);
                                endforeach;
                            endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>


    <!--modal place_of_birth-->
    <div class="modal fade" id="modalPlaceOfBirth" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="place_of_birth">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Naturalidade</h5>
                    <button type="button" class="close" id="close_place_of_birth" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.place_of_birthAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="place_of_birth" placeholder="Naturalidade:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs4">
                            <?php if(!empty($place_of_births)):
                                foreach($place_of_births as $place_of_birth):
                                    $v->insert("register/fragments/place_of_birth",["place_of_birth" => $place_of_birth]);
                                endforeach;
                            endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>

    <!--modal civil_status-->
    <div class="modal fade" id="modalCivilStatus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="civil_status">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Estado Civil</h5>
                    <button type="button" class="close" id="close_civil_status" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.civil_statusAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="civil_status" placeholder="Estado Civil:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs5">
                            <?php if(!empty($civil_status)):
                                foreach($civil_status as $each):
                                    $v->insert("register/fragments/civil_status",["each" => $each]);
                                endforeach;
                            endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>


    <!--modal profession-->
    <div class="modal fade" id="modalProfession" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="profession">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Profissão</h5>
                    <button type="button" class="close" id="close_profession" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.professionAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="profession" placeholder="Profissão:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs6">
                            <?php if(!empty($professions)):
                                foreach($professions as $profession):
                                    $v->insert("register/fragments/profession",["profession" => $profession]);
                                endforeach;
                            endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>


    <!--modal bank-->
    <div class="modal fade" id="modalBank" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="bank">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Banco</h5>
                    <button type="button" class="close" id="close_bank" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.bankAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="bank" placeholder="Banco:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs7">
                            <?php if(!empty($banks)):
                                foreach($banks as $bank):
                                    $v->insert("register/fragments/bank",["bank" => $bank]);
                                endforeach;
                            endif;?>
                        </section>
                    </main>

                </div>

            </div>
        </div>
    </div>


    <!--modal type_account-->
    <div class="modal fade" id="modalTypeAccount" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="type_account">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tipo de Conta</h5>
                    <button type="button" class="close" id="close_type_account" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="create">
                        <form class="ajax_form" action="<?= $router->route("auxiliar.type_accountAdd"); ?>" name="gallery" method="post"
                              enctype="multipart/form-data">

                            <label>
                                <input type="text" class="form-control" name="type_account" placeholder="Tipo de Conta:"/>
                            </label>
                            <label>
                                <button class="btn btn-success"><i class="fas fa-edit"> Adicionar Novo</i></button>
                            </label>
                        </form>
                    </div>
                    <main class="content">
                        <section class="auxs8">
                            <?php if(!empty($type_accounts)):
                                foreach($type_accounts as $type_account):
                                    $v->insert("register/fragments/type_account",["type_account" => $type_account]);
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
            toastr.success("Cliente cadastrado com sucesso!");
        });
    </script>
<?php
endif;
?>
    <script src="<?= url("/shared/scripts/client.js"); ?>"></script>
<?php $v->end(); ?>