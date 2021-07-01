$(function () {

    $( ".invoice_compensation" ).click(function(){
        $("#invoice_id").val("");
        $("#invoice_id").val($(this).data('id')) 
        $("#value_current").val($(this).data('value'));
        $("#label_desc_compensation").html($(this).data('label'));
    });

    $( ".invoice_expense" ).click(function(){
        $("#invoice_id_alter").val("");
        $("#invoice_id_alter").val($(this).data('id'))  
        $("#label_desc").html($(this).data('label'));

        $.getJSON( path + '/financeiro/lancamento/search/' + $("#invoice_id_alter").val(), function (data){
            $.each(data, function(i, obj){
                $("#payment_form").val(obj["payment_form"]);
                if(obj["payment_form"]=="money"){
                    $("#bank_account").val("");
                    $("#bank_account").prop("disabled", true); 
                }else{
                    $("#bank_account").prop("disabled", false); 
                    $("#bank_account").val(obj["bank_account_id"]);
                }
                $("#wallet").val(obj["wallet"]);
                $("#category").val(obj["category"]);
                $("#due_date").val(obj["due_date"]);
                $("#reference_date").val(obj["reference_date"]);
                $("#type").val(obj["operation"]);
                $("#value").val(obj["value"]);
                $("#note").val(obj["note"]);
            });

        });
    });

    $( "#invoice_trash" ).click(function(e){
        e.preventDefault();
        var clicked = $(this);
        var data = clicked.data();
        var load = $(".ajax_load");

        if (data.confirm) {
            var deleteConfirm = confirm(data.confirm);
            if (!deleteConfirm) {
                return;
            }
        }

        $.ajax({
            url: data.url,
            type: "POST",
            data: {id: $("#invoice_id_alter").val()},
            dataType: "json",
            beforeSend: function () {
                load.fadeIn(200).css("display", "flex");
            },
            success: function (response) {
                //redirect
                if (response.redirect) {
                    window.location.href = response.redirect;
                } else {
                    load.fadeOut(200);
                }

                //message
                if (response.message) {
                    toastr.error(response.message);
                }

            },
            error: function () {
                ajaxMessage(ajaxResponseRequestError, 5);
                load.fadeOut();
            }
        });
    })

    $('#close_category').click(function (){

        var  category = $("select[name='category']").val();

        resetaCombo('category');

        $.getJSON( path + '/cadastro/category/select', function (data){

            var option = new Array();

            $.each(data.category, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(category==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='category']").append( option[i] );

            });
        });

    });

    $("#payment_form").change(function () {
        if ($(this).val() == "money") {
            $("#bank_account").prop("disabled", true); 
            $("#bank_account").val("");
        }else{
            $("#bank_account").prop("disabled", false); 
        }
    })
})

function resetaCombo( el ) {
    $("select[name='"+el+"']").empty();
    var option = document.createElement('option');
    $( option ).attr( {value : ''} );
    $( option ).append( '--Selecione--' );
    $("select[name='"+el+"']").append( option );
}