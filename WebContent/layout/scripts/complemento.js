function indiceOf(cadena){
	return cadena.substring(0, cadena.indexOf("."))+".jsp";
}
function indiceLastOf(cadena){
	return "/"+cadena.substring(cadena.lastIndexOf(".")+1, cadena.length);
}
