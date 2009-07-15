jQuery(function($){
  document.body.ondragstart = function(e){
    e.dataTransfer.effectAllowed = "none";
  };
  
  document.body.ondrag = function(e){
    var currentWindow = Titanium.UI.currentWindow;
    currentWindow.setX(e.screenX);
    currentWindow.setY(e.screenY);
  };
});