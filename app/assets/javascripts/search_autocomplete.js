$(document).ready(function(){

  $("input.drug_autocomplete").autocomplete({
    source: '/display/get_drugs',
      // focus: function(event, ui) {
      //   $('input.drug_autocomplete').val(ui.item.product_name);
      //   return false;
      // },

    select: function(event, ui) {
  	console.log("Ok");
$(this).val(ui.item.description);
console.log(this);
     return false;
    }
      
  })

   .data( "autocomplete" )._renderItem = function( ul, item ) {
	//return item.description;
	console.log(item);
   var display_name = item.description;
      return $( "<li></li>" ).data( "item.autocomplete", item )
      .append( "<a>" + display_name + "</a>" ).appendTo( ul );
   };

	
});