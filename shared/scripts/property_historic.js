$(function () {

    $('#close_historic').click(function () {

        var historic = $("select[name='historic']").val();

        resetaCombo('historic');

        $.getJSON(path + '/cadastro/historic/select', function (data) {

            var option = new Array();

            $.each(data.historic, function (i, obj) {
                option[i] = document.createElement('option');
                $(option[i]).attr({value: obj.id});
                $(option[i]).append(obj.description);

                if (historic == obj.id) {
                    $(option[i]).attr("selected", "selected");
                }

                $("select[name='historic']").append(option[i]);

            });

        });
    });

});
function resetaCombo( el ) {
    $("select[name='"+el+"']").empty();
    var option = document.createElement('option');
    $( option ).attr( {value : ''} );
    $( option ).append( '--Selecione--' );
    $("select[name='"+el+"']").append( option );

    var option = document.createElement('option');
    $( option ).attr( {value : 'constructions'} );
    $( option ).append( 'Obra' );
    $("select[name='"+el+"']").append( option );

    var option = document.createElement('option');
    $( option ).attr( {value : 'residential'} );
    $( option ).append( 'survey' );
    $("select[name='"+el+"']").append( option );
}