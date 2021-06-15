<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <?= $head; ?>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= theme("/assets/plugins/fontawesome-free/css/all.min.css", CONF_VIEW_THEME_ADMIN); ?>">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="<?= theme("/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css", CONF_VIEW_THEME_ADMIN); ?>">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?= theme("/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css", CONF_VIEW_THEME_ADMIN); ?>">
    <!-- JQVMap -->
    <link rel="stylesheet" href="<?= theme("/assets/plugins/jqvmap/jqvmap.min.css", CONF_VIEW_THEME_ADMIN); ?>">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= theme("/assets/css/adminlte.min.css", CONF_VIEW_THEME_ADMIN); ?>">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="<?= theme("/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css", CONF_VIEW_THEME_ADMIN); ?>">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="<?= theme("/assets/plugins/daterangepicker/daterangepicker.css", CONF_VIEW_THEME_ADMIN); ?>">
    <!-- summernote -->
    <link rel="stylesheet" href="<?= theme("/assets/plugins/plugins/summernote/summernote-bs4.min.css", CONF_VIEW_THEME_ADMIN); ?>">

    <link rel="stylesheet" href="<?= theme("/assets/plugins/toastr/toastr.min.css", CONF_VIEW_THEME_ADMIN); ?>">

    <link rel="stylesheet" href="<?= theme("/assets/plugins/select2/css/select2.min.css", CONF_VIEW_THEME_ADMIN); ?>">
    <link rel="stylesheet" href="<?= theme("/assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css", CONF_VIEW_THEME_ADMIN); ?>">

    <link rel="stylesheet" href="<?= theme("/assets/plugins/ekko-lightbox/ekko-lightbox.css", CONF_VIEW_THEME_ADMIN); ?>">

    <link rel="stylesheet" href="<?= theme("/assets/css/dash.css", CONF_VIEW_THEME_ADMIN); ?>">

    <!-- Bootstrap4 Duallistbox -->
    <link rel="stylesheet" href="<?= theme("/assets/plugins//bootstrap4-duallistbox/bootstrap-duallistbox.min.css", CONF_VIEW_THEME_ADMIN); ?>">

    <link media="all" rel="stylesheet" type="text/css" href="<?= theme("/assets/highslide/highslide.css", CONF_VIEW_THEME_ADMIN);?>">

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.1.6/css/fixedHeader.dataTables.min.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css"/>

    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>

    <link rel="icon" type="image/png" href="<?=url("shared/images/logo_principal.png")?>"/>
</head>

<div class="ajax_load" style="z-index: 9999 !important;">
    <div class="ajax_load_box">
        <div class="ajax_load_box_circle"></div>
        <p class="ajax_load_box_title">Aguarde, carregando...</p>
    </div>
</div>
<?php
      $logo = user()->showLogo();
      $companyLogo = ($logo ? image($logo, 100, 100) : "");
?>

