$(document).ready(function(){

	console.log();
	
	var productosEdicion = new Array();
	var productosOpcion ="";
	var productosEmpresa = JSON.parse($('#productos').val());
	if(productosEmpresa["checkPagina"]){
		console.log("checkPagina");
	}if(productosEmpresa["checkQRR"]){
		console.log("checkQRR");
	}if(productosEmpresa["checkQRE"]){
		console.log("checkQRE");
	}if(productosEmpresa["checkPuntoVenta"]){
		console.log("checkQRE");
	}
	// modulos sencillos
	if(productosEmpresa["checkClientePagina"]){
		console.log("checkClientePagina");
		productosOpcion = productosOpcion+'<option value="Registro" >Registro Cliente / Contacto</option>';
	}if(productosEmpresa["checkChatPagina"]){
		console.log("checkChatPagina");
		productosOpcion = productosOpcion+'<option value="Chat" >Modulo Chat</option>';
	}if(productosEmpresa["checkVideoPagina"]){
		console.log("checkVideoPagina");
		productosOpcion = productosOpcion+'<option value="Video" >Modulo Video</option>';
	}if(productosEmpresa["checkTarjetaPagina"]){
		console.log("checkTarjetaPagina");
		productosOpcion = productosOpcion+'<option value="Productos" >Modulo Productos</option>';
	}if(productosEmpresa["checkRetroalimentacionPagina"]){
		console.log("checkRetroalimentacionPagina");
		productosOpcion = productosOpcion+'<option value="Encuesta" >Modulo Encuesta</option>';
	}
	// modulos compuestos
	var ingresaFlag = false;
	if(productosEmpresa["checkCitaPagina"]){
		console.log("checkCitaPagina");
		productosOpcion = productosOpcion+'<option value="Cita" >Modulo Cita Cliente</option>';
		ingresaFlag = true;
	}if(productosEmpresa["checkCarpetaPagina"]){
		console.log("checkCarpetaPagina");
		productosOpcion = productosOpcion+'<option value="Carpeta" >Modulo Documentos Cliente</option>';
		ingresaFlag = true;
	}if(productosEmpresa["checkNotificacionPagina"]){
		console.log("checkNotificacionPagina");
		productosOpcion = productosOpcion+'<option value="Notificacion" >Modulo Notificacion Cliente</option>';
		ingresaFlag = true;
	}
	// complemento modulos compuestos
//	if(ingresaFlag){
//		productosOpcion = productosOpcion+'<option value="Ingresa" >Modulo Ingresa Cliente</option>';
//	}
	
	
	$('.edicionBoton').append(productosOpcion);
	
});