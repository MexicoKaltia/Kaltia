$(document).ready(function() {

	/////////////////////////////////////////////////////////////////////////
	/*
	 * funciones scroll
	 */
	
	var valorFijo = $("#headerSeccionArray5").offset().top
	var bsa1 = $(".bodySeccionArray1").offset().top
	var bsa2 = $(".bodySeccionArray2").offset().top
	var bsa3 = $(".bodySeccionArray3").offset().top
	var bsa4 = $(".bodySeccionArray4").offset().top
	
	var bsa2 = $(".bodySeccionArray2").offset().top - (bsa3 - $(".bodySeccionArray2").offset().top) //- ((bsa3 - $(".bodySeccionArray2").offset().top)/2) 
	var bs1 = $(".bodySeccion1").offset().top - (bsa4 - $(".bodySeccion1").offset().top) - ((bsa4 - $(".bodySeccion1").offset().top)/2)
	
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
//		console.log(" 	scroll:"+scroll)
		
		if (scroll >= valorFijo ) {
			$('#headerSeccionArray5').addClass('sticky-top');
			$('#headerSeccionArray5').addClass('nav-overlay');
//			console.log("activo:"+scroll);
		} else {
			$('#headerSeccionArray5').removeClass('sticky-top');
			$('#headerSeccionArray5').removeClass('nav-overlay');
//			console.log("fuera:"+scroll);
		}
		
		if (scroll >= bsa1/2 ) {
			$('#bodySeccionArray1').addClass('animated');
			$('#bodySeccionArray1').addClass('rollIn');
			$('#bodySeccionArray1').addClass('slow');
//			console.log("activo:"+scroll);
		} 
//		else {
//			$('.bodySeccionArray1').removeClass('animated');
//			$('.bodySeccionArray1').removeClass('rollIn');
//			$('.bodySeccionArray1').removeClass('slow');
//			console.log("fuera:"+scroll);
//		}
		if (scroll >= (bsa2/2) ) {
			$('#bodySeccionArray2').addClass('animated');
			$('#bodySeccionArray2').addClass('jackInTheBox');
			$('#bodySeccionArray2').addClass('slow');
//			console.log("activo:"+scroll);
		}
		if (scroll >= (bs1) ) {
			$('#bodySeccion1').addClass('');
			$('#bodySeccion1').addClass('zoomInDown');
			$('#bodySeccion1').addClass('slow');
//			console.log("activo:"+scroll);
		}
		
	});
	$(window).scroll();

	
	
	// fin funciones scroll
	  
	  
//	  $( "#datepickerHGRC" ).datepicker({
//		    minDate: 0,
//		    maxDate: "+1m +1w",
//		    regional: "es"
//		  });
	  

	

	 $.modelo = "Bronea";	
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
	
	$('.footerSeccion1').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSeccion1",$.modelo);
//			$('#imagenBS1').on('change', function(){ enviaImagen("imagenBS1Form") });
		
			$('#modalEdicionFooterSeccion1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
				
//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
				
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "footerSeccion1",
						 valoresFinales : valoresFinales }
				console.log(finalJson);
				
				enviaDataEdicion(finalJson)
				
			});
		}else{
			console.log("param:Nulo");
		}
	});

	$('.footerSeccion2').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSeccion2",$.modelo);
			
			$('#modalEdicionFooterSeccion2_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
//				valoresFinales = ordenaValoresFinales(valoresFinales, 0,0,0);
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "footerSeccion2",
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
			
			$('#modalEdicionFooterSeccion3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
//				console.log(valoresFinales);
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
	
	
	
	
	
	
	});/*********  fin de documento *********/
	
	