$(document).ready(function() {

	
/////////////
	/*
	 *   Secciones   *
	 */
/////////////
	$('.headerSeccion1').click(function(){
			if(validaParam()){
//			console.log(window.location.href);
			jsonCampos = {"arrayText" :"text"}
			var valores = valoresSeccion("headerSeccion1_valores");
			$.valoresOriginal = ajusteJson(jsonCampos, valores);
			
			$('.headerSeccion1').attr("data-toggle","modal");
			$('.headerSeccion1').attr("data-target","#modalEdicion");
			$('.soloLectura').html("</>")
			$("div.soloLectura > div").remove();
			$("div.alerta > div").remove();
			$("div.alerta_file > div").remove();
			$('.alerta_file').html("</>")
			elementosCampos($.valoresOriginal);
			
//			_getDataSeccion(action, seccion, jsonLectura)    SINCRONO	 
//	    	seccionLectura(action, seccion, function(data){  //     ASYNCRONO
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
		}else{
			console.log("param:Nulo");
		}
	});
	
	
	
	$('.headerSeccion2').click(function(){
		if(validaParam()){
//			console.log("param:"+$.param)
			action = "action";
			seccion = "seccion";
			
			jsonCampos = {"telefono" : "text","email" : "text"}
			valores = valoresSeccion("headerSeccion2_valores");
			
			$.valoresOriginal = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion2').attr("data-toggle","modal");
			$('.headerSeccion2').attr("data-target","#modalEdicion");
			$('.soloLectura').html("</>")
			$("div.soloLectura > div").remove();
			$("div.alerta > div").remove();
			$("div.alerta_file > div").remove();
			$('.alerta_file').html("</>")
			elementosCampos($.valoresOriginal);
			
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.headerSeccion3').click(function(){
		if(validaParam()){
//			console.log("param:"+$.param)
			action = "action";
			seccion = "seccion";
			
			jsonCampos = {"titulo":"text",  "icono":"img",  "varios" : "lorem",  "logo":"img",  "fondoHeader":"img"}
			valores = valoresSeccion("headerSeccion3_valores");
			
			$.valoresOriginal = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion3').attr("data-toggle","modal");
			$('.headerSeccion3').attr("data-target","#modalEdicion");
			$('.soloLectura').html("</>")
			$("div.soloLectura > div").remove();
			$("div.alerta > div").remove();
			$("div.alerta_file > div").remove();
			$('.alerta_file').html("</>")
			elementosCampos($.valoresOriginal);
			
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.headerSeccion4').click(function(){
		if(validaParam()){
//			console.log("param:"+$.param)
			action = "action";
			seccion = "seccion";
			
			jsonCampos = {"subtitulo":"text",  "titulo":"text",  "descripcion" :"lorem",  "referencia1" : "text",  "boton1" : "boton",  "referencia2" : "text",  "boton2" : "boton"}
			valores = valoresSeccion("headerSeccion4_valores");
			
			$.valoresOriginal = ajusteJson(jsonCampos, valores);
			 
			$('.headerSeccion4').attr("data-toggle","modal");
			$('.headerSeccion4').attr("data-target","#modalEdicion");
			$('.soloLectura').html("</>")
			$("div.soloLectura > div").remove();
			$("div.alerta > div").remove();
			$("div.alerta_file > div").remove();
			$('.alerta_file').html("</>")
			elementosCampos($.valoresOriginal);
			
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.bodySeccionArray1').click(function(){
		if(validaParam()){
			cargaModal("bodySeccionArray1");
		}else{
			console.log("param:Nulo");
		}
	});
	});
	
	