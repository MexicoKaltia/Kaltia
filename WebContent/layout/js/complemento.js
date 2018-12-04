
					
//	/*    Funciones de ingreso login 
//	 *  en la pagina principal de Kaltia 
//	 */
//	$('#ingresar').click(function() {
//		var nuevo = $('#elemento').load("bronea/pages/Ingresar.html");
//		nuevo.slideToggle("slow");
//	})
//	//************
//	$('.goIngresar').click(function() {
//		$('.goIngresarForm').submit();
//	});
//	//*************
//	$('#registrar').click(function() {
//		var nuevo = $('#elemento').html(
//		"<form action='registrar' class='goRegistrarForm'><p><label for='user'>User</label><input type='text'></p><p><label for='pass'>Password</label><input type='pass'></p><p><label for='email'>Email</label><input type='email'></p><p><button class='goRegistrar'>registrar</button></p></form>");
//		nuevo.slideToggle("slow");
//	})
//	//************
//	$('.goRegistrar').click(function() {	
//		$('.goRegistrarForm').submit();
//	});			
//	/*    FIN  login en la pagina principal de Kaltia */
	
	
	/***********************************************************************************************************************************************************/
	//funciones de Nav Scroll
//	var slider = $("#slider").height();
	var valorFijo = $("#headerSeccionArray5").offset().top
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
//		console.log("header3 oofset top:"+valorFijo)
		
		if (scroll >= valorFijo ) {
			$('#headerSeccionArray5').addClass('sticky-top');
			$('#headerSeccionArray5').addClass('nav-overlay');
//			console.log("activo:"+scroll);
		} else {
			$('#headerSeccionArray5').removeClass('sticky-top');
			$('#headerSeccionArray5').removeClass('nav-overlay');
//			console.log("fuera:"+scroll);
		}
	});
	$(window).scroll();
	

	
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
	$.usuarioEmpresa="";
	
	var url = "http://31.220.60.92:8010/";
