$(document).ready(function(){

  $("input.drug_autocomplete").autocomplete({
    source: '/display/get_drugs',
  
    focus: function(event, ui) {
      $('input.drug_autocomplete').val(ui.item.product_name);
      return false;
    },
  
    select: function(event, ui) {
  	console.log("Ok");
     return false;
    }
      
  })

  .data( "autocomplete" )._renderItem = function( ul, item ) {
   var display_name = item.description;
    return $( "<li></li>" ).data( "item.autocomplete", item )
    .append( "<a>" + display_name + "</a>" ).appendTo( ul );
  };


	
});