$(document).ready(function() {
  $(".add-ingredient").click(function(){
    $('form#searchbox').append("<input name = 'ingredients[]' id='search' type='text' placeholder='Type here'>");

  });
   $(".add-ingred").click(function(){
    $("<input name = 'individual_ingredients[]' type='text' placeholder='Ingredient'>").insertAfter('#append-here');

  });

});