<body class="hold-transition sidebar-mini layout-footer-fixed">
<div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="<?= $router->route("dash.dash"); ?>" class="nav-link text-success"><i class="fas fa-suitcase"> <?= user()->account()->description; ?></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="<?= $router->route("dash.logoff"); ?>" class="nav-link text-danger"><i class="fas fa-sign-out-alt">Sair</i></a>
            </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <!-- Notifications Dropdown Menu -->
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="far fa-bell"></i>
                    <span class="badge badge-danger navbar-badge">1</span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <span class="dropdown-item dropdown-header">Notificações 1</span>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-file mr-2"></i> 3 new reports
                        <span class="float-right text-muted text-sm">2 dias</span>
                    </a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                    <i class="fas fa-expand-arrows-alt"></i>
                </a>
            </li>
            <!--li class="nav-item">
                <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                    <i class="fas fa-th-large"></i>
                </a>
            </li-->
        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-light-green elevation-4">
        <!-- Brand Logo -->
        <a href="<?= $router->route("dash.dash"); ?>" class="brand-link">
            <img src="<?=url("/shared/images/felicidade_logo.jpeg")?>" width="200" alt="Logo">
        </a>

        <?php
        $photo = user()->showPhoto();
        $userPhoto = ($photo ? image($photo, 300, 300) : theme("/assets/images/avatar.jpg", CONF_VIEW_THEME_ADMIN));
        ?>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="<?= $userPhoto; ?>" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="<?= url("/usuario/alterar/" . user()->id); ?>" class="d-block"><?= user()->fullName(); ?></a>
                </div>
            </div>

            <!-- SidebarSearch Form -->
            <div class="form-inline">
                <div class="input-group" data-widget="sidebar-search">
                    <input class="form-control form-control-sidebar" type="search" placeholder="Procurar..." aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn btn-sidebar">
                            <i class="fas fa-search fa-fw"></i>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li <?php if($menu=="dash"):?>class="nav-item menu-open"<?php else:?>class="nav-item"<?php endif?>>
                        <a href="#" <?php if($menu=="dash"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?= $router->route("dash.dash"); ?>" <?php if($submenu=="dash1"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Dashboard Quantitativo</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="./index2.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Dashboard Operacional</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="./index3.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Dashboard Financeiro</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li <?php if($menu=="register"):?>class="nav-item menu-open"<?php else:?>class="nav-item"<?php endif?>>
                        <a href="#" <?php if($menu=="register"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                            <i class="nav-icon fas fa-edit"></i>
                            <p>
                                Cadastro
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?= $router->route("register.home"); ?>" <?php if($submenu=="client"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Clientes</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("register.property"); ?>" <?php if($submenu=="property"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Imóveis</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("register.propertyHistoric"); ?>" <?php if($submenu=="property_historic"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Histórico de Imóveis</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("register.apportionment"); ?>" <?php if($submenu=="apportionment"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Rateio</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li <?php if($menu=="contract"):?>class="nav-item menu-open"<?php else:?>class="nav-item"<?php endif?>>
                        <a href="#" <?php if($menu=="contract"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                            <i class="nav-icon fas fa-file"></i>
                            <p>
                                Contrato
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?= $router->route("contract.home"); ?>" <?php if($submenu=="contract"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Contratos</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("contract.automaticBilling"); ?>" <?php if($submenu=="automaticBilling"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Gerar Alugueis</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("contract.readjustment"); ?>" <?php if($submenu=="readjustment"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Reajuste</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("contract.renovation"); ?>" <?php if($submenu=="renovation"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Renovação</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/forms/advanced.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Acordo de Dívidas</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li <?php if($menu=="financial"):?>class="nav-item menu-open"<?php else:?>class="nav-item"<?php endif?>>
                        <a href="#" <?php if($menu=="financial"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                            <i class="nav-icon fas fa-dollar-sign"></i>
                            <p>
                                Financeiro
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="pages/mailbox/mailbox.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Extrato</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Fluxo de Caixa</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("bankaccount.home"); ?>" <?php if($submenu=="bank_account"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Conta Bancária</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("wallet.home"); ?>" <?php if($submenu=="wallet"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Carteira</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Lançar Cobranças</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="<?= $router->route("invoice.expense"); ?>" <?php if($submenu=="expense"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Lançar Despesas</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Compensação</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Boletos <i style="color:red">EM BREVE</i></p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Recibos</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Remessa <i style="color:red">EM BREVE</i></p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Retorno <i style="color:red">EM BREVE</i></p>
                                </a>
                            </li>

                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon far fa-envelope"></i>
                            <p>
                                E-mail
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="pages/mailbox/mailbox.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Locador</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Loocatário</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Registro de Envio</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-chart-pie"></i>
                            <p>
                                Relatório
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="pages/charts/chartjs.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Relatório de Cliente</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/mailbox/compose.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Relatório de Repasse</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/charts/flot.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Relatório de Inadimplentes</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/charts/flot.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Relatório de Corretores</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/charts/flot.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Relatório de Rateio</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/charts/flot.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Relatório de Imposto</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="pages/charts/inline.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Relatório de Dimob</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li <?php if($menu=="user"):?>class="nav-item menu-open"<?php else:?>class="nav-item"<?php endif?>>
                        <a href="#" <?php if($menu=="user"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                            <i class="nav-icon fas fa-address-card"></i>
                            <p>
                                Meu Perfil
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?= $router->route("users.home"); ?>" <?php if($submenu=="home"):?>class="nav-link active"<?php else:?>class="nav-link"<?php endif?>>
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Usuários</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Nível de Acesso</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Conta</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-headset"></i>
                            <p>Suporte</p>
                        </a>
                    </li>


                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!--container-->
    <?= $v->section("content"); ?>
    <!-- /.container -->
    <input type="text" id="flash" value="<?=flash()?>" />
    <footer class="main-footer">
        <strong>Copyright &copy; <?= date("Y"); ?> <a href="https://www.aegsoftware.com" target="_blank">A&GSoftware</a>.</strong>
        Todos os direitos reservados.
        <div class="float-right d-none d-sm-inline-block">
            <b>Versão</b> 2.0
        </div>
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- jQuery -->
<script src="<?= url("/shared/scripts/jquery.min.js"); ?>"></script>

<script src="<?= url("/shared/scripts/jquery.form.js"); ?>"></script>

<!-- jQuery UI 1.11.4 -->
<script src="<?= url("/shared/scripts/jquery-ui.js"); ?>"></script>

<script src="<?= url("/shared/scripts/jquery.mask.js"); ?>"></script>

<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script src="<?= url("/shared/scripts/scripts.js"); ?>"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?= theme("/assets/plugins/bootstrap/js/bootstrap.bundle.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- ChartJS -->
<script src="<?= theme("/assets/plugins/chart.js/Chart.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- Sparkline -->
<script src="<?= theme("/assets/plugins/sparklines/sparkline.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- JQVMap -->
<script src="<?= theme("/assets/plugins/jqvmap/jquery.vmap.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<script src="<?= theme("/assets/plugins/jqvmap/maps/jquery.vmap.usa.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- jQuery Knob Chart -->
<script src="<?= theme("/assets/plugins/jquery-knob/jquery.knob.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- daterangepicker -->
<script src="<?= theme("/assets/plugins/moment/moment.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<script src="<?= theme("/assets/plugins/daterangepicker/daterangepicker.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="<?= theme("/assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- Summernote -->
<script src="<?= theme("/assets/plugins/summernote/summernote-bs4.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- overlayScrollbars -->
<script src="<?= theme("/assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- AdminLTE App -->
<script src="<?= theme("/assets/js/adminlte.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- Toastr -->
<script src="<?= theme("/assets/plugins/toastr/toastr.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= theme("/assets/js/demo.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?= theme("/assets/js/pages/dashboard.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- Select2 -->
<script src="<?= theme("/assets/plugins/select2/js/select2.full.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- Ekko Lightbox -->
<script src="<?= theme("/assets/plugins/ekko-lightbox/ekko-lightbox.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- Filterizr-->
<script src="<?= theme("/assets/plugins/filterizr/jquery.filterizr.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="<?= theme("/assets/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js", CONF_VIEW_THEME_ADMIN); ?>"></script>

<script type="text/javascript" src="<?= theme("/assets/highslide/highslide-full.packed.js", CONF_VIEW_THEME_ADMIN)?>"></script>

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src=" https://cdn.datatables.net/fixedheader/3.1.6/js/dataTables.fixedHeader.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>

<script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>


<script type="text/javascript">
    
    var path = '<?php echo url(); ?>'
    
    hs.graphicsDir = '<?= theme("/assets/highslide/graphics/", CONF_VIEW_THEME_ADMIN);?>'
    hs.align = 'center';
    hs.transitions = ['expand', 'crossfade'];
    hs.outlineType = 'rounded-white';
    hs.fadeInOut = true;
    //hs.dimmingOpacity = 0.75;

    // Add the controlbar
    hs.addSlideshow({
        //slideshowGroup: 'group1',
        interval: 5000,
        repeat: false,
        useControls: true,
        fixedControls: 'fit',
        overlayOptions: {
            opacity: .75,
            position: 'bottom center',
            hideOnMouseOut: true
        }
    });


$(function () {
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
        event.preventDefault();
        $(this).ekkoLightbox({
            alwaysShowClose: true
        });
    });

    $('.filter-container').filterizr({gutterPixels: 3});
    $('.btn[data-filter]').on('click', function() {
        $('.btn[data-filter]').removeClass('active');
        $(this).addClass('active');
    });
})


var table = $('#example1').DataTable({
    "ordering": true,
    "paging": true,
    "info": true,
    "lengthChange": true,
    "language": {
        "search": "Procurar:",
        "paginate": {
            "first": "Primeiro",
            "last": "Último",
            "next": "Próximo",
            "previous": "Anterior"
        },
        "lengthMenu": "_MENU_ Resultados por página",
        "zeroRecords": "Nenhum Registro Encontrado",
        "info": "Mostrar página _PAGE_ de _PAGES_",
        "infoEmpty": "Nenhum Registro Encontrado",
        "infoFiltered": "(filtrar por _MAX_ total de registro)"
    },
    dom: 'Blfrtip',
    buttons: [
        {
            extend: 'print',
            text: 'Imprimir',
            footer: true,
            exportOptions: {
                columns: [ 0, 1, 2, 3, 4 ]
            },
            /*customize: function ( win ) {
                $(win.document.body)
                    .css( 'font-size', '10pt' )
                    .prepend(
                        '<img src="<?=$companyLogo;?>" style="position:absolute; top:0; left:20;" />'
                    );

                $(win.document.body).find( 'table' )
                    .addClass( 'compact' )
                    .css( 'font-size', 'inherit' );
            }*/
        },
        {
          extend: 'excel',
          footer: true,
          exportOptions: {
                columns: [ 0, 1, 2, 3, 4 ]
          },

        },
    ],

    responsive: true
});


var table = $('#example2').DataTable({
    "ordering": false,
    "paging": true,
    "info": true,
    "lengthChange": false,
    "language": {
        "search": "Procurar:",
        "paginate": {
            "first": "Primeiro",
            "last": "Último",
            "next": "Próximo",
            "previous": "Anterior"
        },
        "zeroRecords": "Nenhum Registro Encontrado",
        "info": "Mostrar página _PAGE_ de _PAGES_",
        "infoEmpty": "Nenhum Registro Encontrado",
        "infoFiltered": "(filtrar por _MAX_ total de registro)"
    },
    responsive: true
});

var table = $('#example3').DataTable({
    "ordering": false,
    "paging": false,
    "info": false,
    "lengthChange": false,
    "searching": false,
    "language": {
        "search": "Procurar:",
        "paginate": {
            "first": "Primeiro",
            "last": "Último",
            "next": "Próximo",
            "previous": "Anterior"
        },
        "zeroRecords": "Nenhum Registro Encontrado",
        "info": "Mostrar página _PAGE_ de _PAGES_",
        "infoEmpty": "Nenhum Registro Encontrado",
        "infoFiltered": "(filtrar por _MAX_ total de registro)"
    },
    responsive: true
});

var table = $('#example4').DataTable({
    "ordering": false,
    "paging": false,
    "info": false,
    "lengthChange": false,
    "language": {
        "search": "Procurar:",
        "paginate": {
            "first": "Primeiro",
            "last": "Último",
            "next": "Próximo",
            "previous": "Anterior"
        },
        "zeroRecords": "Nenhum Registro Encontrado",
        "info": "Mostrar página _PAGE_ de _PAGES_",
        "infoEmpty": "Nenhum Registro Encontrado",
        "infoFiltered": "(filtrar por _MAX_ total de registro)"
    },
    responsive: true
});

var table = $('#exampleOrder2').DataTable({
    "ordering": true,
    "paging": true,
    "info": true,
    "lengthChange": true,
    "order": [ 1, 'asc' ],
    "language": {
        "search": "Procurar:",
        "paginate": {
            "first": "Primeiro",
            "last": "Último",
            "next": "Próximo",
            "previous": "Anterior"
        },
        "lengthMenu": "_MENU_ Resultados por página",
        "zeroRecords": "Nenhum Registro Encontrado",
        "info": "Mostrar página _PAGE_ de _PAGES_",
        "infoEmpty": "Nenhum Registro Encontrado",
        "infoFiltered": "(filtrar por _MAX_ total de registro)"
    },
    dom: 'Blfrtip',
    buttons: [
        {
            extend: 'print',
            text: 'Imprimir',
            footer: true,
            exportOptions: {
                columns: [ 0, 1, 2 ]
            },
        },
        {
            extend: 'excel',
            footer: true,
            exportOptions: {
                columns: [ 0, 1, 2 ]
            },

        },
    ],

    responsive: true
});


var table = $('#example5').DataTable({
    "ordering": true,
    "paging": true,
    "info": true,
    "lengthChange": true,
    "language": {
        "search": "Procurar:",
        "paginate": {
            "first": "Primeiro",
            "last": "Último",
            "next": "Próximo",
            "previous": "Anterior"
        },
        "lengthMenu": "_MENU_ Resultados por página",
        "zeroRecords": "Nenhum Registro Encontrado",
        "info": "Mostrar página _PAGE_ de _PAGES_",
        "infoEmpty": "Nenhum Registro Encontrado",
        "infoFiltered": "(filtrar por _MAX_ total de registro)"
    },
    dom: 'Blfrtip',
    buttons: [
        {
            extend: 'print',
            text: 'Imprimir',
            footer: true,
            exportOptions: {
                columns: [ 0, 1, 2, 3 ]
            },

        },
        {
            extend: 'excel',
            footer: true,
            exportOptions: {
                columns: [ 0, 1, 2, 3]
            },

        },
    ],

    responsive: true
});

$(function () {
//Initialize Select2 Elements
    //$('.select2').select2()

    $('.select2').select2({
        theme: 'bootstrap4'
    })
//Initialize Select2 Elements
    $('.select2bs4').select2({
        theme: 'bootstrap4'
    })

    //Bootstrap Duallistbox
    $('.duallistbox').bootstrapDualListbox()
})


</script>
<?= $v->section("scripts"); ?>
</body>
</html>
