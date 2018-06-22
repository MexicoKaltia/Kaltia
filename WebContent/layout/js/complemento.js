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
	
	$.param ="";
	$.dataSeccion ="ss";
	
	$.urlParam = $(function(){
		var tipo = "tipo";
		var results = new RegExp('[\?&]' + tipo + '=([^&#]*)').exec(window.location.href);
		
		if (results == null){
			_desactiveSeccionEdicion();
			console.log("results null")
		       return null;
		    }else{
		    	if(decodeURI(results[1]) == "AAA"){
		    		$('div.headerSeccion1').addClass("edicion")
		    		$('div.headerSeccion2').addClass("edicion")
		    	console.log("PARAM1:"+decodeURI(results[1]));
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
	
	function _getDataSeccion(action, section){
		console.log(action+":"+seccion);
		$.getJSON("http://rest-service.guides.spring.io/greeting", "", function (data, status) {
			  if (status === 200) {
				  console.log(data.id);
			      console.log(data.content);
				  data = ["acerca.refAcerca", "contacto.refContacto", "registro.refRegistro", "ingresa.refIngresa"];
				  return data;
			  }
			});
	    	
		
		
	
	}
	
	
	$('.headerSeccion1').click(function(){
		if($.param === "AAA"){
			console.log("param:"+$.param)
			
			action = "action";
			seccion = "seccion";
	        var data = _getDataSeccion(action, seccion)
			headerSeccion1Json = {"arrayText" :"text"}
				
			$(this).attr("data-toggle","modal");
			$(this).attr("data-target","#headerSeccion1");
			console.log(data)
			$(data).each(function(i){
				console.log(data[i])
				valor ="<div class='input-group'><div class='input-group-prepend'><input class='form-control' aria-label='Text input with checkbox' type='text' placeholder="+data[i]+"><div class='input-group-text'><input aria-label='Checkbox for following text input' type='checkbox' id="+$(i).text()+"_chk></div></div></div>";
				 $(valor).insertAfter($('.soloLectura_in'));
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