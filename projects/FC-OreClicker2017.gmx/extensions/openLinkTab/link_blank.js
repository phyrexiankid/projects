var link = document.getElementById('canvas');
var canOpen = 0;
var canOpenHref = '';

function openInNewTab() {
	if (canOpen != 0){
  var w = window.open('', 'popup');
  
  // Ajax call
  setTimeout(function() {
    w.location.href = canOpenHref;
  }, 100);}
						
}
					
function canOpenNewTab(a,b){
	canOpen = a;
	canOpenHref = b;
}

link.addEventListener('click', openInNewTab, true);
link.addEventListener("touchend", this.openInNewTab.bind(this), true);