$(document).ready(function(){

	  $("#f1ID").autocomplete({
	    source: '/display/get_drugs',


	    select: function(event, ui) {
	$(this).val(ui.item.description);
	$("#contribution_first_item_id").val(ui.item.id);

	     return false;
	    }

	  })

	   .data( "autocomplete" )._renderItem = function( ul, item ) {
		console.log(item);
	   var display_name = item.description;
	      return $( "<li></li>" ).data( "item.autocomplete", item )
	      .append( "<a>" + display_name + "</a>" ).appendTo( ul );

	   };
	
	
	
	
	
	
	  $("#f2ID").autocomplete({
	    source: '/display/get_drugs',


	    select: function(event, ui) {
	$(this).val(ui.item.description);
	$("#contribution_second_item_id").val(ui.item.id);

	     return false;
	    }

	  })

	   .data( "autocomplete" )._renderItem = function( ul, item ) {
		console.log(item);
	   var display_name = item.description;
	      return $( "<li></li>" ).data( "item.autocomplete", item )
	      .append( "<a>" + display_name + "</a>" ).appendTo( ul );

	   };
	



	
});