//	var url = "http://localhost:8010/";
	var arrayTextActualizado ="";
	var arrayTextOriginal ="";
	
	$.urlParam = $(function(){
		var results = new RegExp('[\?&]' + $.variableParam + '=([^&#]*)').exec(window.location.href);
//		var results = new RegExp('[\?&]tipo=([^&#]*)').exec(window.location.href);
		console.log(window.location.href);
//		console.log(results)
		urlAction = window.location.href;
		action = urlAction.split("\/");
		
		//actionProd -- para pruebas locales comentar las siguientes lineas
		urlAction = "http://kaltia.xyz/bronea?tipo=AAA"
		action = urlAction.split("\/");
		actionProd = action[3].split("\?");
		action[3] = actionProd[0]
		// fin actionProd
		
		$.action = action[3];
		console.log("Action:"+action[3]);
		
		$.idEmpresa = $("#idEmpresa").val()
		console.log("idEmpresa:"+$.idEmpresa);
		
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
//		    		console.log($.param);
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
	   

	/************************************************************************************************************************************************************/
	
	
	/*
	 * funciones segunda generacion de Edicion Modal
	 * 1 Septiembre 2018 
	 * 
	 */
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
	
	
	function cargaModal(seccion, modelo){
		$.seccionCampos="";	
//		console.log("cargarModal paso 1: "+seccion+modelo);
		$.seccionCampos = estructuraSeccion(seccion+modelo);
//		console.log("cargarModal paso 2 : "+$.seccionCampos);
		$('.'+seccion).attr("data-toggle","modal");
		$('.'+seccion).attr("data-target","#modalEdicion_"+seccion+modelo);
		$("div.alertaBody_file > div").remove();
//		console.log("cargarModal paso 3 : #modalEdicion_"+seccion+modelo);
		return $.seccionCampos; 
	}
	
	function estructuraSeccion(seccion){
		var camposModelo = {
				"headerSeccion1" 		   :{  "objeto" : {    "tituloObjetoHS1" :"text", "seleccionObjetoHS1" :"text"  }},
				"headerSeccion2" 		   :{   "telefonoHS2" : "text",   "emailHS2" : "text"},
				"headerSeccion3" 		   :{"tituloHS3":"text",  "iconoHS3":"img",  "variosHS3" : "lorem",  "logoHS3":"img",  "fondoHeaderHS3":"img"},
				"headerSeccion4Bronea"   :{  "subtituloHS4":"text",  "tituloHS4":"text",  "descripcionHS4" :"lorem",  "seleccion1HS4" : "text",  "boton1HS4" : "text",  "seleccion2HS4" : "text",  "boton2HS4" : "text"},
				"headerSeccionArray5Bronea":{"tituloHSA5":"text",  "faviconHSA5":"img",  "logoHSA5":"img",  "fondoHeaderHSA5":"img", "objeto" : {"enlaceHSA5":"text" }},
				"bodySeccion1Bronea"     :{  "imagenBS1" :"img",  "tituloBS1" :"text",  "descripcionBS1":"lorem",  "seleccionBS1":"text",  "botonBS1":"text"},
				"bodySeccionArray1Bronea":{  "tituloBSA1":"text",  "subTituloBSA1":"text",  "descripcion1BSA1":"lorem",  "descripcion2BSA1":"lorem",  "imagenBSA1" : "img",  "objeto" :{"posicionObjetoBSA1" :"text","referenciaObjetoBSA1" : "text",      "iconoObjetoBSA1" : "text",      "tituloObjetoBSA1" :"text",      "descripcionObjetoBSA1" :"lorem"  }},
				"bodySeccionArray2Bronea":{  "objeto":{    "posicionObjetoBSA2" :"text",    "iconoObjetoBSA2" :"text",    "referenciaObjetoBSA2" :"text",    "tituloObjetoBSA2" :"text",    "descripcionObjetoBSA2" :"lorem"  }},
				"bodySeccionArray3Bronea":{  "tituloBSA3" :"text",  "descripcionBSA3" : "lorem",  "objeto" : {      "posicionObjetoBSA3" :"text",      "imagenObjetoBSA3" : "img",      "referenciaObjetoBSA3" : "text",      "tituloObjetoBSA3" :"text",      "descripcionObjetoBSA3" :"text"  }},
				"bodySeccionArray4Bronea":{  "tituloBSA4" :"text",  "descripcionBSA4" : "lorem",  "objeto" : {      "posicionObjetoBSA4" :"text",      "imagenObjetoBSA4" : "img",      "referenciaObjetoBSA4" : "text",      "tituloObjetoBSA4" :"text",      "descripcionObjetoBSA4" :"text",      "botonObjetoBSA4":"text"  }},
				"footerSeccion1Bronea"   :{  "tituloFS1" : "text",  "subtituloFS1" : "lorem",  "domicilioFS1" : "text",  "telefonoFS1" : "text",  "correoFS1" : "text", "ubicacionFS1" : "text"},
				"footerSeccion2Bronea"   :{  "tituloFS2" : "text",  "textFFS2" : "text", "textTFS2" : "text", "textYFS2" : "text", "textLFS2" : "text", "textGFS2" : "text"},
				"footerSeccion3Bronea"   :{  "tituloFS3" : "text" },
				}
		seccion = seccion;
		switch (seccion) { 
		case "headerSeccion1": return camposModelo.headerSeccion1; break;
		case "headerSeccion2": return camposModelo.headerSeccion2; break;
		case "headerSeccion3": return camposModelo.headerSeccion3; break;
		case "headerSeccion4Bronea": return camposModelo.headerSeccion4Bronea; break;
		case "headerSeccionArray5Bronea": return camposModelo.headerSeccionArray5Bronea; break;
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
//		console.log(seccionEmpresa);
//		console.log(contaObjeto);
		var valoresString = "";
		var valoresStringObjeto = "";
		var valorStringObjeto ="";
		var finalJson ="";
		if(contaObjeto > 0){
			for(campo in seccionEmpresa){
				if(campo.includes("referencia")){
					valoresString = valoresString + "#"+"&&";
				}else if(campo.includes("icono")){
					var iconoClases = $("#"+campoObjeto+i).attr('class')
					var iconoClase = iconoClases.replace("btmspace-30 fa fa-4x ","")
					valoresString = valoresString + iconoClase + "&&";
				}else if (campo.includes("objeto")){				
					if(valoresString.length > 0){
					valoresString = valoresString.slice(0,valoresString.length-2)
					valoresString = valoresString + "++";
					}
					for(var i = 0 ; i < contaObjeto; i++){
						for(campoObjeto in seccionEmpresa.objeto){
//							console.log("contaObjeto:"+contaObjeto+" "+campoObjeto+i)
							if(campoObjeto.includes("referencia")){
								valorStringObjeto = valorStringObjeto + "#"+"&&";
							}else if(campoObjeto.includes("icono")){
								var iconoClases = $("#"+campoObjeto+i).attr('class');
								var iconoClase = iconoClases.replace("btmspace-30 fa fa-4x ","");
								valorStringObjeto = valorStringObjeto + iconoClase + "&&";
							}else{
								valorStringObjeto = valorStringObjeto + $("#"+campoObjeto+i).val() + "&&";
							}
//							console.log(valorStringObjeto);
						}
						valorStringObjeto = valorStringObjeto.slice(0,valoresStringObjeto.length-2)
						valorStringObjeto = valorStringObjeto + "++";
					}
					valorStringObjeto = valorStringObjeto.slice(0,valoresStringObjeto.length-2)
					valoresString = valoresString + valorStringObjeto ;
				}else{
					valoresString = valoresString + $("#"+campo).val() + "&&" 
				}
			}	
		}else{
			for(campo in seccionEmpresa){
				if(campo.includes("referencia")){
					valoresString = valoresString + "#" + "++";
					}else if(campo.includes("icono")){
						var iconoClases = $("#"+campoObjeto+i).attr('class')
						var iconoClase = iconoClases.replace("btmspace-30 fa fa-4x ","")
						valoresString = valoresString + iconoClase + "++";
					}else{
					valoresString = valoresString + $("#"+campo).val() + "++" 
				}
			}
			valoresString = valoresString.slice(0,valoresString.length-2)
		}
		return valoresString ;
	}
	

	
	function ordenaValoresFinales(valoresFinales, valorColumnas, valorPosicion, valorIniciaObjeto){
		while(valoresFinales.includes("C:\\fakepath\\") ){
			valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
		}
		
		//Ordena valoresFinales
//		console.log("antes:"+valoresFinales);
		var tmp0 = "";
		var tmp1 = valoresFinales.split("\++");
		var posicion ="";
		var conteoPosicion = valorColumnas;
		switch (valorColumnas) {
		case 1: break;
		case 2: posicion="one_half"; break;
		case 3: posicion="one_third"; break;
		case 4: posicion="one_quarter"; break;
		}
//		console.log(tmp1.length)
		if(valorIniciaObjeto>0){
			valoresFinales = tmp1[0] + "\++";
		}else{
			valoresFinales = "";
		}
		
		for(i=valorIniciaObjeto; i<tmp1.length;i++){
			tmp0 = tmp1[i].split("\&&");		
			modula = conteoPosicion % valorColumnas;
			if(modula===0){
				tmp0[valorPosicion] = posicion+" first";
			}else{
				tmp0[valorPosicion] = posicion;
			}
			conteoPosicion = conteoPosicion + 1;
			for(e=0; e<tmp0.length;e++){
				valoresFinales = valoresFinales+tmp0[e]+"\&&";					
			}
			valoresFinales  = valoresFinales .slice(0,valoresFinales .length-2)
			valoresFinales = valoresFinales+"\++";
		}
		valoresFinales  = valoresFinales .slice(0,valoresFinales .length-2)				
//		console.log("despues:"+valoresFinales);
		return valoresFinales;
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
//			console.log(url + context)
			$.ajax({
			   	  url: url +"edicionSeccion/",//+ context,//+finalJson.action+"/"+finalJson[1],
			      dataType: 'json',
				  type: 'POST',
				  contentType: "application/json",
				  data: JSON.stringify(finalJson),
				  headers: {  'Access-Control-Allow-Origin': url, 'Access-Control-Allow-Methods': 'POST, GET, OPTIONS', 'Access-Control-Allow-Headers': 'X-PINGOTHER' },
				  crossDomain: true,
				  success: 	function(data){					  
					  console.log(data);
					  if(data.codigo===0){
					  alerta="<div class='alert alert-success' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
						$(alerta).insertAfter($('.alerta_in'));
					  }else{
						  alerta="<div class='alert alert-warning' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
							$(alerta).insertAfter($('.alerta_in'));
					  }
					},
				  error: function(){
					  alerta="<div class='alert alert-danger' role='alert'>Error de Enlace</div>";
						$(alerta).insertAfter($('.alerta_in'));
				  }
				});
		}
		
		
			/***********************************************************************************************************************************
			 * toogle para activar el control de formulario de carga de imagen
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
		
		//  $('#upload-file-inputBody').on('change', function(){ enviaImagen(idImagenForm)});  <--Ejemplo de funcion que hace llamado a la carga de imagen desde edicionSecciones.js
		
		$('.iconoForm').click(function(){
			$.iconoArrayInput =$(this).children("i").attr('id');
		})
		
//		function organizaIcono(iconoArrayInput){
			$('.iconoObjetoMapa').click(function(){
				var iconoObj = $(this).children('span').attr('id');
//			      console.log("iconoObj:"+iconoObj);
			      $("#modalIconoObjeto .close").click();
//					console.log("iconoArrayInput:"+$.iconoArrayInput);
			      $("#"+$.iconoArrayInput).attr('class', "btmspace-30 fa fa-4x "+iconoObj);
			  });
//		}

		$(".imagenArrayForm").click(function(){
			var imgArrayForm = $(this).attr('id'); 
			var imgArrayInput =$(this).children("input").attr('id');
			console.log(imgArrayForm);
			console.log(imgArrayInput);
			$('#'+imgArrayInput).on('change', function(){ enviaImagen(imgArrayForm); });
		})
		
		function enviaImagen(idImagenForm){
		
				console.log("Comineza envio imagenBody:"+idImagenForm);
				var alerta="";
				  $.ajax({
//				    url: "http://localhost:8010/fileUpload",
    				url: "http://31.220.60.92:8011/fileUpload/"+$.idEmpresa,
				    type: "POST",
//				    data: new FormData($("#upload-file-form")[0]),
				    data: new FormData($("#"+idImagenForm)[0]),
				    enctype: 'multipart/form-data',
				    processData: false,
				    contentType: false,
				    cache: false,
				    success: 	function(data){
				    	if(data.codigo==="00"){
						  alerta="<div class='alert alert-success' role='alert'>imagen : "+data.codigo+"-"+data.mensaje.toString()+"</div>";
						  $(alerta).insertAfter($('.'+idImagenForm));
						  console.log("envio ok");
				    	}else{
				    		alerta="<div class='alert alert-warning' role='alert'>imagen : "+data.codigo+"-"+data.mensaje.toString()+"</div>";
							  $(alerta).insertAfter($('.'+idImagenForm));
				    		console.log("envio Nok");
				    	} },
				    error: function () {
				    	alerta="<div class='alert alert-danger' role='alert'>error de carga de imagen</div>";
						  $(alerta).insertAfter($('.'+idImagenForm));
				    	console.log("envio error");
				    }
				  });
				  $(alerta).insertAfter($('.'+idImagenForm));
		}
		
		$('.grupoRS').click(function(){
			var rsInput =$(this).children("input").attr('id');
			var rsCheck =$(this).children("div").children("div").children("input").attr('id');
			console.log(rsCheck);
			console.log(rsInput);
			if($('#'+rsCheck).prop('checked')){
				$('#'+rsInput).prop('readonly', false);
			}
			
		});
	
		$('#btnSaveRegistro').click(function(){
			
			valoresRegistro = $('#nombreRegistro').val()+"++"+$('#apellidoRegistro').val()+"++"+$('#emailRegistro').val()+"++"+$('#telefonoRegistro').val()+"++"+$('#usuarioRegistro').val()+"++"+$('#passRegistro1').val()+"++"+$('#messageRegistro').val();
			 
				registroJson = { action : $.action,
					 idEmpresa : $.idEmpresa,	
//					 seccion : "bodySeccionArray1",
					 valoresFinales : valoresRegistro}
				console.log(registroJson);

			$.ajax({
			   	  url: url +"registroUser/",//+ context,//+finalJson.action+"/"+finalJson[1],
			      dataType: 'json',
				  type: 'POST',
				  contentType: "application/json",
				  data: JSON.stringify(registroJson),
				  headers: {  'Access-Control-Allow-Origin': url, 'Access-Control-Allow-Methods': 'POST, GET, OPTIONS', 'Access-Control-Allow-Headers': 'X-PINGOTHER' },
				  crossDomain: true,
				  success: 	function(data){					  
					  console.log(data);
					  if(data.codigo===0){
					  alerta="<div class='alert alert-success' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
						$(alerta).insertAfter($('.alerta_in'));
					  }else{
						  alerta="<div class='alert alert-warning' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
							$(alerta).insertAfter($('.alerta_in'));
					  }
					},
				  error: function(){
					  alerta="<div class='alert alert-danger' role='alert'>Error de Enlace</div>";
						$(alerta).insertAfter($('.alerta_in'));
				  }
				});
		});
		
		$('#btnSaveIngresa').click(function(){
			d = new Date();
			resp = $.getJSON("http://ipinfo.io", function(response){
				console.log(response.ip)
				return response.ip;
			}, "jsonp");
//			resp = JSON.stringify(resp);
//			console.log(resp);
			ip="ip";
			valoresIngresa = $('#usuarioIngresa').val()+"++"+$('#passIngresa').val()+"++"+ip+"-"+ d.getFullYear()+(d.getMonth()+1)+d.getDate()+"-"+d.getHours()+d.getMinutes()+d.getSeconds();
			 
			ingresaJson = { action : $.action,
					 idEmpresa : $.idEmpresa,	
//					 seccion : "bodySeccionArray1",
					 valoresFinales : valoresIngresa}
				console.log(ingresaJson);

			$.ajax({
			   	  url: url +"ingresaUser/",//+ context,//+finalJson.action+"/"+finalJson[1],
			      dataType: 'json',
				  type: 'POST',
				  contentType: "application/json",
				  data: JSON.stringify(ingresaJson),
				  headers: {  'Access-Control-Allow-Origin': url, 'Access-Control-Allow-Methods': 'POST, GET, OPTIONS', 'Access-Control-Allow-Headers': 'X-PINGOTHER' },
				  crossDomain: true,
				  success: 	function(data){					  
					  console.log(data);
					  if(data.codigo===0){
						  validaUsuarioEmpresa(data.mensaje);
						  alerta="<div class='alert alert-success' role='alert'>Bienvenido "+$.usuarioEmpresa+"</div>";
						  $(alerta).insertAfter($('.alerta_in'));
						
					  }else{
						  alerta="<div class='alert alert-warning' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
							$(alerta).insertAfter($('.alerta_in'));
					  }
					},
				  error: function(){
					  alerta="<div class='alert alert-danger' role='alert'>Error de Enlace</div>";
						$(alerta).insertAfter($('.alerta_in'));
				  }
				});
		});
		
		function validaUsuarioEmpresa(mensajeArray){
			nombreUsuario = mensajeArray[0].split("\++");
			$.idUsuarioEmpresa = nombreUsuario[0];
			$.usuarioEmpresa = nombreUsuario[1];
			$.condiciones = mensajeArray[1];
			$.mesActual = mensajeArray[2];
			$.mesMas = mensajeArray[3];
		}
		
		
		
		$('.validaUsuarioEmpresa').click(function(){
			var tipoAcceso = $(this).attr('data-target')
//			console.log($.usuarioEmpresa);
			if($.usuarioEmpresa ==="" && tipoAcceso === "#modalCita"){
				$('#divUsuarioEmpresa').hide();//.prop('readonly', false);
				$('#divBotonUsuarioEmpresa').show();	
				$('div.alertaUsuarioEmpresa').show();
			}else{
				$('#divUsuarioEmpresa').show();//.prop('readonly', false);
				$('#divBotonUsuarioEmpresa').hide();
				$("div.alertaUsuarioEmpresa").hide();
			}
		});
		
		  $( "#datepickerHGRC" ).datepicker({
			    minDate: 0,
			    maxDate: "+1m +1w",
			    regional: "es"
			  });

		
		$('#consultaHorario').click(function(){
			
			var mesHorario = {30:{user:"disponible"},100:{user:"disponible"},130:{user:"disponible"},200:{user:"disponible"},230:{user:"disponible"},300:{user:"disponible"},330:{user:"disponible"},400:{user:"disponible"},430:{user:"disponible"},500:{user:"disponible"},530:{user:"disponible"},600:{user:"disponible"},630:{user:"disponible"},700:{user:"disponible"},730:{user:"disponible"},800:{user:"disponible"},830:{user:"disponible"},900:{user:"disponible"},930:{user:"disponible"},1000:{user:"disponible"},1030:{user:"disponible"},1130:{user:"disponible"},1200:{user:"disponible"},1230:{user:"disponible"},1300:{user:"disponible"},1330:{user:"disponible"},1400:{user:"disponible"},1430:{user:"disponible"},1500:{user:"disponible"},1530:{user:"disponible"},1600:{user:"disponible"},1630:{user:"disponible"},1700:{user:"disponible"},1730:{user:"disponible"},1800:{user:"disponible"},1830:{user:"disponible"},1900:{user:"disponible"},1930:{user:"disponible"},2000:{user:"disponible"},2030:{user:"disponible"},2100:{user:"disponible"},2130:{user:"disponible"},2200:{user:"disponible"},2230:{user:"disponible"},2300:{user:"disponible"},2330:{user:"disponible"},2400:{user:"disponible"}};
			
			var condiciones = {dias1: "0-4", dias2: "5", horario11in: "900", horario11out: "1400", horario12in: "1500",  horario12out: "1800", horario21in: "1000", horario21out: "1300", horario22in: "1400",  horario22out: "1500"};//JSON.parse($.condiciones);//
			var mesActual = {29:{930:{user:"ocupado", mensaje:""},1030:{user:"ocupado", mensaje:""}}}; //JSON.parse($.mesActual);
			var mesMas = JSON.parse($.mesMas);
			var fechaSel = $("#datepickerHGRC").val().split("\/");
			var fechaSeleccion = fechaSel[2]+"-"+fechaSel[1]+"-"+fechaSel[0];  
			var dH = new Date(fechaSeleccion);
			var diaSel = dH.getDay();
			
			var myEvents1 =[];
			var entrada1 = condiciones.horario11in;
			entrada1 = entrada1-1;
			var salida1 = condiciones.horario11out;
			salida1 = salida1-1;
			var entrada2 = condiciones.horario12in;
			entrada2 = entrada2-1;
			var salida2 = condiciones.horario12out;
			salida2 = salida2-1;
			
			var entradaF1 = condiciones.horario21in;
			entradaF1 = entradaF1-1;
			var salidaF1 = condiciones.horario21out;
			salidaF1 = salidaF1-1;
			var entradaF2 = condiciones.horario22in;
			entradaF2 = entradaF2-1;
			var salidaF2 = condiciones.horario22out;
			salidaF2 = salidaF2-1;
			

			if(diaSel<5){
				console.log("semana");
			for(hora in mesHorario){
				var hr = hora;
				hr=hr*1;
				if(hr > entrada1 && salida1 > hr){
					var hor = hora+":disponible";
					myEvents1.push(hor);
				}
				if(hr> entrada2 && salida2 > hr){
					var hor = hora+":disponible";
					myEvents1.push(hor);
				}
			}
			}else{
				console.log("sabado");
				for(hora in mesHorario){
					var hr = hora;
					hr=hr*1;
					if(hr > entradaF1 && salidaF1 > hr){
						var hor = hora+":disponible";
						myEvents1.push(hor);
					}
					if(hr> entradaF2 && salidaF2 > hr){
						var hor = hora+":disponible";
						myEvents1.push(hor);
					}
				}
			}
			var horario = myEvents1;//JSON.stringify(myEvents1);
			/*
			 */
		    var myEvents2 = []; 
		      for(hora in horario){
		      var valor = horario[hora].split("\:");;
		      if(valor[1]==="disponible")
		      {
		       var elemento =  {date: valor[0] ,content:'disponible'};
		        myEvents2.push(elemento);
		      } 
		    }
		      myEvents = "";
		   myEvents = myEvents2;
		   console.log(myEvents)
		    aparece(setMyEvents(myEvents));
		  
		  });
		
		var  myEvents ="";
		function getMyEvents() {
			return myEvents;
		}
		function setMyEvents(myEvents) {
			this.myEvents = myEvents;
		}

		function aparece (){
//		  console.log(myEvents);
		 $('#my-timeline').roadmap(getMyEvents())
		}
		
		
		$('#btnSaveCita').click(function(){
			
			valoresCita = $('#datepickerHGRC').val();
			 console.log($.idUsuarioEmpresa);
			 console.log(valoresCita);
			citaJson = { action : $.action,
					 idEmpresa : $.idUsuarioEmpresa,	
//					 seccion : "bodySeccionArray1",
					 valoresFinales : valoresCita}
				console.log(citaJson);

			$.ajax({
			   	  url: url +"citaUser/",//+ context,//+finalJson.action+"/"+finalJson[1],
			      dataType: 'json',
				  type: 'POST',
				  contentType: "application/json",
				  data: JSON.stringify(citaJson),
				  headers: {  'Access-Control-Allow-Origin': url, 'Access-Control-Allow-Methods': 'POST, GET, OPTIONS', 'Access-Control-Allow-Headers': 'X-PINGOTHER' },
				  crossDomain: true,
				  success: 	function(data){					  
					  console.log(data);
					  if(data.codigo===0){
					  alerta="<div class='alert alert-success' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
						$(alerta).insertAfter($('.alerta_in'));
					  }else{
						  alerta="<div class='alert alert-warning' role='alert'>"+data.codigo+" "+data.mensaje.toString()+"</div>";
							$(alerta).insertAfter($('.alerta_in'));
					  }
					},
				  error: function(){
					  alerta="<div class='alert alert-danger' role='alert'>Error de Enlace</div>";
						$(alerta).insertAfter($('.alerta_in'));
				  }
				});
		});
		
		
		
		 		

