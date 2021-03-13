$(function () {


    $(document).on("click", ".open-AddBookDialog", function (e) {

        e.preventDefault();

        var _self = $(this);

        var cod = _self.data('id');
        var type = _self.data('type');

        $( "#load" ).load( path + '/cadastro/rateio/property/'+cod+'/'+type );

        $(_self.attr('href')).modal('show');

    });

});
