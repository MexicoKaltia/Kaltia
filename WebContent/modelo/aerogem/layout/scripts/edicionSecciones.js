$(document).ready(function() {
	

	 $.modelo = "Aerogem";	

	
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
				"headerSeccion4"  			:{  "tituloHS4":"text",  "descripcionHS4" :"lorem",  "seleccion1HS4" : "text",  "boton1HS4" : "text"},
				"headerSeccionArray5"		:{"tituloHSA5":"text",  "faviconHSA5":"img",  "logoHSA5":"img",  "fondoHeaderHSA5":"img", "objeto" : {"enlaceHSA5":"text" }},
				"bodySeccion1"     			:{  "imagenBS1" :"img",  "minitituloBS1" :"text", "tituloBS1" :"text",  "descripcion1BS1":"lorem", "descripcion2BS1":"lorem", "descripcion3BS1":"lorem",  "seleccionBS1":"text",  "botonBS1":"text"},
				"bodySeccionArray1"			:{  "tituloBSA1":"text",  "descripcionBSA1":"lorem",  "objeto" :{"posicionObjetoBSA1" :"text", "iconoObjetoBSA1" : "text", "tituloObjetoBSA1" :"text", "descripcionObjetoBSA1" :"lorem", "seleccionObjetoBSA1" : "text", "botonObjetoBSA1":"text"}},
				"bodySeccion2"	  :{  "imagenBS2" :"img",  "tituloBS2" :"text",  "descripcionBS2":"lorem",  "seleccionBS2":"text",  "botonBS2":"text"},
				"bodySeccionArray2":{  "tituloBSA2" :"text",  "descripcionBSA2" : "lorem",  "objeto" : { "posicionObjetoBSA2" :"text", "seleccionObjetoBSA2":"text", "imagenObjetoBSA2" :"img", "fechaObjetoBSA2":"text", "textoObjetoBSA2":"text", "tituloObjetoBSA2" :"text", "descripcionObjetoBSA2" :"lorem" }},
				"footerSeccion1"   :{  "tituloFS1" : "text",  "textFFS1" : "text", "textTFS1" : "text", "textYFS1" : "text", "textLFS1" : "text", "textGFS1" : "text"},
				"footerSeccion2"   :{  "tituloFS2" : "text",  "subtituloFS2" : "lorem",  "domicilioFS2" : "text",  "telefonoFS2" : "text",  "correoFS2" : "text", "ubicacionFS2" : "text"},
				"footerSeccion3"    :{  "tituloFS3" : "text", "imagenFS3":"img" },
				"footerSeccionArray1":{  "tituloFSA1" :"text", "objeto" : {  "tituloObjetoFSA1" :"text", "subTituloObjetoFSA1" :"text", "descripcionObjetoFSA1" :"lorem" }},
				"footerSecciones"   :{  "tituloFS1" : "text",  "textFFS1" : "text", "textTFS1" : "text", "textYFS1" : "text", "textLFS1" : "text", "textGFS1" : "text"},
				"footerSeccionUbicacion"   :{  "tituloFSU" : "text",  "subtituloFSU" : "lorem",  "domicilioFSU" : "text",  "telefonoFSU" : "text",  "correoFSU" : "text", "ubicacionFSU" : "text"},
				"footerSeccionRedes"   :{  "tituloFS1" : "text",  "textFFS1" : "text", "textTFS1" : "text", "textYFS1" : "text", "textLFS1" : "text", "textGFS1" : "text"},
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
		case "bodySeccion2": return camposModelo.bodySeccion2; break;
		case "bodySeccionArray2": return camposModelo.bodySeccionArray2; break;
		case "footerSeccion1": return camposModelo.footerSeccion1; break;   
		case "footerSeccion2": return camposModelo.footerSeccion2; break;   
		case "footerSeccion3": return camposModelo.footerSeccion3; break;   
		case "footerSeccionArray1": return camposModelo.footerSeccionArray1; break;
		case "footerSecciones": return camposModelo.footerSeccion1; break;
		case "footerSeccionUbicacion": return camposModelo.footerSeccionUbicacion; break;
		case "footerSeccionRedes": return camposModelo.footerSeccionRedes; break;
		case "bodyQRE": return camposModelo.bodyQRE; break;
		case "bodyQRD": return camposModelo.bodyQRD; break;
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
		if(validaParam()){
			$.seccionCampos = cargaModal("headerSeccion1");
			$('#modalEdicionHeaderSeccion1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoHeaderSeccion1);
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
			
			$.seccionCampos = cargaModal("headerSeccion2");
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
			
			$.seccionCampos = cargaModal("headerSeccion4");
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
			
			$.seccionCampos = cargaModal("headerSeccionArray5");
			
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
			$.seccionCampos = cargaModal("bodySeccion1");
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
			$.seccionCampos = cargaModal("bodySeccionArray1");
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
			$.seccionCampos = cargaModal("bodySeccion2");
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
			$.seccionCampos = cargaModal("bodySeccionArray2");
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
			$.seccionCampos = cargaModal("footerSeccionRedes");
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
			$.seccionCampos = cargaModal("footerSeccionUbicacion");
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
			$.seccionCampos = cargaModal("footerSeccion3");
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
			
			$.seccionCampos = cargaModal("footerSeccionArray1");

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
	
	 
	  $('.bodyQRE').click(function(){
			console.log("QRE Aerogem")
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
//					valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto);
//					alert(valoresFinales);
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
			console.log("QRD Aerogem3")
			var jsonQRD = JSON.parse($('#jsonQRDHidden').val())
			console.log(jsonQRD);
			
			if(validaParam()){
				$.seccionCampos = cargaModal("bodyQRD");
				$('#modalEdicionBodyQRD_btnSave').click(function(){
					valoresFinales = dataEdicion($.seccionCampos, contaObjetoQRE);
					
					valorColumnas = 1;
					valorPosicion = 0;
					valorIniciaObjeto = 0;
					while(valoresFinales.includes("C:\\fakepath\\") ){
						valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
					}
//					valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto);
//					alert(valoresFinales);
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

	
	
	});/*********  fin de documento *********/
	
	