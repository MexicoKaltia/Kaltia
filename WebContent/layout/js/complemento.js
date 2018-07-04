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
	$.respuestaSeccion ="";
	
	var arrayTextActualizado ="";
	var arrayTextOriginal ="";
	
	$.urlParam = $(function(){
		var results = new RegExp('[\?&]' + $.variableParam + '=([^&#]*)').exec(window.location.href);
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
			  if (jsonSeccion.hasOwnProperty(tipo)) {
			    // Mostrando en pantalla la clave junto a su valor
//			    console.log("La clave es " + tipo+ " y el valor es:" + jsonSeccion[tipo]);
			    switch (tipo) { 
				case "arrayText": 
					arrayText = jsonSeccion[tipo].split(",");
//					console.log(jsonSeccion[tipo].split(","));
					for(i=0; i<arrayText.length;i++ ){
						single = arrayText[i];
						console.log("single:"+single);
						arraySingle = single.split(".");
						for(e =0;e<arraySingle.length;e++){
							valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+arraySingle[e]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+single+"_chk></div></div></div>";
							 $(valor).insertAfter($('.soloLectura_in'));
						}
					}
					agregar = "<div class='input-group input-group-sm'><input class='form-control' id='modalEdicion_ingresarStr' aria-label='Small' aria-describedby='inputGroup-sizing-sm' type='text'><div class='input-group-prepend' id='agregarStr'><span class='input-group-text btn btn-link complemento1' id='inputGroup-sizing-sm'>Agregar</span></div></div>"
						$(agregar).insertAfter($('.agregarText'));	
					break;
				case "telefono": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' id="+tipo+" aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
					break;
				case "email": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' id="+tipo+" aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "titulo": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "icono": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "varios": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "logo": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "fondoHeader": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "subtitulo": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "titulo": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "descripcion": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "referencia1": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "boton1": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "referencia2": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
				case "boton2": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
				break;
			  }
			}
		}
	}
	
	function valoresSeccion(seccion){
//		console.log(seccion);
		var status = document.getElementById(seccion).innerHTML;
		status= status.toString().trim();
//		console.log(status);
		status = status.slice(1,-1)
		status = status.split(",");
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
		console.log(jsonSeccion);
		return JSON.parse(jsonSeccion);
	}
	
	function valoresActualizados(seccionNombre, jsonCampos){
		for (var tipo in jsonCampos){
			
		}
	}
	
	
	
	$('.headerSeccion1').click(function(){
		if($.param === $.paramInicial){
			//console.log("param:"+$.param)
			console.log(window.location.href);
//			action = "action";
//			seccion = "seccion";
			jsonCampos = {"arrayText" :"text"}
			var valores = valoresSeccion("headerSeccion1_valores");
			jsonSeccion = ajusteJson(jsonCampos, valores);
			
			$('.headerSeccion1').attr("data-toggle","modal");
			$('.headerSeccion1').attr("data-target","#modalEdicion");
			$("div.soloLectura > div").remove();
			
			elementosCampos(jsonSeccion);
			
//			_getDataSeccion(action, seccion, jsonLectura)    SINCRONO	 
//		seccionLectura(action, seccion, function(data){  //     ASYNCRONO
//			$.respuestaSeccion = data;
//			console.log($.respuestaSeccion)
//			 $.respuestaSeccion = {"arrayText":["ACERCA DE NOSOTROS.referencia1",  "CONTACTO.referencia2", "REGISTRO.referencia3", "INGRESA.referencia4"]};
//			//console.log($.respuestaSeccion)
//			elementosCampos($.respuestaSeccion, jsonCampos)			
//	   });
			$.arrayTextActualizado = jsonSeccion.arrayText.split(",");
			$.arrayTextOriginal = jsonSeccion.arrayText;
			$('#agregarStr').click(function(){
				var  valor2 =null;
				valor2 = $('#modalEdicion_ingresarStr').val();
				if($('#modalEdicion_ingresarStr').val() !== ""){
	//			 var valor3 ="<div class='input-group' id='"+$('#headerSeccion1_ingresarStr').val()+"'><div class='input-group-prepend id='"+$('#headerSeccion1_ingresarStr').val()+"''><input class='form-control' aria-label='Text input with checkbox' type='text' placeholder="+$('#headerSeccion1_ingresarStr').val()+" readonly><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+$('#headerSeccion1_ingresarStr').val()+"_chk></div></div></div>"
				var valor3 ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+$('#modalEdicion_ingresarStr').val()+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+$('#modalEdicion_ingresarStr').val()+"_chk></div></div></div>";
					$(valor3).insertAfter($('.soloLectura_in'));	 
					$.arrayTextActualizado.push($('#modalEdicion_ingresarStr').val());
					jsonSeccion.arrayText = $.arrayTextActualizado.toString();
					$('#modalEdicion_ingresarStr').val("");
					console.log($.arrayTextActualizado)
					console.log(jsonSeccion.arrayText);
				}
			})
			$('#modalEdicion_btnClose').click(function(){
				alert("Sin Guardar cambios");
				$("div.soloLectura > div").remove();
				console.log($("div.soloLectura").html());
			});
			$('#modalEdicion_btnSave').click(function(){
//				console.log(jsonSeccion.arrayText)
//				console.log(arrayTextActualizado.toString())
				if($.arrayTextOriginal.toString() === $.arrayTextActualizado.toString())
					alert("No hay Cambios");
				else{
					alert("Esta Seguro Guardar cambios");
					console.log($.arrayTextActualizado.toString())
					$.ajax({
						  type: "POST",
						  url: url,
						  data: jsonSeccion,
						  success: success,
						  dataType: JSON
						});
					
				}
				//console.log($("div.soloLectura").html());
			});

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
			
			jsonSeccion = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion2').attr("data-toggle","modal");
			$('.headerSeccion2').attr("data-target","#modalEdicion");
			$("div.soloLectura > div").remove();
			
			elementosCampos(jsonSeccion);
			$.arrayTextOriginal = jsonSeccion.toString();
			$.arrayTextActualizado = valoresActualizados("headerSeccion2", jsonCampos);
			
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
			
			jsonSeccion = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion3').attr("data-toggle","modal");
			$('.headerSeccion3').attr("data-target","#modalEdicion");
			$("div.soloLectura > div").remove();
			
			elementosCampos(jsonSeccion);
			
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
			
			jsonSeccion = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion4').attr("data-toggle","modal");
			$('.headerSeccion4').attr("data-target","#modalEdicion");
			$("div.soloLectura > div").remove();
			
			elementosCampos(jsonSeccion);
			
		}else{
			console.log("param:Nulo");
		}
	});
});