<?php $v->layout("_admin"); ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Usuário Alterar</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                            <li class="breadcrumb-item"><a href="<?= $router->route("users.home"); ?>">Usuários</a></li>
                            <li class="breadcrumb-item active">Usuário Alterar</li>
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
                    <form action="<?= url("/usuario/alterar/{$user->id}"); ?>" enctype="multipart/form-data" method="post">

                        <div class="card-body">
                            <input type="hidden" name="action" value="update"/>
                            <div class="row">
                                <?php if (!empty($user) && $user->showPhoto()): ?>
                                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                                        <div class="image">
                                            <img class="img-circle elevation-2" style="width: 100%; margin-top: 30px" src="<?= image($user->photo, 100, 100); ?>"/>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>*Nome:</label>
                                    <input type="text" class="form-control" name="first_name" placeholder="Primeiro nome" value="<?= $user->first_name; ?>" required>
                                </div>
                                <div class="col-md-6">
                                    <label>*Sobrenome:</label>
                                    <input type="text" class="form-control" name="last_name" placeholder="Último nome" value="<?= $user->last_name; ?>"  required>
                                </div>
                                <div class="col-md-6">
                                    <label>Genero:</label>
                                    <select class="form-control select2bs4" style="width: 100%;" name="genre">
                                        <?php
                                        $genre = $user->genre;
                                        $select = function ($value) use ($genre) {
                                            return ($genre == $value ? "selected" : "");
                                        };
                                        ?>
                                        <option <?= $select("male"); ?> value="male">Masculino</option>
                                        <option <?= $select("female"); ?> value="female">Feminino</option>
                                        <option <?= $select("other"); ?> value="other">Outros</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Foto:(600x600px)</label>
                                    <input type="file" class="form-control" name="photo" >
                                </div>
                                <div class="col-md-6">
                                    <label>Nascimento:</label>
                                    <input type="text" class="form-control mask-date" name="datebirth" <?php if(!$user->datebirth==""):?>value="<?= date_fmt($user->datebirth, "d/m/Y"); ?>" <?php endif;?> placeholder="dd/mm/yyyy"/>
                                </div>
                                <div class="col-md-6">
                                    <label>Documento:</label>
                                    <input class="form-control mask-doc" type="text" name="document"  value="<?= $user->document; ?>" placeholder="CPF  do usuário"/>
                                </div>
                                <div class="col-md-6">
                                    <label>*E-mail:</label>
                                    <input class="form-control" type="email" name="email" value="<?= $user->email; ?>" placeholder="Melhor e-mail" required/>
                                </div>
                                <div class="col-md-6">
                                    <label>Alterar Senha:</label>
                                    <input class="form-control" type="password" name="password" placeholder="Senha de acesso" />
                                </div>
                                <div class="col-md-6">
                                    <label>Nível de Acesso:</label>
                                    <select class="form-control" style="width: 100%;" name="level" required>
                                        <?php foreach ($level as $levels): ?>
                                            <option <?php
                                            if ($level == $levels->id): echo "selected";
                                            endif
                                            ?> value="<?= $levels->id ?>"><?= str_studly_case($levels->description) ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>*Status:</label>
                                    <select class="form-control" style="width: 100%;" name="status" required>
                                        <?php
                                        $status = $user->status;
                                        $select = function ($value) use ($status) {
                                            return ($status == $value ? "selected" : "");
                                        };
                                        ?>
                                        <option <?= $select("1"); ?> value="1">Ativo</option>
                                        <option <?= $select("3"); ?> value="3">Bloqueado</option>
                                    </select>
                                </div>
                                <br><br><br><br>
                                <div class="col-md-12">
                                    <!-- checkbox -->
                                    <div class="form-group clearfix">
                                        <label>Corretor: </label>
                                        <div class="icheck-success d-inline">
                                            <input type="checkbox" name="ch_realtor" <?php if($user->realtor==1): echo "checked"; endif;?> id="checkboxSuccess1">
                                            <label for="checkboxSuccess1">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div><!-- /.card-body -->
                        <div class="card-footer">
                            <button class="btn btn-success"><i class="fas fa-edit"> Editar Usuário</i></button>
                            &nbsp&nbsp
                            <a href="#" class="btn btn-danger"
                               data-post="<?= url("/usuario/alterar/{$user->id}"); ?>"
                               data-action="delete"
                               data-confirm="ATENÇÃO: Tem certeza que deseja excluir o usuário e todos os dados relacionados a ele? Essa ação não pode ser desfeita!"
                               data-user_id="<?= $user->id; ?>"><i class="fas fa-trash"> Excluir Usuário</i>
                            </a>
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
            toastr.success("Usuário alterado com sucesso");
        });
    </script>
<?php
endif;
$v->end(); ?>