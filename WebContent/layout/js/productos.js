$(document).ready(function(){

//	console.log();
	

	
	var productosEdicion = new Array();
	var productosOpcion ="";
	var productosEmpresa = JSON.parse($('#productos').val());
	if(productosEmpresa["checkPagina"]){
		productosOpcion = productosOpcion+'<option value="Ubicacion" >Ubicacion</option>';
	}if(productosEmpresa["checkQRR"]){
//		console.log("checkQRR");
	}if(productosEmpresa["checkQRE"]){
//		console.log("checkQRE");
	}if(productosEmpresa["checkPuntoVenta"]){
//		console.log("checkQRE");
	}
	// modulos sencillos
	if(productosEmpresa["checkClientePagina"]){
//		console.log("checkClientePagina");
		productosOpcion = productosOpcion+'<option value="Contacto" >Contacto Cliente</option>';
	}if(productosEmpresa["checkChatPagina"]){
		var numeroChat = $('#numeroChatVal').val();
		productosOpcion = productosOpcion+'<option value="Chat" >Modulo Chat</option>';
		var chatProducto = '<a id="wa" href="https://api.whatsapp.com/send?phone=52'+numeroChat+'&text=hola%20buenas%20tardes,%20quisiera%20tener%20m%C3%A1s%20informacion%20de%20sus%20servcios,%20gracias" target="_blank"><i class="btmspace-30 fab fa-5x fa-whatsapp "></i></a>';
		$('#chatProducto').append(chatProducto);
	}if(productosEmpresa["checkVideoPagina"]){
//		console.log("checkVideoPagina");
		productosOpcion = productosOpcion+'<option value="Video" >Modulo Video</option>';
	}if(productosEmpresa["checkTarjetaPagina"]){
//		console.log("checkTarjetaPagina");
		productosOpcion = productosOpcion+'<option value="Productos" >Modulo Productos</option>';
	}if(productosEmpresa["checkRetroalimentacionPagina"]){
//		console.log("checkRetroalimentacionPagina");
		productosOpcion = productosOpcion+'<option value="Encuesta" >Modulo Encuesta</option>';
	}
	// modulos compuestos
	var ingresaFlag = false;
	if(productosEmpresa["checkCitaPagina"]){
//		console.log("checkCitaPagina");
		productosOpcion = productosOpcion+'<option value="Cita" >Modulo Cita Cliente</option>';
		ingresaFlag = true;
	}if(productosEmpresa["checkCarpetaPagina"]){
//		console.log("checkCarpetaPagina");
		productosOpcion = productosOpcion+'<option value="Carpeta" >Modulo Documentos Cliente</option>';
		ingresaFlag = true;
	}if(productosEmpresa["checkNotificacionPagina"]){
//		console.log("checkNotificacionPagina");
		productosOpcion = productosOpcion+'<option value="Notificacion" >Modulo Notificacion Cliente</option>';
		ingresaFlag = true;
	}
	// complemento modulos compuestos
//	if(ingresaFlag){
//		productosOpcion = productosOpcion+'<option value="Ingresa" >Modulo Ingresa Cliente</option>';
//	}
	
	$('.edicionBoton').append(productosOpcion);
	
	
	
	
});

$('#selVideo').hide();
$('.edicionBoton').change(function(){
	var selBoton = $(this).val();
//	console.log(selBoton);
	if(selBoton === "Video"){
		$(this).after('<select class="custom-select form-control" id=selVideo></select>')
		var videos = $('#videos').val();
		videos = JSON.parse(videos);
		$('#selVideo').empty();
		var	opcionVideo = '<option value="" selected>Seleccione Video</option>';
		$('#selVideo').append(opcionVideo);
		for(a in videos){
			opcionVideo =  '<option value="'+videos[a].videoContexto+'">'+videos[a].videoTitulo+'</option>';
			$('#selVideo').append(opcionVideo);
		}
		$('#selVideo').show();
		$('#selVideo').change(function(){
			var selVideo = $('#selVideo').val();
			
			var idSel = $('.edicionBoton').attr("id");
			$videoFinal = "Video**"+selVideo;
//			console.log($videoFinal);
//			console.log("B");
//			console.log(idSel);
			
		});
	}
});

