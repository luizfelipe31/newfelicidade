$(function () {

    $("#city_hall").change(function () {

        if ($(this).val() == "yes") {
            $( "#city_hall_cod" ).prop( "disabled", false );
            $( "#city_hall_percent" ).prop( "disabled", false );
        }else{

            $( "#city_hall_cod" ).prop( "disabled", true );
            $( "#city_hall_percent" ).prop( "disabled", true );
        }

    });

    $("#light").change(function () {

        if ($(this).val() == "yes") {
            $( "#light_cod" ).prop( "disabled", false );
            $( "#light_percent" ).prop( "disabled", false );
        }else{

            $( "#light_cod" ).prop( "disabled", true );
            $( "#light_percent" ).prop( "disabled", true );
        }

    });

    $("#water_and_sewage").change(function () {

        if ($(this).val() == "yes") {
            $( "#water_and_sewage_cod" ).prop( "disabled", false );
            $( "#water_and_sewage_percent" ).prop( "disabled", false );
        }else{

            $( "#water_and_sewage_cod" ).prop( "disabled", true );
            $( "#water_and_sewage_percent" ).prop( "disabled", true );
        }

    });

    $("#fire_department").change(function () {

        if ($(this).val() == "yes") {
            $( "#fire_department_cod" ).prop( "disabled", false );
            $( "#fire_department_percent" ).prop( "disabled", false );
        }else{

            $( "#fire_department_cod" ).prop( "disabled", true );
            $( "#fire_department_percent" ).prop( "disabled", true );
        }

    });

    $("#gas").change(function () {

        if ($(this).val() == "yes") {
            $( "#gas_cod" ).prop( "disabled", false );
            $( "#gas_percent" ).prop( "disabled", false );
        }else{

            $( "#gas_cod" ).prop( "disabled", true );
            $( "#gas_percent" ).prop( "disabled", true );
        }

    });

    $('#close_category').click(function (){

        var  category = $("select[name='category']").val();

        resetaComboCategory('category');


        if(category=="commercial") {
            $('select[name="category"]').val("commercial")
        }

        if(category=="residential") {
            $('select[name="category"]').val("residential")
        }

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


    $('#close_type_property').click(function (){

        var  type_property = $("select[name='type']").val();

        resetaComboTypeProperty('type');

        if(type_property=="apartment") {
            $('select[name="type"]').val("apartment")
        }

        if(type_property=="house") {
            $('select[name="type"]').val("house")
        }

        if(type_property=="commercial room") {
            $('select[name="type"]').val("commercial room")
        }

        $.getJSON( path + '/cadastro/type_property/select', function (data){

            var option = new Array();

            $.each(data.type_property, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(type_property==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='type']").append( option[i] );

            });
        });


    });

});
function resetaComboCategory( el ) {
    $("select[name='"+el+"']").empty();
    var option = document.createElement('option');
    $( option ).attr( {value : 'without information'} );
    $( option ).append( 'Sem Informação' );
    $("select[name='"+el+"']").append( option );

    var option = document.createElement('option');
    $( option ).attr( {value : 'commercial'} );
    $( option ).append( 'Comercial/Industrial' );
    $("select[name='"+el+"']").append( option );

    var option = document.createElement('option');
    $( option ).attr( {value : 'residential'} );
    $( option ).append( 'Imóvel Residencial' );
    $("select[name='"+el+"']").append( option );
}

function resetaComboTypeProperty( el ) {
    $("select[name='"+el+"']").empty();
    var option = document.createElement('option');
    $( option ).attr( {value : 'without information'} );
    $( option ).append( 'Sem Informação' );
    $("select[name='"+el+"']").append( option );

    var option = document.createElement('option');
    $( option ).attr( {value : 'apartment'} );
    $( option ).append( 'Apartamento' );
    $("select[name='"+el+"']").append( option );

    var option = document.createElement('option');
    $( option ).attr( {value : 'house'} );
    $( option ).append( 'Casa' );
    $("select[name='"+el+"']").append( option );

    var option = document.createElement('option');
    $( option ).attr( {value : 'commercial room'} );
    $( option ).append( 'Sala Comercial' );
    $("select[name='"+el+"']").append( option );
}