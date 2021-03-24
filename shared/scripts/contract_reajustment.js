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

    $("#readjustment_percent").blur(function(){

	  if($(this).val()!=""){
		
		/*if($(this).val().indexOf("-")==-1){
			if($(this).val().charAt(0)==","){
				alert("Valor inválido");
				$("#readjustment_percent").focus();
				$("#readjustment_percent").val("");
				return false;
			}
			if($(this).val().charAt($(this).val().length-1)==","){
				alert("Valor inválido");
				$("#readjustment_percent").focus();
				$("#readjustment_percent").val("");
				return false;
			}
			var val = $(this).val().replace(',','.');
			if(parseFloat(val)>100){
				alert("Valor inválido");
				$("#txt_reajuste").focus();
				$("#txt_reajuste").val("");
				return false;
			}
			var retorno= $(this).val().split(",");
			if(retorno[1].length==1){
				$(this).val($(this).val()+"0");
			}
		}*/
		
			for(i=1;i<=$("#count_property").val();i++){
							
      			var valor = $("#readjustment_value_hidden_"+i).val().replace('.','');
				var valor = valor.replace(',','.');
				var valor = parseFloat(valor);
                                
				if($(this).val().indexOf("-")==-1){
				var reajuste = $(this).val().replace(',','.');
				var reajuste = parseFloat(reajuste);
				var valor_reajustado=valor+(valor*(reajuste/100));
				}else{
					var reajuste = $(this).val().replace('-','');
					var reajuste = reajuste.replace(',','.');
					var reajuste = parseFloat(reajuste);
				    var valor_reajustado=valor-(valor*(reajuste/100));
				}
				valor_reajustado=valor_reajustado.toLocaleString("pt-BR", { style: "currency" , currency:"BRL"});
				valor_reajustado=valor_reajustado.replace('R$','');
				$("#readjustment_value_"+i).val(valor_reajustado.trim());             
			}
			
	  }
		
    })
})


