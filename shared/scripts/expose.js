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
})