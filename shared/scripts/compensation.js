$(function () {
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