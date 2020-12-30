$(document).ready(function() {
	

	 $.modelo = "Algenius";	

	
	function cargaModal(seccion){
		$.seccionCampos="";	
		$.seccionCampos = estructuraSeccion(seccion);
		$('.'+seccion).attr("data-toggle","modal");
		$('.'+seccion).attr("data-target","#modalEdicion_"+seccion);
		$("div.alertaBody_file > div").remove();
		console.log("cargarModal paso 3 : #modalEdicion_"+seccion);
		return $.seccionCampos; 
	}


	function estructuraSeccion(seccion){
		var camposModelo = {
				"headerSeccion1" 		   :{  "objeto" : {    "tituloObjetoHS1" :"text", "seleccionObjetoHS1" :"text"  }},
				"headerSeccion2" 		   :{   "telefonoHS2" : "text",   "emailHS2" : "text"},
				"headerSeccion4"   :{  "tituloHS4":"text",  "descripcionHS4" :"lorem",  "seleccion1HS4" : "text",  "boton1HS4" : "text"},
				"headerSeccionArray5":{"tituloHSA5":"text",  "faviconHSA5":"img",  "logoHSA5":"img",  "fondoHeaderHSA5":"img", "objeto" : {"enlaceHSA5":"text" }},
				"bodySeccionArray1"  :{  "objeto":{"posicionObjetoBSA1" :"text",    "iconoObjetoBSA1" :"text", "tituloObjetoBSA1" :"text",    "descripcionObjetoBSA1" :"lorem" ,  "referenciaObjetoBSA1":"text", "botonObjetoBSA1" : "text" }},
				"bodySeccion1" 		   :{"imagenBS1":"img", "tituloBS1":"text", "subTituloBS1":"text" , "descripcionBS1" : "lorem", "descripcion2BS1" : "lorem", "referenciaBS1":"text", "botonBS1":"text", "subTitulo2BS1":"text" },
				"bodySeccionArray2"  :{ "tituloBSA2":"text", "subTituloBSA2":"text" , "objeto":{"posicionObjetoBSA2" :"text","imagenObjetoBSA2" :"img", "descripcionObjetoBSA2" :"lorem", "tituloObjetoBSA2" :"text",    "subTituloObjetoBSA2" :"text"  }},
				"bodySeccionArray3"  :{ "imagenBSA3":"img", "tituloBSA3":"text",  "objeto":{"posicionObjetoBSA3" :"text","imagenObjetoBSA3" :"img", "tituloObjetoBSA3" :"text", "descripcionObjetoBSA3" :"lorem"}},
				"bodySeccionArray4"  :{  "objeto":{"posicionObjetoBSA4" :"text","imagenObjetoBSA4" :"img"}},
				"footerSeccionUbicacion"   :{  "tituloFS1" : "text",  "subtituloFS1" : "lorem",  "domicilioFS1" : "text",  "telefonoFS1" : "text",  "correoFS1" : "text", "ubicacionFS1" : "text"},
				"footerSeccionRedes"   :{  "tituloFS2" : "text",  "textFFS2" : "text", "textTFS2" : "text", "textYFS2" : "text", "textLFS2" : "text", "textGFS2" : "text"},
				"footerSeccion3"   :{  "tituloFS3" : "text" ,  "referenciaFS3" : "text",  "subTituloFS3" : "text", "tagFS3" : "text",  "descripcionFS3" : "lorem"   },
				"footerSecciones"    :{  "imagenFSS":"img", "tituloFSS" : "text" },
//				"bodySeccionArray1":{  "tituloBSA1":"text",  "subTituloBSA1":"text",  "descripcion1BSA1":"lorem",  "descripcion2BSA1":"lorem",  "imagenBSA1" : "img",  "objeto" :{"posicionObjetoBSA1" :"text","referenciaObjetoBSA1" : "text",      "iconoObjetoBSA1" : "text",      "tituloObjetoBSA1" :"text",      "descripcionObjetoBSA1" :"lorem"  }},
//				"bodySeccionArray2":{  "objeto":{    "posicionObjetoBSA2" :"text",    "iconoObjetoBSA2" :"text",    "referenciaObjetoBSA2" :"text",    "tituloObjetoBSA2" :"text",    "descripcionObjetoBSA2" :"lorem"  }},
//				"bodySeccionArray3":{  "tituloBSA3" :"text",  "descripcionBSA3" : "lorem",  "objeto" : {      "posicionObjetoBSA3" :"text",      "imagenObjetoBSA3" : "img",      "referenciaObjetoBSA3" : "text",      "tituloObjetoBSA3" :"text",      "descripcionObjetoBSA3" :"text"  }},
//				"bodySeccionArray4":{  "tituloBSA4" :"text",  "descripcionBSA4" : "lorem",  "objeto" : {      "posicionObjetoBSA4" :"text",      "imagenObjetoBSA4" : "img",      "referenciaObjetoBSA4" : "text",      "tituloObjetoBSA4" :"text",      "descripcionObjetoBSA4" :"text",      "botonObjetoBSA4":"text"  }},
//				"footerSeccion1"   :{  "tituloFS1" : "text",  "subtituloFS1" : "lorem",  "domicilioFS1" : "text",  "telefonoFS1" : "text",  "correoFS1" : "text", "ubicacionFS1" : "text"},
//				"footerSeccion2"   :{  "tituloFS2" : "text",  "textFFS2" : "text", "textTFS2" : "text", "textYFS2" : "text", "textLFS2" : "text", "textGFS2" : "text"},

				}
		seccion = seccion;
		switch (seccion) { 
		case "headerSeccion1": return camposModelo.headerSeccion1; break;
		case "headerSeccion2": return camposModelo.headerSeccion2; break;
		case "headerSeccion3": return camposModelo.headerSeccion3; break;
		case "headerSeccion4": return camposModelo.headerSeccion4; break;
		case "headerSeccionArray5": return camposModelo.headerSeccionArray5; break;
		case "bodySeccionArray1": return camposModelo.bodySeccionArray1; break;
		case "bodySeccion1": return camposModelo.bodySeccion1; break;
		case "bodySeccionArray2": return camposModelo.bodySeccionArray2; break;
		case "bodySeccionArray3": return camposModelo.bodySeccionArray3; break;
		case "bodySeccionArray4": return camposModelo.bodySeccionArray4; break;
		case "footerSeccionUbicacion": return camposModelo.footerSeccionUbicacion; break;
		case "footerSeccionRedes": return camposModelo.footerSeccionRedes; break;
		case "footerSeccion3": return camposModelo.footerSeccion3; break;   
		case "footerSecciones": return camposModelo.footerSecciones; break;   
//		case "footerSecciones": return camposModelo.footerSeccionRedes; break;
//		case "bodySeccion1": return camposModelo.bodySeccion1; break;
//		case "bodySeccionArray2": return camposModelo.bodySeccionArray2; break;
//		case "bodySeccionArray3": return camposModelo.bodySeccionArray3; break;
//		case "bodySeccionArray4": return camposModelo.bodySeccionArray4; break;
//		case "footerSeccion1": return camposModelo.footerSeccion1; break;   
//		case "footerSeccion2": return camposModelo.footerSeccion2; break;   
	
		}
	}



	/////////////////////////////////////////////////////////////////////////
	/*
	 * funciones scroll
	 */
	
//	var valorFijo = $("#headerSeccionArray5").offset().top
//	var bsa1 = $(".bodySeccionArray1").offset().top
//	var bsa2 = $(".bodySeccionArray2").offset().top
//	var bsa3 = $(".bodySeccionArray3").offset().top
//	var bsa4 = $(".bodySeccionArray4").offset().top
//	
//	var bsa2 = $(".bodySeccionArray2").offset().top - (bsa3 - $(".bodySeccionArray2").offset().top) //- ((bsa3 - $(".bodySeccionArray2").offset().top)/2) 
//	var bs1 = $(".bodySeccion1").offset().top - (bsa4 - $(".bodySeccion1").offset().top) - ((bsa4 - $(".bodySeccion1").offset().top)/2)
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
//			$('#bodySeccionArray1').addClass('rollIn');
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
//			$('#bodySeccion1').addClass('');
//			$('#bodySeccion1').addClass('zoomInDown');
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
//		console.log('headeSeccion1');
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
				valoresFinales = dataEdicion($.seccionCampos, 6);  // <-- son seis secciones en el modelo 
				
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
//			console.log($seccionCampos);
			$('#modalEdicionBodySeccionArray1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray1);
//				console.log(valoresFinales);
				valorColumnas = 3;  // cantidad de columnas que define el arreglo de Objetos
				valorPosicion = 0; // valor donde se situa el campo posicionObjecto dentro del json Objeto
				valorIniciaObjeto =0; // en que valor entero inicia el arreglo de Objetos
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto); 
//				console.log(valoresFinales);
				
				//genera el finalJson
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionArray1",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				//envia POST finalJson
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
	
	$('.bodySeccionArray2').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray2",$.modelo);
//			console.log($seccionCampos);
//			$('#imagenObjetoBSA2').on('change', function(){ enviaImagen("imagenObjetoBSA2Form") });
			
			$('#modalEdicionBodySeccionArray2_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray2);
//				console.log(valoresFinales);
				valorColumnas = 2;  // cantidad de columnas que define el arreglo de Objetos
				valorPosicion = 0; // valor donde se situa el campo posicionObjecto dentro del json Objeto
				valorIniciaObjeto =1; // es que valor entero que marca la posicion del arreglo de Objetos
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto); 
//				console.log(valoresFinales);
				
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
			$('#imagenBSA3').on('change', function(){ enviaImagen("imagenBSA3Form") });
			
			$('#modalEdicionBodySeccionArray3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray3);
//				console.log(valoresFinales);
				valorColumnas = 4;  // cantidad de columnas que define el arreglo de Objetos
				valorPosicion = 0; // valor donde se situa el campo posicionObjecto dentro del json Objeto
				valorIniciaObjeto =1; // es que valor entero que marca la posicion del arreglo de Objetos
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto); 
//				console.log(valoresFinales);
				
				//genera el finalJson
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionArray3",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				//envia POST finalJson
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});

	$('.bodySeccionArray4').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray4",$.modelo);
//			$('#imagenBSA4').on('change', function(){ enviaImagen("imagenBSA4Form") });
			$('#modalEdicionBodySeccionArray4_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray4);
				console.log(valoresFinales);
				valorColumnas = 4;  // cantidad de columnas que define el arreglo de Objetos
				valorPosicion = 0; // valor donde se situa el campo posicionObjecto dentro del json Objeto
				valorIniciaObjeto =0; // es que valor entero que marca la posicion del arreglo de Objetos
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto); 
				console.log(valoresFinales);
				
				//genera el finalJson
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionArray4",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				//envia POST finalJson
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
			$.seccionCampos = cargaModal("footerSeccionRedes","");
//			console.log(			$.seccionCampos);
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
			console.log($.seccionCampos);
			$('#modalEdicionFooterSeccion3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				console.log(valoresFinales);
//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
//				console.log(valoresFinales);
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
	
	$('.footerSecciones').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSecciones","");
			$('#imagenFSS').on('change', function(){ enviaImagen("imagenFSSForm") });
			console.log($.seccionCampos);
			$('#modalEdicionFooterSecciones_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				console.log(valoresFinales);
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}

//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "footerSecciones",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});

	
	
	
	
	
	});/*********  fin de documento *********/
	
	