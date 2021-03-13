$(function () {


    $('#property').change(function () {
        var property = $(this).val();
        document.getElementById("value_lessor").innerHTML = "";
        $("#start_date").val("");
        $("#ending_date").val("");
        if(property!=""){

            $.getJSON( path + '/contract/getOwner/'+property, function (data){

                $.each(data.owner, function(i, obj){

                    var valueFormat = obj.percent.replace(".", ",");

                    document.getElementById("value_lessor").innerHTML += obj.name +" - "+ valueFormat+'%<br>';

                });

            });

            $.getJSON( path + '/contract/getProxy/'+property, function (data){

                document.getElementById("value_procurator1").innerHTML = "";
                $("#procurator").val("");
                document.getElementById("value_procurator2").innerHTML = "";
                $("#procurator2").val("");
                $("#div_procurator2").fadeOut();
                document.getElementById("value_procurator3").innerHTML = "";
                $("#procurator3").val("");
                $("#div_procurator3").fadeOut();
                document.getElementById("value_procurator4").innerHTML = "";
                $("#procurator4").val("");
                $("#div_procurator4").fadeOut();
                document.getElementById("value_procurator5").innerHTML = "";
                $("#procurator5").val("");
                $("#div_procurator5").fadeOut();

                if(data.procurator==null){
                    $("#proxy-tab").fadeOut();
                    $("#procurator_status").val("");
                }

                $.each(data.procurator, function(i, obj){

                    if(i==0){
                        document.getElementById("value_procurator1").innerHTML = obj.name;
                        $("#procurator").val(obj.id);
                    }

                    if(i==1){
                        document.getElementById("value_procurator2").innerHTML = obj.name;
                        $("#div_procurator2").fadeIn();
                        $("#procurator2").val(obj.id);
                    }

                    if(i==2){
                        document.getElementById("value_procurator3").innerHTML = obj.name;
                        $("#div_procurator3").fadeIn();
                        $("#procurator3").val(obj.id);
                    }

                    if(i==3){
                        document.getElementById("value_procurator4").innerHTML = obj.name;
                        $("#div_procurator4").fadeIn();
                        $("#procurator4").val(obj.id);
                    }

                    if(i==4){
                        document.getElementById("value_procurator5").innerHTML = obj.name;
                        $("#div_procurator5").fadeIn();
                        $("#procurator5").val(obj.id);
                    }
                    $("#proxy-tab").fadeIn();
                    $("#procurator_status").val("1");
                    i++;
                });

            });

            $.getJSON( path + '/contract/getTenancy/'+property, function (data){

                $.each(data.tenancy, function(i, obj){
                    if(obj.realtor=="without information") {
                        $("#realtor").val("");
                        $('#realtor').trigger('change');
                    }else{
                        $("#realtor").val(obj.realtor);
                        $('#realtor').trigger('change');
                    }

                    var leasePriceFormat = obj.lease_price.replace(".", ",");
                    var commissionFormat = obj.commission.replace(".", ",");

                    $("#lease_price").val(leasePriceFormat);
                    $("#commission").val(commissionFormat);
                    $("#readjustment_type").val(obj.readjustment_type);
                    $("#lease_term").val(obj.lease_term);
                    $('#lease_term').trigger('change');
                });

            });

        }else{
            $("#realtor").val("");
            $('#realtor').trigger('change');
            $("#lease_price").val("");
            $("#commission").val("");
            $("#readjustment_type").val("");
            $("#lease_term").val("");
            $('#lease_term').trigger('change');
            $("#proxy-tab").fadeOut();
            $("#procurator_status").val("");
        }

    });

    $('#guarantee').change(function () {
        var guarantee = $(this).val();

       $("#surety").val("");
       $('#surety').trigger('change');
       $("#security_deposit").val("");
       $("#portion_deposit").val("");

        if(guarantee!=""){
            if(guarantee=="surety") {
                $("#div_surety").fadeIn();
            }else{
                $("#div_surety").fadeOut();
            }

            if(guarantee=="security_deposit"){
                $("#div_security_deposit").fadeIn();
            }else{
                $("#div_security_deposit").fadeOut();
            }

            if(guarantee=="bank_guarantee"){
                $("#div_bank_guarantee").fadeIn();
            }else{
                $("#div_bank_guarantee").fadeOut();
            }


        }else{
            $("#div_surety").fadeOut();
            $("#div_security_deposit").fadeOut();
            $("#div_bank_guarantee").fadeOut();
        }

    });

    $('#lease_term').change(function () {

        if(($(this).val()!="")&&($("#start_date").val()!="")) {
            var lease_term = $(this).val();

            var res = $("#start_date").val().split("/");
            var start_date = res[0] + res[1] + res[2];

            $.getJSON(path + '/contract/getDate/' + lease_term + '/' + start_date, function (data) {
                $("#ending_date").val(data);
                $("#end_date_value").val(data);
            });
        }

    });


    $('#start_date').blur(function () {

        if(($(this).val()!="")&&($("#lease_term").val()!="")) {
            var lease_term = $("#lease_term").val();

            var res = $(this).val().split("/");
            var start_date = res[0] + res[1] + res[2];

            $.getJSON(path + '/contract/getDate/' + lease_term + '/' + start_date, function (data) {
                $("#ending_date").val(data);
                $("#end_date_value").val(data);
            });
        }

    });
    
    $('.generate').click(function () {
        $("#contract_cod").val("");
        var clicked = $(this);
        var data = clicked.data();
        $("#contract_cod").val(data.cod);
        $("#lease_price").val(data.lease);
        $("#paymento_form").val(data.paymento_form);
        $("#due_date").val(data.due_date);
        document.getElementById("div_propety").innerHTML = "<b>Imóvel: "+data.property+"</b>";
    });
    

});