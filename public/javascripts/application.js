jQuery(function($){
  $("#tweets").update(function(){
    $(this).attr({
      scrollTop: $(this).attr("scrollHeight")
    });
  });
});