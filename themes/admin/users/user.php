<?php $v->layout("_admin"); ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0"><i class="fas fa-user"></i> Cadastrar Usuário</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="<?= $router->route("users.home"); ?>">Usuários</a></li>
                            <li class="breadcrumb-item active">Cadastrar Usuário</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="card">
                    <form action="<?= $router->route("users.userPost"); ?>" enctype="multipart/form-data" method="post">
                        <div class="card-body">
                            <input type="hidden" name="action" value="create"/>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>*Nome:</label>
                                    <input type="text" class="form-control" name="first_name" placeholder="Primeiro nome" required>
                                </div>
                                <div class="col-md-6">
                                    <label>*Sobrenome:</label>
                                    <input type="text" class="form-control" name="last_name" placeholder="Último nome"  required>
                                </div>
                                <div class="col-md-6">
                                    <label>Genero:</label>
                                    <select class="form-control select2bs4" style="width: 100%;" name="genre">
                                        <option value="male">Masculino</option>
                                        <option value="female">Feminino</option>
                                        <option value="other">Outros</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Foto:(600x600px)</label>
                                    <input type="file" class="form-control" name="photo" >
                                </div>
                                <div class="col-md-6">
                                    <label>Nascimento:</label>
                                    <input type="text" class="form-control mask-date" name="datebirth" placeholder="dd/mm/yyyy"/>
                                </div>
                                <div class="col-md-6">
                                    <label>Documento:</label>
                                    <input class="form-control mask-doc" type="text" name="document" placeholder="CPF  do usuário"/>
                                </div>
                                <div class="col-md-6">
                                    <label>*E-mail:</label>
                                    <input class="form-control" type="email" name="email" placeholder="Melhor e-mail" required/>
                                </div>
                                <div class="col-md-6">
                                    <label>*Senha:</label>
                                    <input class="form-control" type="password" name="password" placeholder="Senha de acesso" required/>
                                </div>
                                <div class="col-md-6">
                                    <label>Nível de Acesso:</label>
                                    <select class="form-control" style="width: 100%;" name="level" required>
                                        <?php foreach ($level as $levels): ?>
                                            <option value="<?= $levels->id ?>"><?= str_studly_case($levels->description) ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>*Status:</label>
                                    <select class="form-control" style="width: 100%;" name="status" required>
                                        <option value="1">Ativo</option>
                                        <option value="3">Bloqueado</option>
                                    </select>
                                </div><br><br><br><br>
                                <div class="col-md-12">
                                    <!-- checkbox -->
                                    <div class="form-group clearfix">
                                        <label>Corretor: </label>
                                        <div class="icheck-success d-inline">
                                            <input type="checkbox" name="ch_realtor" id="checkboxSuccess1">
                                            <label for="checkboxSuccess1">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div><!-- /.card-body -->
                        <div class="card-footer">
                            <button class="btn btn-success"><i class="fas fa-edit"> Criar Usuário</i></button>
                        </div><!-- /.card-footer -->
                    </form><!-- /.form -->
                </div><!-- /.card -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
<?php $v->start("scripts");
if(!empty(flash())):
    ?>
    <script>
        $(function () {
            toastr.success("Usuário cadastrado com sucesso!");
        });
    </script>
<?php
endif;
$v->end(); ?>