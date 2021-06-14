<?php $v->layout("_admin"); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><i class="fas fa-dollar-sign"></i> Conta Bancária</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= $router->route("dash.dash"); ?>">Home</a></li>
                        <li class="breadcrumb-item active">Conta Bancária</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
        <!-- Default box -->
    </div>
    <!-- /.content-header -->
    <!-- Default box -->
    <div class="card card-solid">
        <div class="card-body pb-0">
            <div class="row">
                <div class="col-md-4">
                <i class="btn btn-success" style="cursor:pointer" data-toggle="modal" data-target="#modalAccount">Nova Conta</i>
                </div>
                <div class="col-md-5">
                </div>
            </div><br>

            <div class="row">
            <?php foreach ($bank_accounts as $bank_account): ?>
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3>R$500</h3>

                            <p><a href="#" class="code-dialog" style="color:white;font-size:1.5em" id="account_delete" data-toggle="modal" data-target="#modalAccountEdit"  data-bank="<?=$bank_account->bank?>" data-typeaccount="<?=$bank_account->type_account?>" data-agency="<?=$bank_account->agency?>" data-numberaccount="<?=$bank_account->number_account?>" data-pix="<?=$bank_account->pix?>" data-cod="<?=$bank_account->cod?>"><?=$bank_account->fullAccount()?></a></p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-dollar-sign"></i>
                        </div>

                        <a href="<?=  url("/contabancaria/deletar/{$bank_account->cod}"); ?>" onclick="return confirm('Tem certeza que deseja deletar essa conta?')"  class="small-box-footer">Excluir <i class="fas fa-times-circle"></i></a>
                    </div>
                </div>
            <?php endforeach;?>
            </div>

        </div><!-- /.card-body pb-0 -->
    </div><!-- /.card card-solid -->

</div><!-- /.content-wrapper-->



    <!--modal Account-->
    <div class="modal fade" id="modalAccount" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="account">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Conta Nova</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= $router->route("bankaccount.add"); ?>" name="gallery" method="post"
                            enctype="multipart/form-data">
                <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Banco:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalBank"></i></label>
                                    <select class="form-control select2bs4" style="width: 100%;" required name="bank">
                                        <option value="">--Selecione--</option>
                                        <?php  if(!empty($banks)):
                                            foreach($banks as $bank):?>
                                                <option value="<?=$bank->id?>"><?=$bank->description?></option>
                                            <?php   endforeach;
                                        endif;?>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Tipo de Conta:<!--i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalTypeAccount"></i--></label>
                                    <select class="form-control select2bs4" required style="width: 100%;" name="type_account">
                                        <option value="">--Selecione--</option>
                                        <?php  if(!empty($type_accounts)):
                                            foreach($type_accounts as $type_account):?>
                                                <option value="<?=$type_account->id?>"><?=$type_account->description?></option>
                                            <?php   endforeach;
                                        endif;?>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label>Agência:</label>
                                    <input type="text" class="form-control" name="agency" maxlength="20" required placeholder="Agência">
                                </div>
                                <div class="col-md-6">
                                    <label>Conta:</label>
                                    <input type="text" class="form-control" name="number_account" required  maxlength="20" placeholder="Conta">
                                </div>
                                <div class="col-md-12">
                                    <label>Pix:</label>
                                    <input type="text" class="form-control" name="pix" maxlength="50" placeholder="Pix">
                                </div>
                            </div>
                    
                </div>
                <div class="modal-footer">
                  <button class="btn btn-success"><i class="fas fa-edit"> Cadastrar</i></button>
                </div>
              </form>
            </div>
        </div>
    </div>

    <!--modal Account Edit-->
    <div class="modal fade" id="modalAccountEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="accountEdit">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar Conta</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= $router->route("bankaccount.edit"); ?>" name="gallery" method="post"
                            enctype="multipart/form-data">
                            <input type="hidden" name="cod" id="cod"/>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Banco:<i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalBank"></i></label>
                            <select class="form-control select2bs4" style="width: 100%;" required name="bank" id="bank">
                                <option value="">--Selecione--</option>
                                <?php  if(!empty($banks)):
                                    foreach($banks as $bank):?>
                                        <option value="<?=$bank->id?>"><?=$bank->description?></option>
                                    <?php   endforeach;
                                endif;?>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Tipo de Conta:<!--i class="far fa-question-circle"  style="cursor:pointer" data-toggle="modal" data-target="#modalTypeAccount"></i--></label>
                            <select class="form-control select2bs4" required style="width: 100%;" name="type_account" id="type_account">
                                <option value="">--Selecione--</option>
                                <?php  if(!empty($type_accounts)):
                                    foreach($type_accounts as $type_account):?>
                                        <option value="<?=$type_account->id?>"><?=$type_account->description?></option>
                                    <?php   endforeach;
                                endif;?>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Agência:</label>
                            <input type="text" class="form-control" name="agency" id="agency" maxlength="20" required placeholder="Agência">
                        </div>
                        <div class="col-md-6">
                            <label>Conta:</label>
                            <input type="text" class="form-control" name="number_account" id="number_account" required  maxlength="20" placeholder="Conta">
                        </div>
                        <div class="col-md-12">
                            <label>Pix:</label>
                            <input type="text" class="form-control" name="pix" id="pix" maxlength="50" placeholder="Pix">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-success"><i class="fas fa-edit"> Editar</i></button>
                </div>
              </form>

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
<?php $v->start("scripts");?>
<script>
$( ".code-dialog" ).click(function(){
    $( "#bank").val($(this).data('bank'));
    $('#bank').trigger('change');

    $( "#type_account").val($(this).data('typeaccount'));
    $('#type_account').trigger('change');

    $( "#cod").val($(this).data('cod'));
    $( "#agency").val($(this).data('agency'));
    $( "#number_account").val($(this).data('numberaccount'));
    $( "#pix").val($(this).data('pix'));
});

/*$( "#account_delete").click( function (e) {
    e.preventDefault();
    
    $( "#bank").val($(this).data('bank'));
    $('#bank').trigger('change');

    $( "#type_account").val($(this).data('typeaccount'));
    $('#type_account').trigger('change');

    $( "#cod").val($(this).data('cod'));
    $( "#agency").val($(this).data('agency'));
    $( "#number_account").val($(this).data('numberaccount'));
    $( "#pix").val($(this).data('pix'));
})*/

    $('#close_bank').click(function (){

        var  bank = $("select[name='bank']").val();

        resetaCombo('bank');

        $.getJSON( path + '/cadastro/bank/select', function (data){

            var option = new Array();

            $.each(data.bank, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(bank==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='bank']").append( option[i] );

            });
        });
    });
    function resetaCombo( el ) {
    $("select[name='"+el+"']").empty();
    var option = document.createElement('option');
    $( option ).attr( {value : ''} );
    $( option ).append( '--Selecione--' );
    $("select[name='"+el+"']").append( option );
}
</script>
<?php $v->end(); ?>