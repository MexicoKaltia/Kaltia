$(document).ready(function() {
					
	/*    Funciones de ingreso login 
	 *  en la pagina principal de Kaltia 
	 */
	$('#ingresar').click(function() {
		var nuevo = $('#elemento').load("bronea/pages/Ingresar.html");
		nuevo.slideToggle("slow");
	})
	//************
	$('.goIngresar').click(function() {
		$('.goIngresarForm').submit();
	});
	//*************
	$('#registrar').click(function() {
		var nuevo = $('#elemento').html(
		"<form action='registrar' class='goRegistrarForm'><p><label for='user'>User</label><input type='text'></p><p><label for='pass'>Password</label><input type='pass'></p><p><label for='email'>Email</label><input type='email'></p><p><button class='goRegistrar'>registrar</button></p></form>");
		nuevo.slideToggle("slow");
	})
	//************
	$('.goRegistrar').click(function() {	
		$('.goRegistrarForm').submit();
	});			
	/*    FIN  login en la pagina principal de Kaltia */
	
	
	/***********************************************************************************************************************************************************/
	//funciones de prueba
	
	
	
	
	
	
	/***********************************************************************************************************************************************************/
	/*  Funciones de Edicion 
	 * 	Activar y Desactivar las secciones de Edicion
	 * 	por medio de parametros URL
	 */
//	$.urlParam = function(tipo){
//		var results = new RegExp('[\?&]' + tipo + '=([^&#]*)').exec(window.location.href);
//		if (results==null){
//		       return null;
//		    }
//		    else{
//		    	console.log("PARAM1:"+decodeURI(results[1]));
//		       return decodeURI(results[1]) || 0;
//		    }
//	}
	$.paramInicial = "AAA";
	$.variableParam = "tipo";
	$.param ="";
	$.jsonSeccion ="";
	$.valoresOriginal="";
	$.valoresActualizados="";
//	$.respuestaSeccion ="";

	//var url = "http://31.220.60.92:8010/";
	var url = "http://localhost:8010/mod/sdd";//"http://localhost:8012/mail";
	var arrayTextActualizado ="";
	var arrayTextOriginal ="";
	
	$.urlParam = $(function(){
		var results = new RegExp('[\?&]' + $.variableParam + '=([^&#]*)').exec(window.location.href);
		console.log(window.location.href);
		if (results == null){
			_desactiveSeccionEdicion();
			console.log("results null")
		       return null;
		    }else{
		    	if(decodeURI(results[1]) === $.paramInicial){
		    		$('div.headerSeccion1').addClass("edicion")
		    		$('div.headerSeccion2').addClass("edicion")
		    		$('div.headerSeccion3').addClass("edicion")
		    		$('div.headerSeccion4').addClass("edicion")
		    		$('div.headerSeccion5').addClass("edicion")
		    		$('div.headerSeccionArray1').addClass("edicion")
		    		$('div.headerSeccionArray2').addClass("edicion")
		    		$('div.headerSeccionArray3').addClass("edicion")
		    		$('div.headerSeccionArray4').addClass("edicion")
		    		$('div.headerSeccionArray5').addClass("edicion")
		    		//
		    		$('div.bodySeccion1').addClass("edicion")
					$('div.bodySeccion2').addClass("edicion")
					$('div.bodySeccion3').addClass("edicion")
					$('div.bodySeccion4').addClass("edicion")
					$('div.bodySeccion5').addClass("edicion")
					$('div.bodySeccionArray1').addClass("edicion")
					$('div.bodySeccionArray2').addClass("edicion")
					$('div.bodySeccionArray3').addClass("edicion")
					$('div.bodySeccionArray4').addClass("edicion")
					$('div.bodySeccionArray5').addClass("edicion")
					//
					$('div.footerSeccion1').addClass("edicion")
					$('div.footerSeccion2').addClass("edicion")
					$('div.footerSeccion3').addClass("edicion")
					$('div.footerSeccion4').addClass("edicion")
					$('div.footerSeccion5').addClass("edicion")
					$('div.footerSeccionArray1').addClass("edicion")
					$('div.footerSeccionArray2').addClass("edicion")
					$('div.footerSeccionArray3').addClass("edicion")
					$('div.footerSeccionArray4').addClass("edicion")
					$('div.footerSeccionArray5').addClass("edicion")
		    	//console.log("PARAM1:"+decodeURI(results[1]));
		    	$.param = decodeURI(results[1]);
		       //return decodeURI(results[1]) || 0;
		    	return $.param;
		    	}
		    	else{
		    		_desactiveSeccionEdicion();
		    		console.log("PARAM NO VALIDO");
		    	}
		    }		
	})
	
	function _desactiveSeccionEdicion(){
		$('div').removeClass("edicion headerSeccion1 headerSeccion2 headerSeccion3 headerSeccion4 headerSeccion5")
		$('div').removeClass("edicion headerSeccionArray1 headerSeccionArray2 headerSeccionArray3 headerSeccionArray4 headerSeccionArray5")
		$('div').removeClass("edicion bodySeccion1 bodySeccion2 bodySeccion3 bodySeccion4 bodySeccion5")
		$('div').removeClass("edicion bodySeccionArray1 bodySeccionArray2 bodySeccionArray3 bodySeccionArray4 bodySeccionArray5")
		$('div').removeClass("edicion footerSeccion1 footerSeccion2 footerSeccion3 footerSeccion4 footerSeccion5")
		$('div').removeClass("edicion footerSeccionArray1 footerSeccionArray2 footerSeccionArray3 footerSeccionArray4 footerSeccionArray5")


		$('nav').removeClass("edicion")
	}
	   
	
	function seccionLectura (action, section, callback) {
		  var scriptURL = "somefile.php?name=" + action + section;
		  return $.getJSON("http://rest-service.guides.spring.io/greeting", callback);
	}

	/*
	//METODO SINCRONO PARA INVOCAR AL SECCION LECTURA
	function _getDataSeccion(action, section, jsonLectura){
		console.log(action+":1:"+seccion);
		console.log($.param);
		parametroCliente = {"action":action, "section":section};
//		$.getJSON("http://rest-service.guides.spring.io/greeting", resultData, async: false);
		$.ajax({
			dataType: "json",
			url: "http://rest-service.guides.spring.io/greeting",
			type: "GET",
			async: false,
			success: resultData
		})
	}
	
	function resultData(respuesta){
		console.log(respuesta);		
		$.respuestaSeccion = respuesta;
		return $.respuestaSeccion;
	}
	//FIN METODO SINCRONO PARA INVOCAR AL SECCION LECTURA  */
	/*
	 * Metodo para pintar el MODAL con los campos de jsonCampos
	 */
	function elementosCampos(jsonSeccion){
		for (var tipo in jsonSeccion){
			  // Controlando que json realmente tenga esa propiedad
			  
				  var texto = "<div class='row'><div class='col-xs-1'><label style='color:#00FFFF;font-size:12px;'>"+tipo+"</label></div><div class='col-xs-3'><input id="+tipo+" name="+tipo+" placeholder="+tipo+" class='form-control input-md' type='text'  value="+jsonSeccion[tipo]+"></div></div>";
				  var file = "<form id='upload-file-form'><label for='upload-file-input'>Actualiza imagen jpeg:</label><input id='upload-file-input' type='file' name='uploadfile' accept='image/jpeg' /></form>";//"<div class='row'><div class='col-xs-1'><label style='color:#00FFFF;font-size:12px;'>"+tipo+"</label></div><div class='col-xs-3'><div class='upload-file'><input id="+tipo+" name="+tipo+" placeholder="+tipo+" type='file' class='upload-file-input' value="+jsonSeccion[tipo]+"><label class='upload-file-label' for="+tipo+">"+jsonSeccion[tipo]+"</label></div></div></div>";
				  var lorem = "<div class='row'><div class='col-xs-1'><label style='color:#00FFFF;font-size:12px;'>"+tipo+"</label></div><div class='col-xs-3 form-group'><textarea class='form-control' id="+tipo+" name="+tipo+"   rows='5' value="+jsonSeccion[tipo]+"></textarea></div></div>";
				  //var agregar = "<div class='row'><span class='col-md-1 col-md-offset-2 text-center'><label style='color:#00FFFF;font-size:12px;'>ReferenciaX</label></span><div class='col-md-8'><input id='referencia' name='referencia' type='text' placeholder='referencia' class='form-control'></div></div><div class='row'><span class='col-md-1 col-md-offset-2 text-center'><label style='color:#00FFFF;font-size:12px;'>Texto</label></span><div class='col-md-8'><input id='texto' name='texto' type='text' placeholder='Texto' class='form-control'></div></div><div class='input-group-prepend' id='agregarStr'><span class='btn btn-link' id='inputGroup-sizing-sm'>Agregar</span></div>";
				  var agregarReferencia = "<div class='row'><div class='col-xs-1'><label style='color:#00FFFF;font-size:12px;'>ReferenciaX</label></div><div class='col-xs-3'><input id='agregarReferencia'  class='form-control input-md' type='text'></div></div>";
				  var agregarTexto ="<div class='row'><div class='col-xs-1'><label style='color:#00FFFF;font-size:12px;'>Texto</label></div><div class='col-xs-3'><input id='agregarTexto'  class='form-control input-md' type='text'></div></div>";
				  var agregarBoton ="<div class='input-group-prepend' id='agregarStr'><span class='btn btn-link agregarStr' id='inputGroup-sizing-sm'>Agregar</span></div>";
				  var valor ="";
				if (jsonSeccion.hasOwnProperty(tipo)) {
					console.log("tipo de dato : "+tipo);
			    switch (tipo) { 
				case "arrayText":
					valor  = $(agregarBoton).html();
					$(valor).insertAfter($('.soloLectura_in'));
					valor  = $(agregarReferencia).html();
					$(valor).insertAfter($('.soloLectura_in'));
					valor  = $(agregarTexto).html();
					$(valor).insertAfter($('.soloLectura_in'));
					

					arrayText = jsonSeccion[tipo].split(",");
					for(i=0; i<arrayText.length;i++ ){
						single = arrayText[i];
						console.log("single:"+single);
						arraySingle = single.split(".");
						for(e =0;e<arraySingle.length;e++){
							if(e===0){
							valor ="<div class='row'><div class='col-md-3'><label style='color:#00FFFF;font-size:12px;'>Referencia</label></div><div class='col-xs-3'><div class='input-group'><input type='text' class='form-control' aria-label='Text input with checkbox' value="+arraySingle[e]+"><div class='input-group-prepend'><div class='input-group-text'><input type='checkbox' aria-label='Checkbox for following text input'><hr style='color: #0056b2;' /></div></div></div></div></div>";
							}
							else{
							valor ="<div class='row'><div class='col-md-3'><label style='color:#00FFFF;font-size:12px;'>Texto</label></div><div class='col-xs-3'><div class='input-group'><input type='text' class='form-control' aria-label='Text input with checkbox' value="+arraySingle[e]+"></div></div></div>";
							}
							valor = $(valor).html(); 
							$(valor).insertAfter($('.soloLectura_in'));
						}
						
					}
					break;
				case "telefono":
					valor = $(texto).html();
//					$(valor).html('<input id="textinput" name="nombreCompleto"	placeholder="Nombre de Empresa Completo" class="form-control input-md" type="text" value="Chilpancingo">');
					 $(valor).insertAfter($('.soloLectura_in'));
					break;
				case "email": 
					valor = $(texto).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "titulo": 
					valor =$(texto).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "icono": 
					valor =$(file).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "varios": 
					valor = $(lorem).html()
					 $(valor).insertAfter($('.soloLectura_in'));
					document.getElementById(tipo).value = jsonSeccion[tipo];
				break;
				case "logo": 
					valor =$(file).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "fondoHeader": 
					valor =$(file).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "subtitulo": 
					valor =$(texto).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "descripcion": 
					valor = $(lorem).html()
					 $(valor).insertAfter($('.soloLectura_in'));
					document.getElementById(tipo).value = jsonSeccion[tipo];
				break;
				case "referencia1": 
					valor = $(texto).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "boton1": 
					valor = $(texto).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "referencia2": 
					valor = $(texto).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "boton2": 
					valor = $(texto).html();
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
			  }
			}
		}
	}
	
	function valoresSeccion(seccion){
		var status = document.getElementById(seccion).innerHTML;
		status= status.toString().trim();
		console.log(status);
		status = status.slice(1,-1)
		status = status.split(",");
		for(var o=0; o<status.length; o++){
			if(o!==0)
			status[o] = status[o].slice(1);
			}
		return status;
		}
	
	function ajusteJson(jsonCampos , valores){
//		console.log(valores);
		var indice = 0;
		var jsonSeccion = "{";
		for (var tipo in jsonCampos){
			  // Controlando que json realmente tenga esa propiedad
			  if (jsonCampos.hasOwnProperty(tipo)) {
				    // Mostrando en pantalla la clave junto a su valor
				  if(tipo === "arrayText"){
					    console.log("La clave es " + tipo+ " y el tipo es " + jsonCampos[tipo]+ " y el valor es:"+valores);
					    jsonSeccion = jsonSeccion+'"'+tipo+'":"'+valores+'",';					  
					    }else{
					    console.log("La clave es " + tipo+ " y el tipo es " + jsonCampos[tipo]+ " y el valor es:"+valores[indice]);
					    jsonSeccion = jsonSeccion+'"'+tipo+'":"'+valores[indice]+'",';					  
				  }
			  }
			  indice++;
		}
		jsonSeccion = jsonSeccion.slice(0,jsonSeccion.length-1) + "}";
//		$.valoresOriginal = JSON.parse(jsonSeccion);
//		console.log(jsonSeccion);
		return JSON.parse(jsonSeccion);
	}
	
//	function valoresActualizados(seccionNombre, jsonCampos){
//		console.log("valoresActualizados");
//		var valoresActualizados = "{";
//		for (var tipo in jsonCampos){
//			valoresActualizados = valoresActualizados+'"'+tipo+'":"'+$("#"+tipo).val()+'",';
//		}
//		valoresActualizados = valoresActualizados.slice(0,valoresActualizados.length-1) + "}";
//		console.log(valoresActualizados);
//		return JSON.parse(valoresActualizados);
//
//	}
	
	$('#modalEdicion_btnClose').click(function(){
		alert("Sin Guardar cambios");
		$("div.soloLectura > div").remove();
		console.log($("div.soloLectura").html());
	});
	$('#modalEdicion_btnSave').click(function(){
		$("div.alerta > div").remove();
		var valoresActualizados = "{";
		for (var tipo in jsonCampos){
			if(tipo === "arrayText"){
				valoresActualizados = valoresActualizados+'"'+tipo+'":"'+$.arrayTextActualizado+'",';
				console.log($.arrayTextActualizado);
			}else{
				valoresActualizados = valoresActualizados+'"'+tipo+'":"'+$("#"+tipo).val()+'",';
				console.log($("#"+tipo).val());
			}
			
			/*
			 * CORREGIR LA FUNCION DE VALIDAR DATOS !!!
			 */
			if(!validaTipo(tipo, $("#"+tipo).val())){
				return false;
			}
		}
		valoresActualizados = valoresActualizados.slice(0,valoresActualizados.length-1) + "}";

		$.valoresActualizados=JSON.parse(valoresActualizados);
		console.log("valoresActualizados");
		console.log($.valoresActualizados);
		console.log("valoresOriginales");
		console.log($.valoresOriginal); 

		if(JSON.stringify($.valoresOriginal) === JSON.stringify($.valoresActualizados))
			alert("No hay Cambios");
		else{
			alert("Esta Seguro Guardar cambios");
//			console.log($.valoresActualizados.toString())
//			$.getJSON(url, function (data) {
//				console.log("ingreso a get");
//			      console.log(data);
//			      var items = data.item(function (item) {
//			        console.log(item.key + ': ' + item.value);
//			      });
//		      });
//			$.post( url, JSON.stringify($.valoresActualizados), 'application/json')
//			  .done(function( data ) {
//				  console.log(data);
//				  alerta="<div class='alert alert-success' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
//					$(alerta).insertAfter($('.alerta_in'));
//			  });
			$.ajax({
			   	  url: url,
			      dataType: 'json',
				  type: 'POST',
				  contentType: "application/json",
				  data: JSON.stringify($.valoresActualizados),
				  headers: {  'Access-Control-Allow-Origin': url, 'Access-Control-Allow-Methods': 'POST, GET, OPTIONS', 'Access-Control-Allow-Headers': 'X-PINGOTHER' },
				  crossDomain: true,
				  success: 	function(data){					  
					  console.log(data);
					  alerta="<div class='alert alert-success' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
						$(alerta).insertAfter($('.alerta_in'));
					},
				  error: function(){
					  alerta="<div class='alert alert-danger' role='alert'>Error de Enlace</div>";
						$(alerta).insertAfter($('.alerta_in'));
				  }
				});
		}
	});

	function validaTipo(tipo , valor){
		console.log(tipo);
		console.log(valor);
		var texto = /^[A-Za-z0-9]$/;
		var validaStatus =[ true, "",""];
		switch (tipo) { 
		case "arrayText": 
			console.log(tipo);
		break;
		case "telefono":
			  var expreg = /^\+?\d{1,3}?[- .]?\(?(?:\d{2,3})\)?[- .]?\d\d\d[- .]?\d\d\d\d$/;
			  if(!expreg.test(valor)){ 
				  validaStatus=[false,"El numero telefono NO es correcto","Debe ser formato 123456789"];
			    console.log("El numero telefono NO es correcto");
			  }
		break;
		case "email":
			var expreg = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/;
			  if(!expreg.test(valor)){ 
				  validaStatus=[false,"El email NO es correcto","Debe ser formato user@dominio.com"];
			    console.log("El email NO es correcto");
			  }
		break;
		case "titulo": 
			//var expreg = texto;
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" valor:"+valor+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+" valor:"+valor+" NO es correcto");
//			  }
		break;
		case "icono": 
			console.log(tipo);
			
		break;
		case "varios": 
			//var expreg = texto;
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+" NO es correcto");
//			  }
		break;
		case "logo": 
			console.log(tipo);
		break;
		case "fondoHeader": 
			console.log(tipo);
			uploadFile(tipo);
		break;
		case "subtitulo": 
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+":"+valor+" NO es correcto");
//			  }
		break;
		case "descripcion": 
			console.log(tipo);
		break;
		case "referencia1": 
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+" NO es correcto");
//			  }		
		break;
		case "boton1": 
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+" NO es correcto");
//			  }
		break;
		case "referencia2": 
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+" NO es correcto");
//			  }
		break;
		case "boton2": 
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+" NO es correcto");
//			  }
		break;
		}
		
		if(!validaStatus[0]){
			alerta='<div class="alert alert-danger" role="alert">'+validaStatus[1]+'\n'+validaStatus[2]+'</div>';
			$(alerta).insertAfter($('.alerta_in'));
			//var validaStatus =[ true, false,""];
		}
		valor="";
		return validaStatus[0];
	}
	
	function uploadFile() {
		  $.ajax({
		    url: "http://localhost:8010/fileUpload",
		    type: "POST",
		    data: new FormData($("#upload-file-form")[0]),
		    enctype: 'multipart/form-data',
		    processData: false,
		    contentType: false,
		    cache: false,
		    success: function () {
		      // Handle upload success
		      // ...
		      alert("exito")
		    },
		    error: function () {
		      // Handle upload error
		      // ...
		      alert("negative")
		    }
		  });
		} // function uploadFile


	
	
	
	$('.headerSeccion1').click(function(){
		if($.param === $.paramInicial){
			console.log(window.location.href);
			jsonCampos = {"arrayText" :"text"}
			var valores = valoresSeccion("headerSeccion1_valores");
			$.valoresOriginal = ajusteJson(jsonCampos, valores);
			
			$('.headerSeccion1').attr("data-toggle","modal");
			$('.headerSeccion1').attr("data-target","#modalEdicion");
			$("div.soloLectura > div").remove();
			$("div.alerta > div").remove();
			
			elementosCampos($.valoresOriginal);
			
//			_getDataSeccion(action, seccion, jsonLectura)    SINCRONO	 
//		seccionLectura(action, seccion, function(data){  //     ASYNCRONO
//			$.respuestaSeccion = data;
//			console.log($.respuestaSeccion)
//			 $.respuestaSeccion = {"arrayText":["ACERCA DE NOSOTROS.referencia1",  "CONTACTO.referencia2", "REGISTRO.referencia3", "INGRESA.referencia4"]};
//			//console.log($.respuestaSeccion)
//			elementosCampos($.respuestaSeccion, jsonCampos)			
//	   });
			$.arrayTextActualizado = $.valoresOriginal.arrayText.split(",");
			$.arrayTextOriginal = $.valoresOriginal.arrayText;
			$('.agregarStr').click(function(){
				var  valor2 =null;
//				console.log($('#agregarTexto').val());
//				console.log($('#agregarReferencia').val());
				if($('#agregarTexto').val() !== "" && $('#agregarReferencia').val() !== ""){
				var valor3 ="<div class='row'><div class='col-xs-3'><label style='color:#00FFFF;font-size:12px;'>Referencia</label></div><div class='col-xs-3'><div class='input-group'><input type='text' class='form-control' aria-label='Text input with checkbox' value="+$('#agregarReferencia').val()+"><div class='input-group-prepend'><div class='input-group-text'><input type='checkbox' aria-label='Checkbox for following text input'></div></div></div></div></div>";
				valor3 = $(valor3).html();
				 $(valor3).insertAfter($('.soloLectura_in'));
				valor3 = "<div class='row'><div class='col-xs-3'><label style='color:#00FFFF;font-size:12px;'>Texto</label></div><div class='col-xs-3'><div class='input-group'><input type='text' class='form-control' aria-label='Text input with checkbox' value="+$('#agregarTexto').val()+"></div></div></div>";
				valor3 = $(valor3).html();
				 $(valor3).insertAfter($('.soloLectura_in'));		 
					$.arrayTextActualizado.push($('#agregarTexto').val()+"."+$('#agregarReferencia').val());
					$('#agregarReferencia').val("")
					$('#agregarTexto').val("")
					console.log($.arrayTextActualizado)
					console.log($.valoresOriginal.arrayText);
				}
			})
//			$('#modalEdicion_btnClose').click(function(){
//				alert("Sin Guardar cambios");
//				$("div.soloLectura > div").remove();
//				console.log($("div.soloLectura").html());
//			});
//			$('#modalEdicion_btnSave').click(function(){
////				console.log(jsonSeccion.arrayText)
////				console.log(arrayTextActualizado.toString())
//				if($.arrayTextOriginal.toString() === $.arrayTextActualizado.toString())
//					alert("No hay Cambios");
//				else{
//					alert("Esta Seguro Guardar cambios");
//					console.log($.arrayTextActualizado.toString())
//
//					$.ajax({
//						  type: "POST",
//						  url: url,
//						  data: $.arrayTextActualizado,
//						  success: success,
//						  dataType: JSON
//						});
//					
//				}
//				//console.log($("div.soloLectura").html());
//			});

		}else{
			console.log("param:Nulo");
		}
	});
	
	
	
	$('.headerSeccion2').click(function(){
		if($.param != null){
			console.log("param:"+$.param)
			action = "action";
			seccion = "seccion";
			
			jsonCampos = {"telefono" : "text","email" : "text"}
			valores = valoresSeccion("headerSeccion2_valores");
			
			$.valoresOriginal = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion2').attr("data-toggle","modal");
			$('.headerSeccion2').attr("data-target","#modalEdicion");
			$("div.soloLectura > div").remove();
			$("div.alerta > div").remove();
			
			elementosCampos($.valoresOriginal);
			
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.headerSeccion3').click(function(){
		if($.param != null){
			console.log("param:"+$.param)
			action = "action";
			seccion = "seccion";
			
			jsonCampos = {"titulo":"text",  "icono":"img",  "varios" : "lorem",  "logo":"img",  "fondoHeader":"img"}
			valores = valoresSeccion("headerSeccion3_valores");
			
			$.valoresOriginal = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion3').attr("data-toggle","modal");
			$('.headerSeccion3').attr("data-target","#modalEdicion");
			$("div.soloLectura > div").remove();
			$("div.alerta > div").remove();
			
			elementosCampos($.valoresOriginal);
			
		}else{
			console.log("param:Nulo");
		}
	});
	$('.headerSeccion4').click(function(){
		if($.param != null){
			console.log("param:"+$.param)
			action = "action";
			seccion = "seccion";
			
			jsonCampos = {"subtitulo":"text",  "titulo":"text",  "descripcion" :"lorem",  "referencia1" : "text",  "boton1" : "boton",  "referencia2" : "text",  "boton2" : "boton"}
			valores = valoresSeccion("headerSeccion4_valores");
			
			$.valoresOriginal = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion4').attr("data-toggle","modal");
			$('.headerSeccion4').attr("data-target","#modalEdicion");
			$("div.soloLectura > div").remove();
			$("div.alerta > div").remove();
			
			elementosCampos($.valoresOriginal);
			
		}else{
			console.log("param:Nulo");
		}
	});
});