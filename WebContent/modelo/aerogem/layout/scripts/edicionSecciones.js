$(document).ready(function() {
	

	 $.modelo = "Aerogem";	

	
	function cargaModal(seccion, modelo){
		$.seccionCampos="";	
//		console.log("cargarModal paso 1: "+seccion+modelo);
		$.seccionCampos = estructuraSeccion(seccion+modelo);
//		console.log("cargarModal paso 2 : "+$.seccionCampos);
		$('.'+seccion).attr("data-toggle","modal");
		$('.'+seccion).attr("data-target","#modalEdicion_"+seccion+modelo);
		$("div.alertaBody_file > div").remove();
		console.log("cargarModal paso 3 : #modalEdicion_"+seccion+modelo);
		return $.seccionCampos; 
	}


	function estructuraSeccion(seccion){
		var camposModelo = {
				"headerSeccion1" 		   :{  "objeto" : {    "tituloObjetoHS1" :"text", "seleccionObjetoHS1" :"text"  }},
				"headerSeccion2" 		   :{   "telefonoHS2" : "text",   "emailHS2" : "text"},
				"headerSeccion4Aerogem"   :{  "tituloHS4":"text",  "descripcionHS4" :"lorem",  "seleccion1HS4" : "text",  "boton1HS4" : "text"},
				"headerSeccionArray5Aerogem":{"tituloHSA5":"text",  "faviconHSA5":"img",  "logoHSA5":"img",  "fondoHeaderHSA5":"img", "objeto" : {"enlaceHSA5":"text" }},
				"bodySeccion1Aerogem"     :{  "imagenBS1" :"img",  "minitituloBS1" :"text", "tituloBS1" :"text",  "descripcion1BS1":"lorem", "descripcion2BS1":"lorem", "descripcion3BS1":"lorem",  "seleccionBS1":"text",  "botonBS1":"text"},
				"bodySeccionArray1Aerogem":{  "tituloBSA1":"text",  "descripcionBSA1":"lorem",  "objeto" :{"posicionObjetoBSA1" :"text", "iconoObjetoBSA1" : "text", "tituloObjetoBSA1" :"text", "descripcionObjetoBSA1" :"lorem", "seleccionObjetoBSA1" : "text", "botonObjetoBSA1":"text"}},
				"bodySeccion2Aerogem"	  :{  "imagenBS2" :"img",  "tituloBS2" :"text",  "descripcionBS2":"lorem",  "seleccionBS2":"text",  "botonBS2":"text"},
				"bodySeccionArray2Aerogem":{  "tituloBSA2" :"text",  "descripcionBSA2" : "lorem",  "objeto" : { "posicionObjetoBSA2" :"text", "seleccionObjetoBSA2":"text", "imagenObjetoBSA2" :"img", "fechaObjetoBSA2":"text", "textoObjetoBSA2":"text", "tituloObjetoBSA2" :"text", "descripcionObjetoBSA2" :"lorem" }},
				"footerSeccion1Aerogem"   :{  "tituloFS1" : "text",  "textFFS1" : "text", "textTFS1" : "text", "textYFS1" : "text", "textLFS1" : "text", "textGFS1" : "text"},
				"footerSeccion2Aerogem"   :{  "tituloFS2" : "text",  "subtituloFS2" : "lorem",  "domicilioFS2" : "text",  "telefonoFS2" : "text",  "correoFS2" : "text", "ubicacionFS2" : "text"},
				"footerSeccion3Aerogem"    :{  "tituloFS3" : "text", "imagenFS3":"img" },
				"footerSeccionArray1Aerogem":{  "tituloFSA1" :"text", "objeto" : {  "tituloObjetoFSA1" :"text", "subTituloObjetoFSA1" :"text", "descripcionObjetoFSA1" :"lorem" }},
				"footerSecciones"   :{  "tituloFS1" : "text",  "textFFS1" : "text", "textTFS1" : "text", "textYFS1" : "text", "textLFS1" : "text", "textGFS1" : "text"},
				"footerSeccionUbicacion"   :{  "tituloFS2" : "text",  "subtituloFS2" : "lorem",  "domicilioFS2" : "text",  "telefonoFS2" : "text",  "correoFS2" : "text", "ubicacionFS2" : "text"},
				"footerSeccionRedes"   :{  "tituloFS1" : "text",  "textFFS1" : "text", "textTFS1" : "text", "textYFS1" : "text", "textLFS1" : "text", "textGFS1" : "text"}
				}
		seccion = seccion;
		switch (seccion) { 
		case "headerSeccion1": return camposModelo.headerSeccion1; break;
		case "headerSeccion2": return camposModelo.headerSeccion2; break;
		case "headerSeccion3": return camposModelo.headerSeccion3; break;
		case "headerSeccion4Aerogem": return camposModelo.headerSeccion4Aerogem; break;
		case "headerSeccionArray5Aerogem": return camposModelo.headerSeccionArray5Aerogem; break;
		case "bodySeccion1Aerogem": return camposModelo.bodySeccion1Aerogem; break;
		case "bodySeccionArray1Aerogem": return camposModelo.bodySeccionArray1Aerogem; break;
		case "bodySeccion2Aerogem": return camposModelo.bodySeccion2Aerogem; break;
		case "bodySeccionArray2Aerogem": return camposModelo.bodySeccionArray2Aerogem; break;
		case "footerSeccion1Aerogem": return camposModelo.footerSeccion1Aerogem; break;   
		case "footerSeccion2Aerogem": return camposModelo.footerSeccion2Aerogem; break;   
		case "footerSeccion3Aerogem": return camposModelo.footerSeccion3Aerogem; break;   
		case "footerSeccionArray1Aerogem": return camposModelo.footerSeccionArray1Aerogem; break;
		case "footerSecciones": return camposModelo.footerSeccion1Aerogem; break;
		case "footerSeccionUbicacion": return camposModelo.footerSeccionUbicacion; break;
		case "footerSeccionRedes": return camposModelo.footerSeccionRedes; break;
		}
	}



	/////////////////////////////////////////////////////////////////////////
	/*
	 * funciones scroll  Nav Fixed
	 */
	
	var valorFijo = $("#headerSeccionArray5").offset().top
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
//		console.log(" 	scroll:"+scroll)
		
		if (scroll >= valorFijo ) {
			$('#headerSeccionArray5').addClass('sticky-top');
			$('#headerSeccionArray5').addClass('nav-overlay');
		} else {
			$('#headerSeccionArray5').removeClass('sticky-top');
			$('#headerSeccionArray5').removeClass('nav-overlay');
		}
		
	});
	$(window).scroll();
	// fin funciones scroll
	  
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
	
	
	$('.headerSeccionArray5').click(function(){
		if(validaParam()){
			
			$.seccionCampos = cargaModal("headerSeccionArray5",$.modelo);
			
			$('#faviconHSA5').on('change', function(){ enviaImagen("faviconHSA5Form") });
			$('#logoHSA5').on('change', function(){ enviaImagen("logoHSA5Form") });
			$('#fondoHeaderHSA5').on('change', function(){ enviaImagen("fondoHeaderHSA5Form") });

			$('#modalEdicionHeaderSeccionArray5_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 6);  // <-- son seis secciones en el modelo Aerogem
				
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
	
	$('.bodySeccionArray1').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray1",$.modelo);
			$('#modalEdicionBodySeccionArray1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray1);
				valorColumnas = 3;
				valorPosicion = 0;
				valorIniciaObjeto =1;
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto); 
				
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
	
	$('.bodySeccion2').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccion2",$.modelo);
			$('#imagenBS2').on('change', function(){ enviaImagen("imagenBS2Form") });
		
			$('#modalEdicionBodySeccion2_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}
//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccion2",
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
				valorIniciaObjeto = 1;
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionArray2",
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
//			$('#imagenFS1').on('change', function(){ enviaImagen("imagenFS1Form") });
		
			$('#modalEdicionFooterSeccionRedes_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}

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
	
	$('.footerSeccionUbicacion').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSeccionUbicacion","");
//			$('#imagenFS2').on('change', function(){ enviaImagen("imagenFS2Form") });
			console.log("aloo");
			$('#modalEdicionfooterSeccionUbicacion_btnSave').click(function(){
				console.log($.seccionCampos);
				valoresFinales = dataEdicion($.seccionCampos, 0);
//				while(valoresFinales.includes("C:\\fakepath\\") ){
//					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
//				}

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
	
	$('.footerSeccion3').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSeccion3",$.modelo);
			$('#imagenFS3').on('change', function(){ enviaImagen("imagenFS3Form") });
		
			$('#modalEdicionFooterSeccion3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}

//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "footerSeccion3",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});


	$('.footerSeccionArray1').click(function(){
		if(validaParam()){
			
			$.seccionCampos = cargaModal("footerSeccionArray1",$.modelo);

			$('#modalEdicionfooterSeccionArray1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 3);  // <-- son seis secciones en el modelo Aerogem
				
//				while(valoresFinales.includes("C:\\fakepath\\") ){
//					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
//				}
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "footerSeccionArray1",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});

	
	
	});/*********  fin de documento *********/
	
	