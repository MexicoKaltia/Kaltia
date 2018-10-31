$(document).ready(function() {

	 $.modelo = "Bronea";	
/////////////
	/*
	 *   Secciones   *
	 */
/////////////
	$('.headerSeccion1').click(function(){
		console.log("idEmpresa:"+idEmpresa);
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
			
			$('#iconoHSA5').on('change', function(){ enviaImagen("iconoHSA5Form") });
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
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}
				//Ordena valoresFinales
				var tmp0 = "";
				var tmp1 = valoresFinales.split("\++");
				valoresFinales = tmp1[0] + "\++"
				for(i=1; i<tmp1.length;i++){
					tmp0 = tmp1[i].split("\&&")
					if(i===1){	
						tmp0[0] = "one_half first";
						tmp0[1] = "#";
						tmp0[2] = "btmspace-30 fa fa-4x fa-joomla";
					}
					else{
						tmp0[0] = "one_half";
						tmp0[1] = "#";
						tmp0[2] = "btmspace-30 fa fa-4x fa-institution";
					}
					valoresFinales = valoresFinales+tmp0[0]+"\&&"+tmp0[1]+"\&&"+tmp0[2]+"\&&"+tmp0[3]+"\&&"+tmp0[4]+"\++"
				}
				valoresFinales  = valoresFinales .slice(0,valoresFinales .length-2)
				
//				console.log(valoresFinales)
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
	
	$('.bodySeccionArray3').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray3",$.modelo);
			$('#modalEdicionBodySeccionArray3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray3);
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
			$('#modalEdicionBodySeccion1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
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
			$('#modalEdicionFooterSeccion1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
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

	
	
	
	/*********  fin de documento *********/
	});
	
	