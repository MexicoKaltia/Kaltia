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
		$('div').removeClass("edicion headerSeccion1 headerSeccion2 headerSeccion3 headerSeccion4")
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
					console.log(jsonSeccion[tipo].split(","));
					for(i=0; i<arrayText.length;i++ ){
						single = arrayText[i];
						console.log("single:"+single);
						valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+single+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+single+"_chk></div></div></div>";
						 $(valor).insertAfter($('.soloLectura_in'));
					}
					break;
				case "telefono": 
					valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+jsonSeccion[tipo]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+tipo+"_chk></div></div></div>";
					 $(valor).insertAfter($('.soloLectura_in'));
					break;
				case "email": 
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
	
	$('.headerSeccion1').click(function(){
		if($.param === $.paramInicial){
			//console.log("param:"+$.param)
			console.log(window.location.href);
			action = "action";
			seccion = "seccion";
			jsonCampos = {"arrayText" :"text"}
			var valores = valoresSeccion("headerSeccion1_valores");
			jsonSeccion = ajusteJson(jsonCampos, valores);
			
			$('.headerSeccion1').attr("data-toggle","modal");
			$('.headerSeccion1').attr("data-target","#headerSeccion1");
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
		
		$('#agregarStr').click(function(){
			var  valor2 =null;
			valor2 = $('#headerSeccion1_ingresarStr').val();
			if($('#headerSeccion1_ingresarStr').val() !== ""){
//			 var valor3 ="<div class='input-group' id='"+$('#headerSeccion1_ingresarStr').val()+"'><div class='input-group-prepend id='"+$('#headerSeccion1_ingresarStr').val()+"''><input class='form-control' aria-label='Text input with checkbox' type='text' placeholder="+$('#headerSeccion1_ingresarStr').val()+" readonly><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+$('#headerSeccion1_ingresarStr').val()+"_chk></div></div></div>"
			var valor3 ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+$('#headerSeccion1_ingresarStr').val()+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+$('#headerSeccion1_ingresarStr').val()+"_chk></div></div></div>";
				$(valor3).insertAfter($('.soloLectura_in'));
				$('#headerSeccion1_ingresarStr').val("");
			}
		})
		
		$('#headerSeccion1_btnClose').click(function(){
			alert("Sin Guardar cambios");
			$("div.soloLectura > div").remove();
			console.log($("div.soloLectura").html());
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
			$('.headerSeccion2').attr("data-target","#headerSeccion1");
			$("div.soloLectura > div").remove();
			
			elementosCampos(jsonSeccion);
			
		}else{
			console.log("param:Nulo");
		}
	});
	$('.headerSeccion3').click(function(){
		if($.param != null){
			console.log("param:"+$.param)
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.headerSeccion4').click(function(){
		if($.param != null){
			console.log("param:"+$.param)
		}else{
			console.log("param:Nulo");
		}
	});
});