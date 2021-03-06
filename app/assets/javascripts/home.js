$(function() {
    $('#text_search').autocomplete({
        minLength: 0,
        delay: 600,
        source: function(request, response) {
            $.ajax({
                url: "autocomplete.js",
                dataType: "json",
                data: {text_search: request.term},
                success: function( data ) {
                    var data_obj = jQuery.each(data,function(i, key) {
                    });
                    response( $.map(data_obj, function( item ) {
                        return {
                            label: item.surname,
                            value: item.surname
                        }
                    }));
                },
            });
        },
        select: function(event, ui) {
            if(ui.item){
                $(event.target).val(ui.item.label);
            }
            $(event.target.form).submit();
        }
    });
});

$(document).ready(function(){
    $("#sel_office").change(function () {
        elegido=$(this).val();
        jQuery.ajax({
            url: "/home/office_search/" + elegido,
            type: "GET",
            //data: {"id" : elegido },
            dataType: "html",
            success: function(data) {
                jQuery("#container").html(data);
            }
        });

    });
});
