$(document).ready(function() {
  $(".add-ingredient").click(function(){
    $('form#searchbox').append("<input name = 'ingredients[]' id='search' type='text' placeholder='Type here'>");

  });

});
