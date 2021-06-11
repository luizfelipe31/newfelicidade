$(function(){
    
    $('#chAllSuccess').on('change',function(){
        var _val = $(this).is(':checked') ? 'checked' : 'unchecked';
        if(_val=="checked"){
            $(".mark").prop("checked", true)
        }else{
            $(".mark").prop("checked", false)
        }
    });
    $('.mark').on('change',function(){
        var _val = $(this).is(':checked') ? 'checked' : 'unchecked';
        if(_val=="unchecked"){
            $("#chAllSuccess").prop("checked", false)
        }
    });
})


