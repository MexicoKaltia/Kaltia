$(document).ready(function() {

	console.log(window.navigator.userAgent);
	 $.modelo = "Bronea";	
	
	function cargaModal(seccion){
		$.seccionCampos="";	
		$.seccionCampos = estructuraSeccion(seccion);
		$('.'+seccion).attr("data-toggle","modal");
		$('.'+seccion).attr("data-target","#modalEdicion_"+seccion);
		$("div.alertaBody_file > div").remove();
		return $.seccionCampos; 
	}


	function estructuraSeccion(seccion){
		var camposModelo = {
				"headerSeccion1" 		   :{  "objeto" : {    "tituloObjetoHS1" :"text", "seleccionObjetoHS1" :"text"  }},
				"headerSeccion2" 		   :{   "telefonoHS2" : "text",   "emailHS2" : "text"},
				"headerSeccion3" 		   :{"tituloHS3":"text",  "iconoHS3":"img",  "variosHS3" : "lorem",  "logoHS3":"img",  "fondoHeaderHS3":"img"},
				"headerSeccion4"   :{  "subtituloHS4":"text",  "tituloHS4":"text",  "descripcionHS4" :"lorem",  "seleccion1HS4" : "text",  "boton1HS4" : "text",  "seleccion2HS4" : "text",  "boton2HS4" : "text"},
				"headerSeccionArray5":{"tituloHSA5":"text",  "faviconHSA5":"img",  "logoHSA5":"img",  "fondoHeaderHSA5":"img", "objeto" : {"enlaceHSA5":"text" }},
				"bodySeccion1"     :{  "imagenBS1" :"img",  "tituloBS1" :"text",  "descripcionBS1":"lorem",  "seleccionBS1":"text",  "botonBS1":"text"},
				"bodySeccionArray1":{  "tituloBSA1":"text",  "subTituloBSA1":"text",  "descripcion1BSA1":"lorem",  "descripcion2BSA1":"lorem",  "imagenBSA1" : "img",  "objeto" :{"posicionObjetoBSA1" :"text","referenciaObjetoBSA1" : "text",      "iconoObjetoBSA1" : "text",      "tituloObjetoBSA1" :"text",      "descripcionObjetoBSA1" :"lorem"  }},
				"bodySeccionArray2":{  "objeto":{    "posicionObjetoBSA2" :"text",    "iconoObjetoBSA2" :"text",    "referenciaObjetoBSA2" :"text",    "tituloObjetoBSA2" :"text",    "descripcionObjetoBSA2" :"lorem"  }},
				"bodySeccionArray3":{  "tituloBSA3" :"text",  "descripcionBSA3" : "lorem",  "objeto" : {      "posicionObjetoBSA3" :"text",      "imagenObjetoBSA3" : "img",      "referenciaObjetoBSA3" : "text",      "tituloObjetoBSA3" :"text",      "descripcionObjetoBSA3" :"text"  }},
				"bodySeccionArray4":{  "tituloBSA4" :"text",  "descripcionBSA4" : "lorem",  "objeto" : {      "posicionObjetoBSA4" :"text",      "imagenObjetoBSA4" : "img",      "referenciaObjetoBSA4" : "text",      "tituloObjetoBSA4" :"text",      "descripcionObjetoBSA4" :"text",      "botonObjetoBSA4":"text"  }},
				"footerSeccion1"   :{  "tituloFS1" : "text",  "subtituloFS1" : "lorem",  "domicilioFS1" : "text",  "telefonoFS1" : "text",  "correoFS1" : "text", "ubicacionFS1" : "text"},
				"footerSeccion2"   :{  "tituloFS2" : "text",  "textFFS2" : "text", "textTFS2" : "text", "textYFS2" : "text", "textLFS2" : "text", "textGFS2" : "text"},
				"footerSeccion3"   :{  "tituloFS3" : "text", "imagenFS3":"img" },
				"footerSeccionUbicacion"   :{  "tituloFS1" : "text",  "subtituloFS1" : "lorem",  "domicilioFS1" : "text",  "telefonoFS1" : "text",  "correoFS1" : "text", "ubicacionFS1" : "text"},
				"bodyQRE" : {"objeto":{"imagenObjetoQRE": "img", "tituloObjetoQRE": "text", "descripcionObjetoQRE": "lorem" }},
				"bodyQRD" : {"objeto":{"imagenObjetoQRE": "img"}}

				}
		seccion = seccion;
		switch (seccion) { 
		case "headerSeccion1": return camposModelo.headerSeccion1; break;
		case "headerSeccion2": return camposModelo.headerSeccion2; break;
		case "headerSeccion3": return camposModelo.headerSeccion3; break;
		case "headerSeccion4": return camposModelo.headerSeccion4; break;
		case "headerSeccionArray5": return camposModelo.headerSeccionArray5; break;
		case "bodySeccion1": return camposModelo.bodySeccion1; break;
		case "bodySeccionArray1": return camposModelo.bodySeccionArray1; break;
		case "bodySeccionArray2": return camposModelo.bodySeccionArray2; break;
		case "bodySeccionArray3": return camposModelo.bodySeccionArray3; break;
		case "bodySeccionArray4": return camposModelo.bodySeccionArray4; break;
		case "footerSeccion1": return camposModelo.footerSeccion1; break;   
		case "footerSeccion2": return camposModelo.footerSeccion2; break;   
		case "footerSeccion3": return camposModelo.footerSeccion3; break;   
		case "footerSeccionUbicacion": return camposModelo.footerSeccionUbicacion; break;
		case "bodyQRE": return camposModelo.bodyQRE; break;
		case "bodyQRD": return camposModelo.bodyQRD; break;
		
		}
	}

	
	
	
	
	
	
	
	
	
/////////////////////////////////////////////////////////////////////////
	/*
	 * funciones scroll
	 */
	
	var valorFijo = $("#headerSeccionArray5").offset().top
	var bsa1, bsa4, bsa3, bsa2, bs1 = 0;
	 
	
//	if($(".bodySeccionArray1").length && $(".bodySeccionArray2").length && $(".bodySeccionArray3").length && $(".bodySeccionArray4").length){
//		
//		bsa1 = $(".bodySeccionArray1").offset().top
//		bsa2 = $(".bodySeccionArray2").offset().top
//		bsa3 = $(".bodySeccionArray3").offset().top
//		bsa4 = $(".bodySeccionArray4").offset().top
//		
//		bsa2 = $(".bodySeccionArray2").offset().top - (bsa3 - $(".bodySeccionArray2").offset().top) //- ((bsa3 - $(".bodySeccionArray2").offset().top)/2) 
//	    bs1 = $(".bodySeccion1").offset().top - (bsa4 - $(".bodySeccion1").offset().top) - ((bsa4 - $(".bodySeccion1").offset().top)/2)
//	}
//	
//	
//	
//	
//	$(window).scroll(function(){
//		var scroll = $(window).scrollTop();
////		console.log(" 	scroll:"+scroll)
//		
//		if (scroll >= valorFijo ) {
//			$('#headerSeccionArray5').addClass('sticky-top');
//			$('#headerSeccionArray5').addClass('nav-overlay');
////			console.log("activo:"+scroll);
//		} else {
//			$('#headerSeccionArray5').removeClass('sticky-top');
//			$('#headerSeccionArray5').removeClass('nav-overlay');
////			console.log("fuera:"+scroll);
//		}
//		
//		if (scroll >= bsa1/2 ) {
//			$('#bodySeccionArray1').addClass('animated');
//			$('#bodySeccionArray1').addClass('shake');
//			$('#bodySeccionArray1').addClass('slow');
////			console.log("activo:"+scroll);
//		} 
////		else {
////			$('.bodySeccionArray1').removeClass('animated');
////			$('.bodySeccionArray1').removeClass('rollIn');
////			$('.bodySeccionArray1').removeClass('slow');
////			console.log("fuera:"+scroll);
////		}
//		if (scroll >= (bsa2/2) ) {
//			$('#bodySeccionArray2').addClass('animated');
//			$('#bodySeccionArray2').addClass('jackInTheBox');
//			$('#bodySeccionArray2').addClass('slow');
////			console.log("activo:"+scroll);
//		}
//		if (scroll >= (bs1) ) {
//			$('#bodySeccion1').addClass('animated');
//			$('#bodySeccion1').addClass('rollin');
//			$('#bodySeccion1').addClass('slow');
////			console.log("activo:"+scroll);
//		}
//		
//	});
//	$(window).scroll();


	
	// fin funciones scroll
	  
	  
//	  $( "#datepickerHGRC" ).datepicker({
//		    minDate: 0,
//		    maxDate: "+1m +1w",
//		    regional: "es"
//		  });
	  

	


/////////////
	/*
	 *   Secciones   *
	 */
/////////////
	$('.headerSeccion1').click(function(){
		//$('#modalEdicionHeaderSeccion1_btnSave').attr("disabled", false);
		
		if(validaParam()){
			$.seccionCampos = cargaModal("headerSeccion1", "");
			$('#modalEdicionHeaderSeccion1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoHeaderSeccion1);
//				console.log(valoresFinales)
//				var headerSeccion1Array = "";
				var tmp = valoresFinales.split("\++"); 
				for(i=0; i<tmp.length;i++){
					valoresFinales = valoresFinales.replace("&&", ".")
				}
				
				finalJson = { action : $.action,
							 idEmpresa : $.idEmpresa,	
							 seccion : "headerSeccion1",
							 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.headerSeccion2').click(function(){
		if(validaParam()){
			
			$.seccionCampos = cargaModal("headerSeccion2", "");
			$('#modalEdicionHeaderSeccion2_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "headerSeccion2",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	$('.headerSeccion3').click(function(){
		if(validaParam()){
			
			$.seccionCampos = cargaModal("headerSeccion3", "");
			$('#modalEdicionHeaderSeccion3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "headerSeccion3",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	$('.headerSeccion33').click(function(){
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
			
			$.seccionCampos = cargaModal("headerSeccion4",$.modelo);
			$('#modalEdicionHeaderSeccion4_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "headerSeccion4",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	/*
	 *  Funciones de carga Imagenes 
	 */
	$('.headerSeccionArray5').click(function(){
		if(validaParam()){
			
			$.seccionCampos = cargaModal("headerSeccionArray5",$.modelo);
			
			$('#faviconHSA5').on('change', function(){ enviaImagen("faviconHSA5Form") });
			$('#logoHSA5').on('change', function(){ enviaImagen("logoHSA5Form") });
			$('#fondoHeaderHSA5').on('change', function(){ enviaImagen("fondoHeaderHSA5Form") });

			$('#modalEdicionHeaderSeccionArray5_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 6);  // <-- son seis secciones en el modelo bronea
				
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}
				
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "headerSeccionArray5",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.bodySeccionArray1').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray1",$.modelo);
			
			$('#imagenBSA1').on('change', function(){ enviaImagen("imagenBSA1Form") });
			
			$('#modalEdicionBodySeccionArray1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray1);
				valorColumnas = 2;
				valorPosicion = 0;
				valorIniciaObjeto =1;
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto); 
				
				finalJson = { action : $.action,
							 idEmpresa : $.idEmpresa,	
							 seccion : "bodySeccionArray1",
							 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.bodySeccionArray2').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray2",$.modelo);
			$('#modalEdicionBodySeccionArray2_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray2);
				valorColumnas = 3;
				valorPosicion = 0;
				valorIniciaObjeto =0;
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto); 
				
				//genera el finalJson
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionArray2",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				//envia POST finalJson
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	
	
	$('.bodySeccionArray3').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray3",$.modelo);	
			
			$('#modalEdicionBodySeccionArray3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray3);
				valorColumnas = 3;
				valorPosicion = 0;
				valorIniciaObjeto = 1;
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionArray3",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	
	$('.bodySeccion1').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccion1",$.modelo);
			$('#imagenBS1').on('change', function(){ enviaImagen("imagenBS1Form") });
		
			$('#modalEdicionBodySeccion1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}
//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccion1",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.bodySeccionArray4').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray4",$.modelo);
			$('#modalEdicionBodySeccionArray4_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray4);
				valorColumnas = 3;
				valorPosicion = 0;
				valorIniciaObjeto = 1;
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionArray4",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.footerSeccionUbicacion').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSeccionUbicacion","");
			console.log("aloo");
//			$('#imagenBS1').on('change', function(){ enviaImagen("imagenBS1Form") });
		
			$('#modalEdicionfooterSeccionUbicacion_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				
//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "footerSeccionUbicacion",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});

	$('.footerSeccionRedes').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSeccionRedes",$.modelo);
			
			$('#modalEdicionFooterSeccionRedes_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "footerSeccionRedes",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});

	$('.footerSeccion3').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSeccion3",$.modelo);
			$('#imagenFS3').on('change', function(){ enviaImagen("imagenFS3Form") });
			
			$('#modalEdicionFooterSeccion3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
//				console.log(valoresFinales);
//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
//				console.log(valoresFinales);
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}

				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "footerSeccion3",
						 valoresFinales : valoresFinales }
//				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	

	$('.bodyQRE').click(function(){
		console.log("QRE Bronea")
		if(validaParam()){
			$.seccionCampos = cargaModal("bodyQRE");
			$('#modalEdicionBodyQRE_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoQRE);
				
				valorColumnas = 1;
				valorPosicion = 0;
				valorIniciaObjeto = 0;
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}
//				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto);
//				alert(valoresFinales);
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionQRE",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	
	  $('.bodyQRD').click(function(){
		  
		  console.log("QRD BrOnEa1")
		  
			if(validaParam()){
				$('#modalEdicionBodyQRD_btnSave').hide();
				$('#divCarrusel').empty();
				$('#divNuevaCategoria').empty()
				$('#divCategoria').show();
				$('#modalEdicionBodyQRD_btnNuevaCategoria').show();
				$('#modalEdicionBodyQRD_btnSaveElemento').hide();
				$('#divEdicionElementoCategoria').hide();
				$('#seleccionCategoriaB').prop("disabled",false);
				
				valida();
				
				cargaModal("bodyQRD");
				var jsonQRD = JSON.parse($('#jsonQRDHidden').val())
//				console.log(jsonQRD);
				$('#seleccionCategoriaB').empty();
				var optionCategoria = "<option value='' selected>Seleccione Categoria para Edicion</option>";
				var categoria='';
				$('#seleccionCategoriaB').append(optionCategoria);
				for (var clave in jsonQRD){
					  if (jsonQRD.hasOwnProperty(clave)) {
					    // Mostrando en pantalla la clave junto a su valor
//					    console.log("La clave es " + clave+ " y el valor es " + jsonQRD[clave]);
						  optionCategoria = "<option value='"+clave+"'>"+clave+"</option>";
						  $('#seleccionCategoriaB').append(optionCategoria);
					  }			  
					}
				
				
				$('#seleccionCategoriaB').change(function(event){
					$('#divEdicionElementoCategoria').show();
					$('#divEdicionCategoria').show();
					$('#modalEdicionBodyQRD_btnSave').show();
					$('#modalEdicionBodyQRD_btnNuevaCategoria').hide();
					$('#divEdicionElementoCategoria').empty();
					
					categoria = $('#seleccionCategoriaB option:selected').val();
					$('#seleccionCategoriaB').prop("disabled",true);
					$('#divCarrusel').empty();
					
					var edicionCategoria = '<br><button type="button" class="btn btn-secondary" id="modalEdicionBodyQRD_btnEliminarCategoria">Eliminar Categoria</button><button type="button" class="btn btn-primary" style="position:absolute; right:16px"id="modalEdicionBodyQRD_btnSumarElemento">Agregar Elemento</button>';
					$('#divEdicionElementoCategoria').append(edicionCategoria);
//					Eliminar Categoria
					 $('#modalEdicionBodyQRD_btnEliminarCategoria').click(function(){
						  if(confirm("Seguro Eliminar Categoria: Los elementos no se presentarán.")){
							  delete jsonQRD[categoria];
//							  console.log(jsonQRD);
							  submitDatos(jsonQRD);
						  }
						  
					  });
//					 Sumar elemento
					 $('#modalEdicionBodyQRD_btnSumarElemento').click(function(){
//						 console.log("sumar elemento");
						 	
						 $('#divCarrusel').empty();
						 	$('#modalEdicionBodyQRD_btnEliminarCategoria').hide();
						 	$('#modalEdicionBodyQRD_btnSumarElemento').hide();
						 	$('#modalEdicionBodyQRD_btnSave').hide();
							$('#modalEdicionBodyQRD_btnAgregarElemento').hide();
							$('#modalEdicionBodyQRD_btnNuevaCategoria').hide();
							
							var objetoCarrusel = '<div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span><div class="col-7"><img class="inspace-10 borderedbox" src="" ><form id="imagenObjetoQRDForm" class="imagenArrayForm"><hiden class="imagenObjetoQRDForm"></hiden><label for="imagenObjetoQRD">Actualiza imagen:</label><input id="imagenObjetoQRD" type="file" name="uploadfile" accept="image/jpeg" value="" required/></form></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Elemento</span><div class="col-7"><input type="text" class="form-control" id="tituloObjetoQRD" value="" required/></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span><div class="col-7"><textarea class="form-control" id="descripcionObjetoQRD" required></textarea></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Costo</span><div class="col-7"><input type="text" class="form-control" id="costoObjetoQRD" value="" required/></div></div>';
							$('#divNuevaCategoria').append(objetoCarrusel);
							
							$(".imagenArrayForm").click(function(){
								var imgArrayForm = $(this).attr('id'); 
								var imgArrayInput =$(this).children("input").attr('id');
								$('#'+imgArrayInput).on('change', function(){ enviaImagen(imgArrayForm); });
								
							});
							
							$('#tituloObjetoQRD').keyup(function(){
									$('#modalEdicionBodyQRD_btnSaveElemento').show();
							});
							$("#modalEdicionBodyQRD_btnSaveElemento").click(function(){
//								console.log(jsonQRD)
								var nuevoCategoria = $('#tituloCtegoria').val();
								var nuevoObjeto={
									imagen:formatoImagen($('#imagenObjetoQRD').val()),
									titulo:$('#tituloObjetoQRD').val(),
									descripcion:$('#descripcionObjetoQRD').val(),
									costo:$('#costoObjetoQRD').val()
								}
//								alert(nuevoObjeto.imagen);
								var nuevoArrayObjetos = new Array();
								for(i in jsonQRD[categoria]){
									var elemento = jsonQRD[categoria][i];
//									console.log(elemento);
									nuevoArrayObjetos.push(elemento);
								}
								nuevoArrayObjetos.push(nuevoObjeto)
								var nuevoSeccion = {nuevoCategoria: nuevoArrayObjetos};
								jsonQRD[categoria] = nuevoArrayObjetos;
//								console.log(jsonQRD);
								submitDatos(jsonQRD);
						});
					});
					
					var carrusel = '<div id="carouselEdicionBodyQRD" class="carousel slide" data-interval="false"> <div class="carousel-inner container" id="contenedorCarrusel"><div class="carousel-item col-12 text-center" id="elementoCarrusel"></div> </div><a class="carousel-control-prev" href="#carouselEdicionBodyQRD" role="button" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="carousel-control-next" href="#carouselEdicionBodyQRD" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span></a><ol class="carousel-indicators"><li data-target="#carouselEdicionBodyQRD" data-slide-to="0" class="active"></li><li data-target="#carouselEdicionBodyQRD" data-slide-to="1"></li><li data-target="#carouselEdicionBodyQRD" data-slide-to="2"></li></ol></div>'
					$('#divCarrusel').append(carrusel);
					
					console.log(jsonQRD.hasOwnProperty(categoria));
					var i = 0;
					var objetoArray = jsonQRD[categoria]; 
					var a = 0;
					$('#contenedorCarrusel #elementoCarrusel').remove();
					for(o in objetoArray){

						var elementoCarrusel='<div class="carousel-item col-12 text-center" id="elementoCarrusel'+a+'"></div>'		
						$('#contenedorCarrusel').prepend(elementoCarrusel);
						if(a===0){$('#elementoCarrusel'+a).addClass('active');}
						
						var imagen = "http://kaltiaservicios.com/store/kaltia/empresa/"+$.action+"/images/"+objetoArray[a].imagen+"?v=1";
						var titulo = objetoArray[a].titulo;
						var descripcion = objetoArray[a].descripcion;
						var costo = objetoArray[a].costo;
						var objetoCarrusel = '<div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"> \
							<i class="fa fa-terminal"></i>Imagen</span>\
							<div class="col-7"><img class="inspace-10 borderedbox" src="'+imagen+'" > \
								<form id="imagenObjetoQRDForm'+a+'" class="imagenArrayForm"><hiden class="imagenObjetoQRDForm'+a+'"></hiden><label for="imagenObjetoQRD'+a+'">Actualiza imagen:</label>\
									<input id="imagenObjetoQRD'+a+'" type="file" name="uploadfile" accept="image/jpeg" value="'+objetoArray[a].imagen+'"/></form></div></div>\
							<div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Elemento</span>\
									<div class="col-7"><input type="text" class="form-control" id="tituloObjetoQRD'+a+'" value="'+titulo+'"/></div></div>\
							<div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>\
									<div class="col-7"><textarea class="form-control" id="descripcionObjetoQRD'+a+'">'+descripcion+'</textarea></div></div>\
							<div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Costo</span>\
									<div class="col-7"><input type="text" class="form-control" id="costoObjetoQRD'+a+'" value="'+costo+'"/></div></div>';
				       
	   					$('#elementoCarrusel'+a).append(objetoCarrusel);
						a++;
					}
					$(".imagenArrayForm").click(function(){
						var imgArrayForm = $(this).attr('id'); 
						var imgArrayInput =$(this).children("input").attr('id');
//						console.log(imgArrayForm);
//						console.log(imgArrayInput);
						$('#'+imgArrayInput).on('change', function(){ enviaImagen(imgArrayForm); });
					});
				});
			}
		  
		 
		  
			$('#modalEdicionBodyQRD_btnSave').click(function(){
				
				var jsonObjetoActualizado;
				var jsonCategoriaActualizado = new Array();
				for(var a=0 ; a < jsonQRD[categoria].length ; a++){
					var img = formatoImagen($('#imagenObjetoQRD'+a).val());
					if(img===null || img===""){
						img = formatoImagen($('#imagenObjetoQRD'+a).attr('value')); 
					}
					jsonObjetoActualizado = {
							imagen: img,
							titulo: $('#tituloObjetoQRD'+a).val(),
							descripcion: $('#descripcionObjetoQRD'+a).val(),
							costo: $('#costoObjetoQRD'+a).val()};
					jsonCategoriaActualizado.push(jsonObjetoActualizado);
				
//					console.log(img);
				}
				
				jsonQRD[categoria]=jsonCategoriaActualizado;
//				console.log(jsonQRD);
				
				submitDatos(jsonQRD);
			});
			
			$('#modalEdicionBodyQRD_btnNuevaCategoria').click(function(){
				
				$('#modalEdicionBodyQRD_btnNuevaCategoria').hide();
				var tituloCategoria = '<div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Nombre Categoria</span><div class="col-7"><input type="text" class="form-control" id="tituloCtegoria" value="" "/></div></div><br><h><button type="button" class="btn btn-primary" id="modalEdicionBodyQRD_btnAgregarElemento">Agregar Elemento</button><div id="divNuevoElemento"></div>';
				
				$('#divNuevaCategoria').empty();
				$('#divCategoria').hide();
				$('#divNuevaCategoria').append(tituloCategoria);
				$('#modalEdicionBodyQRD_btnAgregarElemento').hide();
				
				$('#tituloCtegoria').keyup(function(){
					if(flag){
						var btnAgregarElemento ='';
						$('#divNuevaCategoria').append(btnAgregarElemento );
						$('#modalEdicionBodyQRD_btnAgregarElemento').show();
						flag = false;
					}
//					console.log(btnAgregarElemento);
				});
				
				
			$('#modalEdicionBodyQRD_btnAgregarElemento').click(function(){
				
					$('#modalEdicionBodyQRD_btnAgregarElemento').hide();
					$('#modalEdicionBodyQRD_btnNuevaCategoria').hide();
					
					var objetoCarrusel = '<div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span><div class="col-7"><img class="inspace-10 borderedbox" src="" ><form id="imagenObjetoQRDForm" class="imagenArrayForm"><hiden class="imagenObjetoQRDForm"></hiden><label for="imagenObjetoQRD">Actualiza imagen:</label><input id="imagenObjetoQRD" type="file" name="uploadfile" accept="image/jpeg" value="" required/></form></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Elemento</span><div class="col-7"><input type="text" class="form-control" id="tituloObjetoQRD" value="" required/></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span><div class="col-7"><textarea class="form-control" id="descripcionObjetoQRD" required></textarea></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Costo</span><div class="col-7"><input type="text" class="form-control" id="costoObjetoQRD" value="" required/></div></div>';
					$('#divNuevaCategoria').append(objetoCarrusel);
					
					$(".imagenArrayForm").click(function(){
						var imgArrayForm = $(this).attr('id'); 
						var imgArrayInput =$(this).children("input").attr('id');
						$('#'+imgArrayInput).on('change', function(){ enviaImagen(imgArrayForm); });
						
					});
					
					$('#tituloObjetoQRD').keyup(function(){
							$('#modalEdicionBodyQRD_btnSaveElemento').show();
					});
					$("#modalEdicionBodyQRD_btnSaveElemento").click(function(){
//						aqui
//						console.log(jsonQRD)
						var nuevoCategoria = $('#tituloCtegoria').val();
						var nuevoObjeto={
							imagen:formatoImagen($('#imagenObjetoQRD').val()),
							titulo:$('#tituloObjetoQRD').val(),
							descripcion:$('#descripcionObjetoQRD').val(),
							costo:$('#costoObjetoQRD').val()
						}
						
						var nuevoArrayObjetos = new Array();
						nuevoArrayObjetos.push(nuevoObjeto)
						var nuevoSeccion = {nuevoCategoria: nuevoArrayObjetos};
						jsonQRD[nuevoCategoria] = nuevoArrayObjetos;
//						console.log(jsonQRD);
						submitDatos(jsonQRD);
					});
				});
			});
		});
	  
	  

	  function formatoImagen(imagenTexto){
		  while(imagenTexto.includes("C:\\fakepath\\") ){
			  imagenTexto = imagenTexto.replace("C:\\fakepath\\", "")
		  }
		  while(imagenTexto.includes(" ") ){
			  imagenTexto = imagenTexto.replace(" ", "")
		  }
		  return imagenTexto;
		}
	  
	  function transformaQRD(jsonQRD){
		  var text='';
		  for(var a in jsonQRD){
//			  console.log(a);
			  text = text + a + "++";
			  var objetoArray = jsonQRD[a];
			  var o = 0;
    		  for(e in objetoArray){
				  text = text + objetoArray[o].imagen + "&&" + objetoArray[o].titulo + "&&" + objetoArray[o].descripcion  + "&&" + objetoArray[o].costo + "++"
				  o++;
			  }
			  text = text.slice(0,text.length-2);
			  text = text + "--";
		  }
		  text = text.slice(0,text.length-2);
//		  console.log(text);
		  return text;
	  }
	  
	  function submitDatos(jsonQRD){
		  var textQRD = transformaQRD(jsonQRD);
			
			finalJson = { action : $.action,
					 idEmpresa : $.idEmpresa,	
					 seccion : "bodySeccionQRD",
					 valoresFinales : textQRD }
//			console.log(finalJson);
			
			enviaDataEdicion(finalJson)
	  	  }
	  
	  
	  
	});/*********  fin de documento *********/

function valida(){flag = true ; return flag;}