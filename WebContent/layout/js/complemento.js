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
	   
	
	function seccionValoresLectura (action, section, callback) {
		  var scriptURL = "somefile.php?name=" + action + section;
		  return $.getJSON("http://rest-service.guides.spring.io/greeting", callback);
	}

	
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
	
	
	$('.headerSeccion1').click(function(){
		if($.param === $.paramInicial){
			//console.log("param:"+$.param)
			console.log(window.location.href);
			action = "action";
			seccion = "seccion";
			jsonLectura = {"arrayText" :"text"}
			 
			$('.headerSeccion1').attr("data-toggle","modal");
			$('.headerSeccion1').attr("data-target","#headerSeccion1");
			$("div.soloLectura > div").remove();
			//_getDataSeccion(action, seccion, jsonLectura)    SINCRONO	 
		seccionValoresLectura(action, seccion, function(data){  //     ASYNCRONO
			$.respuestaSeccion = data;
			console.log($.respuestaSeccion)
			 $.respuestaSeccion = {"arrayText":["ACERCA DE NOSOTROS.referencia1",  "CONTACTO.referencia2", "REGISTRO.referencia3", "INGRESA.referencia4"]};
			//console.log($.respuestaSeccion)
			$($.respuestaSeccion.arrayText).each(function(i){
				console.log($.respuestaSeccion.arrayText[i])
				valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' value="+$.respuestaSeccion.arrayText[i]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+$(i).text()+"_chk></div></div></div>";
				 $(valor).insertAfter($('.soloLectura_in'));
				});
	   });
		
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
			headerSeccion2Json = {"telefono" : "text","email" : "text"}
			
			
			
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