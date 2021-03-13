$(function () {


    if ($("#client_person").val() == "natural_person") {
        $("#div_natural_person").fadeIn();
        $("#div_legal_person").fadeOut();
        $("#spouse-tab").fadeIn();
        $("#partner-tab").fadeOut();
    }else{
        $("#div_legal_person").fadeIn();
        $("#div_natural_person").fadeOut();
        $("#spouse-tab").fadeOut();
        $("#partner-tab").fadeIn();
    }


    $("#person").change(function () {
        if ($(this).val() == "natural_person") {
            $("#div_natural_person").fadeIn();
            $("#div_legal_person").fadeOut();
            $("#spouse-tab").fadeIn();
            $("#partner-tab").fadeOut();
        } else {
            $("#div_legal_person").fadeIn();
            $("#div_natural_person").fadeOut();
            $("#spouse-tab").fadeOut();
            $("#partner-tab").fadeIn();
        }
    });

    $('#close_document').click(function (){

        var  document_secundary_complement = $("select[name='document_secundary_complement']").val();

        resetaCombo('document_secundary_complement');

        $.getJSON( path + '/cadastro/document/select', function (data){

            var option = new Array();

            $.each(data.document, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(document_secundary_complement==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='document_secundary_complement']").append( option[i] );

            });

        });

        var  document_secundary_complement_spouse = $("select[name='document_secundary_complement_spouse']").val();

        resetaCombo('document_secundary_complement_spouse');

        $.getJSON( path + '/cadastro/document/select', function (data){

            var option = new Array();

            $.each(data.document, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(document_secundary_complement_spouse==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='document_secundary_complement_spouse']").append( option[i] );

            });
        });

        var  document_secundary_complement_partner = $("select[name='document_secundary_complement_partner']").val();

        resetaCombo('document_secundary_complement_partner');

        $.getJSON( path + '/cadastro/document/select', function (data){

            var option = new Array();

            $.each(data.document, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(document_secundary_complement_partner==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='document_secundary_complement_partner']").append( option[i] );

            });
        });
    });

    $('#close_genre').click(function (){

        var  genre = $("select[name='genre']").val();

        resetaCombo('genre');

        $.getJSON( path + '/cadastro/genre/select', function (data){

            var option = new Array();

            $.each(data.genre, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(genre==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='genre']").append( option[i] );

            });
        });

        var  genre_spouse = $("select[name='genre_spouse']").val();

        resetaCombo('genre_spouse');

        $.getJSON( path + '/cadastro/genre/select', function (data){

            var option = new Array();

            $.each(data.genre, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(genre_spouse==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='genre_spouse']").append( option[i] );

            });
        });

        var  genre_partner = $("select[name='genre_partner']").val();

        resetaCombo('genre_partner');

        $.getJSON( path + '/cadastro/genre/select', function (data){

            var option = new Array();

            $.each(data.genre, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(genre_partner==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='genre_partner']").append( option[i] );

            });
        });
    });

    $('#close_nationality').click(function (){

        var  nationality = $("select[name='nationality']").val();

        resetaCombo('nationality');

        $.getJSON( path + '/cadastro/nationality/select', function (data){

            var option = new Array();

            $.each(data.nationality, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(nationality==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='nationality']").append( option[i] );

            });
        });

        var  nationality_spouse = $("select[name='nationality_spouse']").val();

        resetaCombo('nationality_spouse');

        $.getJSON( path + '/cadastro/nationality/select', function (data){

            var option = new Array();

            $.each(data.nationality, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(nationality_spouse==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='nationality_spouse']").append( option[i] );

            });
        });

        var  nationality_partner = $("select[name='nationality_partner']").val();

        resetaCombo('nationality_partner');

        $.getJSON( path + '/cadastro/nationality/select', function (data){

            var option = new Array();

            $.each(data.nationality, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(nationality_partner==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='nationality_partner']").append( option[i] );

            });
        });
    });


    $('#close_place_of_birth').click(function (){

        var  place_of_birth = $("select[name='place_of_birth']").val();

        resetaCombo('place_of_birth');

        $.getJSON( path + '/cadastro/place_of_birth/select', function (data){

            var option = new Array();

            $.each(data.place_of_birth, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(place_of_birth==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='place_of_birth']").append( option[i] );

            });
        });

        var  place_of_birth_spouse = $("select[name='place_of_birth_spouse']").val();

        resetaCombo('place_of_birth_spouse');

        $.getJSON( path + '/cadastro/place_of_birth/select', function (data){

            var option = new Array();

            $.each(data.place_of_birth, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(place_of_birth_spouse==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='place_of_birth_spouse']").append( option[i] );

            });
        });

        var  place_of_birth_partner = $("select[name='place_of_birth_partner']").val();

        resetaCombo('place_of_birth_partner');

        $.getJSON( path + '/cadastro/place_of_birth/select', function (data){

            var option = new Array();

            $.each(data.place_of_birth, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(place_of_birth_partner==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='place_of_birth_partner']").append( option[i] );

            });
        });
    });

    $('#close_civil_status').click(function (){

        var  civil_status = $("select[name='civil_status']").val();

        resetaCombo('civil_status');

        $.getJSON( path + '/cadastro/civil_status/select', function (data){

            var option = new Array();

            $.each(data.civil_status, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(civil_status==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='civil_status']").append( option[i] );

            });
        });

        var  civil_status_partner = $("select[name='civil_status_partner']").val();

        resetaCombo('civil_status_partner');

        $.getJSON( path + '/cadastro/civil_status/select', function (data){

            var option = new Array();

            $.each(data.civil_status, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(civil_status_partner==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='civil_status_partner']").append( option[i] );

            });
        });

    });

    $('#close_profession').click(function (){

        var  profession = $("select[name='profession']").val();

        resetaCombo('profession');

        $.getJSON( path + '/cadastro/profession/select', function (data){

            var option = new Array();

            $.each(data.profession, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(profession==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='profession']").append( option[i] );

            });
        });

        var  another_income = $("select[name='another_income']").val();

        resetaCombo('another_income');

        $.getJSON( path + '/cadastro/profession/select', function (data){

            var option = new Array();

            $.each(data.profession, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(another_income==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='another_income']").append( option[i] );

            });
        });

        var  profession_spouse = $("select[name='profession_spouse']").val();

        resetaCombo('profession_spouse');

        $.getJSON( path + '/cadastro/profession/select', function (data){

            var option = new Array();

            $.each(data.profession, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(profession_spouse==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='profession_spouse']").append( option[i] );

            });
        });
    });

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

    $('#close_type_account').click(function (){

        var  type_account = $("select[name='type_account']").val();

        resetaCombo('type_account');

        $.getJSON( path + '/cadastro/type_account/select', function (data){

            var option = new Array();

            $.each(data.type_account, function(i, obj){
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.id} );
                $( option[i] ).append( obj.description );

                if(type_account==obj.id) {
                    $( option[i] ).attr("selected","selected");
                }

                $("select[name='type_account']").append( option[i] );

            });
        });
    });

});
function resetaCombo( el ) {
    $("select[name='"+el+"']").empty();
    var option = document.createElement('option');
    $( option ).attr( {value : 'without information'} );
    $( option ).append( 'Sem Informação' );
    $("select[name='"+el+"']").append( option );
}
