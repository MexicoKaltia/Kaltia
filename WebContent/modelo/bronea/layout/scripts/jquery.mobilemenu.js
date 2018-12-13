

$('<form action="#"><select /></form>').appendTo("#mainav");
$("<option />",{selected:"selected",value:"",text:"MENU"}).appendTo("#mainav select");
$("#mainav a").each(function(){
	var e=$(this);
	if($(e).parents("ul ul ul").length>=1){
		$("<option />",{value:e.attr("href"),text:"- - - "+e.text()}).appendTo("#mainav select")
	}else if($(e).parents("ul ul").length>=1){
		$("<option />",{value:e.attr("href"),text:"- - "+e.text()}).appendTo("#mainav select")
	}else if($(e).parents("ul").length>=1){
		$("<option />",{value:e.attr("href"),text:""+e.text()}).appendTo("#mainav select")
	}else{
		$("<option />",{value:e.attr("href"),text:e.text()}).appendTo("#mainav select")}
	});
$("#mainav select").change(function(){
	if($(this).find("option:selected").val()!=="#"){
		window.location=$(this).find("option:selected").val()
		}
	});

//$('<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar"><span class="navbar-toggler-icon">hola2</span></button>').appendTo("#mainav");
//$('<span class="navbar-toggler-icon">hola</span>').appendTo("#mainav button");
//$('<div class="collapse navbar-collapse" id="collapsibleNavbar1"></div>').appendTo('#mainav');