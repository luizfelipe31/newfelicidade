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
                    <td>ADMINISTRADORA DE IMÓVEL</td>
                    <td>--</td>
                    <td>--</td>
                    <td>--</td>
                    <td align="center"><a href="#" class="fas fa-dollar-sign"></a></td>
                   </tr>
                   <?php if($properties):?>
                   <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td align="center"><a href="#" class="fas fa-dollar-sign"></a></td>
                   </tr>
                   <?php endif; ?>
                </tbody>
                <tfoot>
                   <tr>
                    <td>Total: </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                   </tr>
                </tfoot>
               </table>

        </div><!-- /.card-body pb-0 -->
    </div><!-- /.card card-solid -->

</div><!-- /.content-wrapper-->

<?php $v->start("scripts");  ?>
<script src="<?= url("/shared/scripts/expose.js"); ?>"></script>
<?php $v->end(); ?>