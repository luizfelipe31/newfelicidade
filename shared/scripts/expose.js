$(function () {

    $("#type").change(function () {
        if ($(this).val() == "property") {
            $("#property").fadeIn();
            $("#lessee").fadeOut();
        }
        else{
            $("#lessee").fadeIn();
            $("#property").fadeOut();
        }
    })

    $("#paymento_form").change(function () {
        if ($(this).val() == "money") {
            $("#bank_account").prop("disabled", true); 
            $("#bank_account").val("");
        }else{
            $("#bank_account").prop("disabled", false); 
        }
    })

    $("#checkboxSuccess1").click(function () {
        if($("#checkboxSuccess1").prop( "checked")==false){
            $( "#checkboxSuccess1" ).prop( "checked", true );
        }
        $( "#div_installments").fadeOut();
        $( "#checkboxSuccess2" ).prop( "checked", false );
        $( "#checkboxSuccess3" ).prop( "checked", false );
    })

    $("#checkboxSuccess2").click(function () {
        if($("#checkboxSuccess2").prop( "checked")==false){
            $( "#checkboxSuccess2" ).prop( "checked", true );
        }
        $( "#div_installments").fadeOut();
        $( "#checkboxSuccess1" ).prop( "checked", false );
        $( "#checkboxSuccess3" ).prop( "checked", false );
    })

    $("#checkboxSuccess3").click(function () {
        if($("#checkboxSuccess3").prop( "checked")==false){
            $( "#checkboxSuccess3" ).prop( "checked", true );
        }
        $( "#div_installments").fadeIn();
        $( "#checkboxSuccess1" ).prop( "checked", false );
        $( "#checkboxSuccess2" ).prop( "checked", false );
    })

    $("#installments").keyup(function () {
        if($(this).val()!=""){
            if($(this).val()<=0){
                $("#installments").val("1"); 
            }
        }
    })

    $( ".invoice_expense" ).click(function(){
        $("#lessor_value").val("");
        $("#property_value").val("");
        $("#lessor_value").val($(this).data('lessor')) 
        $("#property_value").val($(this).data('property')) 
        $("#label_desc").html($(this).data('label'));
    });

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
})
function resetaCombo( el ) {
    $("select[name='"+el+"']").empty();
    var option = document.createElement('option');
    $( option ).attr( {value : ''} );
    $( option ).append( '--Selecione--' );
    $("select[name='"+el+"']").append( option );
}