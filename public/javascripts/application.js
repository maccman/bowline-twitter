jQuery(function($){
  $('.select input:first').select();
});


(function($){
  $.fn.loading = function(toggle){
    $(this).toggleClass('loading', toggle);
  };
}(jQuery));