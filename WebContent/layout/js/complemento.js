
					
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
	/*  Funciones de Edicion Version 1
	 * 	Activar y Desactivar las secciones de Edicion
	 * 	por medio de parametros URL
	 */
	
	$.paramInicial = "AAA";
	$.variableParam = "tipo";
	$.param ="";
	$.jsonSeccion ="";
	$.valoresOriginal="";
	$.valoresActualizados="";
	$.action="";
	var url = "http://31.220.60.92:8010/";
//	var url = "http://localhost:8010/";
	var arrayTextActualizado ="";
	var arrayTextOriginal ="";
	
	$.urlParam = $(function(){
		var results = new RegExp('[\?&]' + $.variableParam + '=([^&#]*)').exec(window.location.href);
		console.log(window.location.href);
		urlAction = window.location.href;
		action = urlAction.split("\/");
		
		//actionProd -- para pruebas locales comentar las siguientes lineas
		urlAction = "http://kaltia.xyz/bronea?tipo=AAA"
		action = urlAction.split("\/");
		actionProd = action[3].split("\?");
		action[3] = actionProd[0]
		// fin actionProd
		
		$.action = action[3];
		console.log(action[3]);
		
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
		    	$.param = decodeURI(results[1]);
		    		console.log($.param);
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
	   
/*
 *  METODO FUNCION QUE HACE LECTURA DE MANERA ASINCRONA 
 */	
//	function seccionLectura (action, section, callback) {
//		  var scriptURL = "somefile.php?name=" + action + section;
//		  return $.getJSON("http://rest-service.guides.spring.io/greeting", callback);
//	}

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
	 *  Validacion para activar las sentencias de modalEdicion
	 */
	function validaParam(){
		if($.param != null && $.param === $.paramInicial){
			return true;
		}else{
			return false;
		}
	}
	
	
	/*
	 *  Metodo para recuperar los valores de ORIGEN de la seccion y retornar un arreglo
	 */
	function valoresSeccion(seccion){
		if(seccion.includes("Array")){
			console.log(seccion[0].objetoVO[0])
			
		}else{
		var status = document.getElementById(seccion).innerHTML;
		status= status.toString().trim();
		//console.log(status);
		status = status.slice(1,-1)
		status = status.split(",");
		for(var o=0; o<status.length; o++){
			if(o!==0)
			status[o] = status[o].slice(1);
			}
		return status;
		}
	}
	/*
	 *  Metodo para configurar los valores Origen y retornar un JSON
	 */
	function ajusteJson(jsonCampos , valores){
		var indice = 0;
		var jsonSeccion = "{";
		for (var tipo in jsonCampos){
			  // Controlando que json realmente tenga esa propiedad
			  if (jsonCampos.hasOwnProperty(tipo)) {
				    // Mostrando en pantalla la clave junto a su valor
				  if(tipo === "arrayText"){
					    //console.log("La clave es " + tipo+ " y el tipo es " + jsonCampos[tipo]+ " y el valor es:"+valores);
					    jsonSeccion = jsonSeccion+'"'+tipo+'":"'+valores+'",';					  
					    }else{
					    //console.log("La clave es " + tipo+ " y el tipo es " + jsonCampos[tipo]+ " y el valor es:"+valores[indice]);
					    jsonSeccion = jsonSeccion+'"'+tipo+'":"'+valores[indice]+'",';			
				  }
			  }
			  indice++;
		}
		jsonSeccion = jsonSeccion.slice(0,jsonSeccion.length-1) + "}";
//		console.log(JSON.parse(jsonSeccion));
		return JSON.parse(jsonSeccion);
	}

	
	/*
	 * Metodo para pintar el MODAL con los campos y valores Originales de jsonCampos
	 */
	function elementosCampos(jsonSeccion){
		for (var tipo in jsonSeccion){
			  // Controlando que json realmente tenga esa propiedad
			  //console.log(tipo+":"+jsonSeccion[tipo]);
				  var texto = "<div class='row'><div class='col-sm-2'><label style='color:#00FFFF;font-size:12px;'>"+tipo+"</label></div><div class='col-sm-10'><input id='"+tipo+"' name='"+tipo+"' placeholder='"+tipo+"' class='form-control input-md' type='text'  value='"+jsonSeccion[tipo]+"'></div></div><hr style='color: #0056b2;'>";
				  var imagen = "<form id='upload-file-form' class='"+tipo+"'><div class='row'><div class='col-sm-2'><label for='upload-file-input' style='color:#00FFFF;font-size:12px;'>"+tipo+"</label></div><div class='col-sm-10'><input id='"+tipo+"' name='"+tipo+"' placeholder='"+tipo+"' class='form-control input-md' type='text'  value='"+jsonSeccion[tipo]+"' readonly></div><div class='row'><div class='col-sm'><span/></div><div class='col-sm-9'><input id='upload-file-input'  class='"+tipo+"Imagen' type='file' name='uploadfile' accept='image/jpeg' /></div></div></form><hr style='color: #0056b2;'>";
				  var agregarReferencia = "<div class='row'><div class='col-sm-2'><label style='color:#00FFFF;font-size:12px;'>ReferenciaX</label></div><div class='col-sm-10'><input id='agregarReferencia'  class='form-control input-md' type='text'></div></div><hr style='color: #0056b2;'>";
				  var agregarTexto ="<div class='row'><div class='col-sm-2'><label style='color:#00FFFF;font-size:12px;'>Texto</label></div><div class='col-sm-10'><input id='agregarTexto'  class='form-control input-md' type='text'></div></div><hr style='color: #0056b2;'>";
				  var agregarBoton ="<div class='input-group-prepend' id='agregarStr'><span class='btn btn-link agregarStr' id='inputGroup-sizing-sm'>Agregar</span></div>";
				  var lorem = "<div class='row'><div class='col-sm-2'><label style='color:#00FFFF;font-size:12px;'>"+tipo+"</label></div><div class='col-sm-10 form-group'><textarea class='form-control' id='"+tipo+"' name='"+tipo+"'   rows='5' value='"+jsonSeccion[tipo]+"'></textarea></div></div><hr style='color: #0056b2;'>";
					
				  var valor ="";
				if (jsonSeccion.hasOwnProperty(tipo)) {
			    switch (tipo) { 
				case "arrayText":	
//					console.log(jsonSeccion);
					var arrayText = jsonSeccion[tipo].split("\,");
					var arrayJson = '{"arrayText":['
					for(i=0; i<arrayText.length;i++ ){
						arrayJson = arrayJson + '"' + arrayText[i] + '",' 
//						single = arrayText[i];
					}
					arrayJson = arrayJson.slice(0,arrayJson.length-1) + ']}'; 
//					console.log(arrayJson);
					jsonSeccion = JSON.parse(arrayJson);
//					console.log(jsonSeccion);
					$.each(jsonSeccion[tipo], function(i , val){
						var valor ="<div class='row'><div class='col-sm-3'><label style='color:#00FFFF;font-size:12px;'>Referencia "+[i+1]+"</label></div><div class='col-sm-9'><div class='input-group'><input type='text' class='form-control' id="+tipo+i+" aria-label='Text input with checkbox' value='"+val+"'></div></div></div>";
						$('.soloLectura').append(valor);
//						console.log(tipo+i);
//						console.log($('#arrayText'+i).val());
//						console.log(val)
//						document.getElementById(tipo+i).value = val;//jsonSeccion[tipo];
					});
					
//					$('.soloLectura').append(agregarReferencia);
//					$('.soloLectura').append(agregarTexto);
//					$('.soloLectura').append(agregarBoton);
				break;
				case "telefono":
					$('.soloLectura').append(texto);
				break;
				case "email": 
					$('.soloLectura').append(texto);
				break;
				case "titulo":
					$('.soloLectura').append(texto);
				break;
				case "icono": 
					$('.soloLectura').append(imagen);
				break;
				case "logo":
					$('.soloLectura').append(imagen);
//					$('#upload-file-input').addClass(tipo)
//					valor =$(file).html();
//					 $(valor).insertAfter($('.soloLectura_in'));
					document.getElementById(tipo).value = jsonSeccion[tipo];
				break;
				case "fondoHeader":
					$('.soloLectura').append(imagen);
				break;
				case "subtitulo": 
					$('.soloLectura').append(texto);					
				break;
				case "referencia1": 
					$('.soloLectura').append(texto);
				break;
				case "boton1": 
					$('.soloLectura').append(texto);
				break;
				case "referencia2": 
					$('.soloLectura').append(texto);
				break;
				case "boton2": 
					$('.soloLectura').append(texto);
				break;
				case "varios":
					$('.soloLectura').append(lorem);
					document.getElementById(tipo).value = jsonSeccion[tipo];
				break;
				case "descripcion": 
					$('.soloLectura').append(lorem);
					document.getElementById(tipo).value = jsonSeccion[tipo];
				break;
			  }
			}
		}
	}
		
	$('#modalEdicion_btnClose').click(function(){
		alert("Sin Guardar cambios");
		$('.soloLectura').html("</>")
		$("div.soloLectura > div").remove();
	});
	
	$('#modalEdicion_btnSave').click(function(){
		$("div.alerta > div").remove();
		var valoresActualizados = "{";
		for (var tipo in jsonCampos){
			if(tipo === "arrayText"){
				arrayText = $.valoresOriginal.arrayText.split(",");
				var valorActualizado="";
				$.each(arrayText,function(i){
					valorActualizado = valorActualizado + $('#'+tipo+i).val()+",";
//					console.log([i]+valorActualizado);
				});
				valorActualizado = valorActualizado.slice(0,valorActualizado.length-1);
				valoresActualizados = valoresActualizados+'"'+tipo+'":"'+valorActualizado+'",';
				//console.log($.arrayTextActualizado);
			}else if(tipo === "logo" || tipo === "fondoHeader" || tipo === "icono"){
				if($("."+tipo+'Imagen').val() === null || $("."+tipo+'Imagen').val() === ""){
					valoresActualizados = valoresActualizados+'"'+tipo+'":"'+$("#"+tipo).val()+'",';
				}else{
					var nombre = $("."+tipo+'Imagen').val().split('\\');
//					console.log(nombre[nombre.length-1]);
					valoresActualizados = valoresActualizados+'"'+tipo+'":"'+nombre[nombre.length-1]+'",';
					uploadFile(tipo);
				}	
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
		console.log("valoresOriginales:");
		console.log($.valoresOriginal); 
		console.log("valoresActualizados:");
		console.log($.valoresActualizados);

		if(JSON.stringify($.valoresOriginal) === JSON.stringify($.valoresActualizados))
			alert("No hay Cambios");
		else{
			alert("Esta Seguro Guardar cambios");
//			$.post( url, JSON.stringify($.valoresActualizados), 'application/json')
//			  .done(function( data ) {
//				  console.log(data);
//				  alerta="<div class='alert alert-success' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
//					$(alerta).insertAfter($('.alerta_in'));
//			  });
			$.ajax({
			   	  url: url+'modelo/action-Seccion',
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
	
	/*
	 *  Metodo de validacion de campos
	 */
	function validaTipo(tipo , valor){
//		console.log(tipo+":"+valor);
		var texto = /^[A-Za-z0-9]$/;
		var validaStatus =[ true, "",""];
		switch (tipo) { 
		case "arrayText": 
//			console.log(tipo);
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
			//console.log(tipo);
			
		break;
		case "varios": 
			//var expreg = texto;
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+" NO es correcto");
//			  }
		break;
		case "logo":
//			uploadFile(tipo);
			//console.log(tipo);
		break;
		case "imagen": 
//			uploadFile(tipo);
			//console.log(tipo);
		break;
		case "fondoHeader": 
			//console.log(tipo);
//			uploadFile(tipo);
		break;
		case "subtitulo": 
//			  if(!texto.test(valor)){ 
//				  validaStatus=[false,"El "+tipo+" NO es correcto","Debe ser formato A-z0-9"];
//			    console.log("El "+tipo+":"+valor+" NO es correcto");
//			  }
		break;
		case "descripcion": 
			//console.log(tipo);
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
	
	/*
	 *   Funciones de modal para carga de Imagenes
	 */
	//https://www.mkyong.com/spring-boot/spring-boot-file-upload-example-ajax-and-rest/
	
	$(function() {
		$("#upload-file-input").on("change", uploadFile);
	});
	
//	$('#btnCloseFile').click(function(){
//		$("div.alerta_file > div").remove();
//	});
//	
//	$('#btnSaveFile').click(function(){
//		var nombre = $('#upload-file-input').val().split('\\');
//		console.log(nombre[nombre.length-1]);
//		console.log($('#upload-file-input').attr('class'));
//		var tipoImagen = $('#upload-file-input').attr('class');
//		//document.getElementById($('#upload-file-input').attr('class')).value = nombre[nombre.length-1];
//		$('#'+tipoImagen).val();
//		$('#'+tipoImagen).val((nombre[nombre.length-1]).toString());
//		//$('#btnCloseFile').load();
//	});

	function uploadFile(tipo) {
		console.log("envio imagen:"+tipo);
		  $.ajax({
//		    url: "http://localhost:8010/fileUpload",
			  url: "http://31.220.60.92:8010/fileUpload",
		    type: "POST",
		    data: new FormData($("#upload-file-form")[0]),
		    enctype: 'multipart/form-data',
		    processData: false,
		    contentType: false,
		    cache: false,
		    success: 	function(data){
				  alerta="<div class='alert alert-success' role='alert'>imagen : "+data.codigo+"-"+data.mensaje.toString()+"</div>";
					$(alerta).insertAfter($('.alerta_inFile'));
					console.log("imagen enviada:"+tipo);
				},
		    error: function () {
		    	alerta="<div class='alert alert-danger' role='alert'>error de carga de imagen</div>";
				$(alerta).insertAfter($('.alerta_inFile'));
		    }
		  });
		} // function uploadFile
	
	

	/************************************************************************************************************************************************************/
	
	
	/*
	 * funciones segunda generacion de Edicion Modal
	 * 1 Septiembre 2018 
	 * 
	 */
	
	
	function cargaModal(seccion, modelo){
		$.seccionCampos="";
			
		console.log("cargarModal : "+seccion+modelo);
//		action = "action";
//		seccion = "seccion";
		$.seccionCampos = estructuraSeccion(seccion+modelo);
		$('.'+seccion).attr("data-toggle","modal");
		$('.'+seccion).attr("data-target","#modalEdicion_"+seccion+modelo);
		$("div.alertaBody_file > div").remove();
		
		return $.seccionCampos; 
	}
	
	function estructuraSeccion(seccion){
		var camposModelo = {
				"headerSeccion1" 		   :{  "objeto" : {    "tituloObjetoHS1" :"text", "enlaceObjetoHS1" :"text"  }},
				"headerSeccion2" 		   :{   "telefonoHS2" : "text",   "emailHS2" : "text"},
				"headerSeccion3" 		   :{"tituloHS3":"text",  "iconoHS3":"img",  "variosHS3" : "lorem",  "logoHS3":"img",  "fondoHeaderHS3":"img"},
				"headerSeccion4Bronea"   :{  "subtituloHS4":"text",  "tituloHS4":"text",  "descripcionHS4" :"lorem",  "referencia1HS4" : "text",  "boton1HS4" : "text",  "referencia2HS4" : "text",  "boton2HS4" : "text"},
				"bodySeccion1Bronea"     :{  "imagenBS1" :"img",  "tituloBS1" :"text",  "descripcionBS1":"lorem",  "referenciaBS1":"text",  "botonBS1":"text"},
				"bodySeccionArray1Bronea":{  "tituloBSA1":"text",  "subTituloBSA1":"text",  "descripcion1BSA1":"lorem",  "descripcion2BSA1":"lorem",  "imagenBSA1" : "img",  "objeto" :{"posicionObjetoBSA1" :"text","referenciaObjetoBSA1" : "text",      "iconoObjetoBSA1" : "text",      "tituloObjetoBSA1" :"text",      "descripcionObjetoBSA1" :"lorem"  }},
				"bodySeccionArray2Bronea":{  "objeto":{    "posicionObjetoBSA2" :"text",    "iconoObjetoBSA2" :"text",    "referenciaObjetoBSA2" :"text",    "tituloObjetoBSA2" :"text",    "descripcionObjetoBSA2" :"lorem"  }},
				"bodySeccionArray3Bronea":{  "tituloBSA3" :"text",  "descripcionBSA3" : "lorem",  "objeto" : {      "posicionObjetoBSA3" :"text",      "imagenObjetoBSA3" : "img",      "referenciaObjetoBSA3" : "text",      "tituloObjetoBSA3" :"text",      "descripcionObjetoBSA3" :"text"  }},
				"bodySeccionArray4Bronea":{  "tituloBSA4" :"text",  "descripcionBSA4" : "lorem",  "objeto" : {      "posicionObjetoBSA4" :"text",      "referenciaObjetoBSA4" : "text",      "imagenObjetoBSA4" : "img",      "tituloObjetoBSA4" :"text",      "descripcionObjetoBSA4" :"text",      "botonBSA4":"text"  }},
				"footerSeccion1Bronea"   :{  "tituloFS1" : "text",  "subtituloFS1" : "lorem",  "domicilioFS1" : "text",  "telefonoFS1" : "text",  "correoFS1" : "text"},
				"footerSeccion2Bronea"   :{  "tituloFS2" : "text",  "objetoFS2" : {    "tituloObjetoFS2" :"text", "enlaceObjetoFS2" :"text"  }},
				"footerSeccion3Bronea"   :{  "tituloFS3" : "text",  "objetoFS3" : {    "tituloObjetoFS3" :"text", "enlaceObjetoFS3" :"text"  }},
				}
		seccion = seccion;
		switch (seccion) { 
		case "headerSeccion1": return camposModelo.headerSeccion1; break;
		case "headerSeccion2": return camposModelo.headerSeccion2; break;
		case "headerSeccion3": return camposModelo.headerSeccion3; break;
		case "headerSeccion4Bronea": return camposModelo.headerSeccion4Bronea; break;
		case "bodySeccion1Bronea": return camposModelo.bodySeccion1Bronea; break;
		case "bodySeccionArray1Bronea": return camposModelo.bodySeccionArray1Bronea; break;
		case "bodySeccionArray2Bronea": return camposModelo.bodySeccionArray2Bronea; break;
		case "bodySeccionArray3Bronea": return camposModelo.bodySeccionArray3Bronea; break;
		case "bodySeccionArray4Bronea": return camposModelo.bodySeccionArray4Bronea; break;
		case "footerSeccion1Bronea": return camposModelo.footerSeccion1Bronea; break;   
		case "footerSeccion2Bronea": return camposModelo.footerSeccion2Bronea; break;   
		case "footerSeccion3Bronea": return camposModelo.footerSeccion3Bronea; break;   
		}
	}
	
	
	function dataEdicion(seccionEmpresa, contaObjeto){
		console.log(seccionEmpresa);
		console.log(contaObjeto);
		var valoresString = "";
		var valoresStringObjeto = "";
		var valorStringObjeto ="";
		var finalJson ="";
		if(contaObjeto > 0){
			for(campo in seccionEmpresa){
				console.log(campo)
				if(campo.includes("imagen")){
					var nombre = $("#upload-file-inputBody").val().split('\\');
					console.log(nombre[nombre.length-1])
					valoresString = valoresString + nombre[nombre.length-1] + "&&"
				}else if (campo.includes("objeto")){				
					if(valoresString.length > 0){
					valoresString = valoresString.slice(0,valoresString.length-2)
					valoresString = valoresString + "++";
					}
					for(var i = 0 ; i < contaObjeto; i++){
						for(campoObjeto in seccionEmpresa.objeto){
//							console.log(campoObjeto+i +" : "+$("#"+campoObjeto+i).val())
							valorStringObjeto = valorStringObjeto + $("#"+campoObjeto+i).val() + "&&";
						}
						valorStringObjeto = valorStringObjeto.slice(0,valoresStringObjeto.length-2)
						valorStringObjeto = valorStringObjeto + "++";
					}
					valorStringObjeto = valorStringObjeto.slice(0,valoresStringObjeto.length-2)
					valoresString = valoresString + valorStringObjeto ;
				}else{
//					console.log($("#"+campo).val())
					valoresString = valoresString + $("#"+campo).val() + "&&" 
				}
			}	
		}else{
			for(campo in seccionEmpresa){
				console.log(campo)
				if(campo.includes("imagen")){
					var nombre = $("#upload-file-inputBody").val().split('\\');
					console.log(nombre[nombre.length-1])
					valoresString = valoresString + nombre[nombre.length-1] + "++"
				}else{
//					console.log($("#"+campo).val())
					valoresString = valoresString + $("#"+campo).val() + "++" 
				}
			}
			valoresString = valoresString.slice(0,valoresString.length-2)
		}
		
		console.log(valoresString);
		return valoresString ;
		
	}
			
		function enviaDataEdicion(finalJson){
			var context = "";
			for(campo in finalJson){
				if(campo === "action")
					context = context + finalJson.action +"/"
				else{
					context = context + campo +"/"
				}
			}
			console.log(url + context)
			$.ajax({
			   	  url: url + context,//+finalJson.action+"/"+finalJson[1],
			      dataType: 'json',
				  type: 'POST',
				  contentType: "application/json",
				  data: JSON.stringify(finalJson),
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
		
		$('#upload-file-inputBody').on('change', function(){
			/*
			 * toogle para activar el control de formulario de carga de imagen
			 * 
			 * 
			 		<form id="upload-file-form">
						<div class="alerta_file">
						<hiden class="alerta_inFile"></hiden>
						</div>
						<label for="upload-file-input">Actualiza imagen:</label> 
						<input id="upload-file-input" type="file" name="uploadfile" accept="image/jpeg" />
					</form>
			 * 
			 */
				console.log("envio imagenBody");
				  $.ajax({
//				    url: "http://localhost:8010/fileUpload",
					  url: "http://31.220.60.92:8010/fileUpload",
				    type: "POST",
				    data: new FormData($("#upload-file-form")[0]),
				    enctype: 'multipart/form-data',
				    processData: false,
				    contentType: false,
				    cache: false,
				    success: 	function(data){
						  alerta="<div class='alert alert-success' role='alert'>imagen : "+data.codigo+"-"+data.mensaje.toString()+"</div>";
							$(alerta).insertAfter($('.alertaBody_inFile'));
							console.log("imagen enviada:"+tipo);
						},
				    error: function () {
				    	alerta="<div class='alert alert-danger' role='alert'>error de carga de imagen</div>";
						$(alerta).insertAfter($('.alertaBody_inFile'));
				    }
				  });
		});
	