/*
 *   besloor
 */


$(document).ready(function() {
	
	$.modelo = "Besloor";
	

	console.log(window.navigator.userAgent);
	
	function cargaModal(seccion, modelo){
		$.seccionCampos="";	
		$.seccionCampos = estructuraSeccion(seccion);
		console.log($.seccionCampos);
		$('.'+seccion).attr("data-toggle","modal");
		$('.'+seccion).attr("data-target","#modalEdicion_"+seccion);
		$("div.alertaBody_file > div").remove();
		return $.seccionCampos; 
	}


	/*
	 * Definir los campos de cada seccion.
	 * No se modifican: headerSeccion1, headerSeccion2, headerSeccionArray5
	 * 	
	 */
	
	function estructuraSeccion(seccion){
		var camposModelo = {
				"headerSeccion1" 		   :{  "objeto" : {    "tituloObjetoHS1" :"text", "seleccionObjetoHS1" :"text"  }},
				"headerSeccion2" 		   :{   "telefonoHS2" : "text",   "emailHS2" : "text"},
				"headerSeccion3" 		   :{"tituloHS3":"text",  "iconoHS3":"img",  "variosHS3" : "lorem",  "logoHS3":"img",  "fondoHeaderHS3":"img"},
				"headerSeccion4"   :{  "tituloHS4":"text",  "descripcionHS4" :"lorem",  "seleccion1HS4" : "text",  "boton1HS4" : "text"},
				"headerSeccionArray5":{"tituloHSA5":"text",  "faviconHSA5":"img",  "logoHSA5":"img",  "fondoHeaderHSA5":"img", "objeto" : {"enlaceHSA5":"text" }},
				"bodySeccionArray1":{  "seleccionBSA1":"text",  "tituloBSA1":"text",  "botonBSA1":"text",  "objeto" :{"seleccionObjetoBSA1" : "text",      "iconoObjetoBSA1" : "text",      "tituloObjetoBSA1" :"text",      "descripcionObjetoBSA1" :"lorem" , "botonObjetoBSA1":"text" }},
				"bodySeccionArray2":{  "seleccionBSA2":"text",  "tituloBSA2":"text",  "botonBSA2":"text",  "objeto" :{"posicionObjetoBSA2" :"text", "imagenObjetoBSA2" : "text",      "seleccionObjetoBSA2" : "text",      "tituloObjetoBSA2" :"text" }},
				"bodySeccionArray3":{  "imagenBSA3" :"img",  "tituloBSA3" : "text",  "descripcionBSA3":"lorem", "objeto" : {"iconoObjetoBSA3" :"text",  "tituloObjetoBSA3" :"text",      "descripcionObjetoBSA3" :"text" , "seleccionObjetoBSA3" : "text",      "botonObjetoBSA3" :"text"  }},
				"bodySeccionArray4":{  "tituloBSA4" :"text",  "seleccionBSA4":"text",  "botonBSA4":"text",  "objeto" : {"posicionObjetoBSA4" :"text",  "imagenObjetoBSA4" : "img",      "seleccionObjetoBSA4" : "text",      "tituloObjetoBSA4" :"text",      "descripcionObjetoBSA4" :"text" }},
				"bodySeccionArray5":{  "imagenBSA5" : "img", "tituloBSA5" :"text",  "seleccionBSA5":"text",  "botonBSA5":"text",  "objeto" : {"posicionObjetoBSA5" :"text",  "imagenObjetoBSA5" : "img", "tituloObjetoBSA5" : "text",      "subTituloObjetoBSA5" :"text",      "descripcionObjetoBSA5" :"lorem" }},
				"footerSeccionUbicacion"   :{  "tituloFSU" : "text",    "domicilioFSU" : "text",  "telefonoFSU" : "text",  "correoFSU" : "text", "ubicacionFSU" : "lorem"},
				"footerSeccionRedes"	:{ "tituloFS1" : "text",  "facebookFSRText":"text", "twitterFSRText":"text", "youtubeFSRText":"text", "linkedinFSRText":"text", "googleFSText":"text" },
				"bodyQRE" : {"objeto":{"imagenObjetoQRE": "img", "tituloObjetoQRE": "text", "descripcionObjetoQRE": "lorem" }},
				"bodyQRD" : {"objeto":{"imagenObjetoQRE": "img"}}
				}
		

		switch (seccion) { 
		case "headerSeccion1": return camposModelo.headerSeccion1; break;
		case "headerSeccion2": return camposModelo.headerSeccion2; break;
		case "headerSeccion3": return camposModelo.headerSeccion3; break;
		case "headerSeccion4": return camposModelo.headerSeccion4; break;
		case "headerSeccion5": return camposModelo.headerSeccion5; break;
		case "headerSeccionArray1": return camposModelo.headerSeccionArray1; break;
		case "headerSeccionArray2": return camposModelo.headerSeccionArray2; break;
		case "headerSeccionArray3": return camposModelo.headerSeccionArray3; break;
		case "headerSeccionArray4": return camposModelo.headerSeccionArray4; break;
		case "headerSeccionArray5": return camposModelo.headerSeccionArray5; break;
		case "bodySeccion1": return camposModelo.bodySeccion1; break;
		case "bodySeccion2": return camposModelo.bodySeccion2; break;
		case "bodySeccion3": return camposModelo.bodySeccion3; break;
		case "bodySeccion4": return camposModelo.bodySeccion4; break;
		case "bodySeccion5": return camposModelo.bodySeccion5; break;
		case "bodySeccionArray1": return camposModelo.bodySeccionArray1; break;
		case "bodySeccionArray2": return camposModelo.bodySeccionArray2; break;
		case "bodySeccionArray3": return camposModelo.bodySeccionArray3; break;
		case "bodySeccionArray4": return camposModelo.bodySeccionArray4; break;
		case "bodySeccionArray5": return camposModelo.bodySeccionArray5; break;
		case "footerSeccion1": return camposModelo.footerSeccion1; break;   
		case "footerSeccion2": return camposModelo.footerSeccion2; break;   
		case "footerSeccion3": return camposModelo.footerSeccion3; break;
		case "footerSeccion4": return camposModelo.footerSeccion4; break;
		case "footerSeccion5": return camposModelo.footerSeccion5; break;
		case "footerSeccionArray1": return camposModelo.footerSeccionArray1; break;
		case "footerSeccionArray2": return camposModelo.footerSeccionArray2; break;
		case "footerSeccionArray3": return camposModelo.footerSeccionArray3; break;
		case "footerSeccionArray4": return camposModelo.footerSeccionArray4; break;
		case "footerSeccionArray5": return camposModelo.footerSeccionArray5; break;
		case "footerSeccionUbicacion": return camposModelo.footerSeccionUbicacion; break;
		case "footerSeccionRedes": return camposModelo.footerSeccionRedes; break;
		case "bodyQRE": return camposModelo.bodyQRE; break;
		case "bodyQRD": return camposModelo.bodyQRD; break;
  
		}
	}

	
	 	
/////////////
	/*
	 *   Secciones   *
	 */
/////////////
	$('.headerSeccion1').click(function(){
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
			console.log($.seccionCampos);
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
			$.seccionCampos = cargaModal("bodySeccionArray1");
			$('#modalEdicionBodySeccionArray1_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray1);
				valorColumnas = 0;  	// Posicion de Objetos one_half 
				valorPosicion = 0;  	// Numero de posicion que se encuentra el campo Posicion del JSON Campos
				valorIniciaObjeto =0;	// Numero de posicion dentro del Array que identifica el Objeto,  regularmente es la posicion [1]
//				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto); 
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
			$.seccionCampos = cargaModal("bodySeccionArray2");
			$('#modalEdicionBodySeccionArray2_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray2);
				valorColumnas = 3; 		// Posicion de Objetos one_half
				valorPosicion = 0;		// Numero de posicion que se encuentra el campo Posicion del JSON Campos
				valorIniciaObjeto =1;	// Numero de posicion dentro del Array que identifica el Objeto,  regularmente es la posicion [1]
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
//			alert($.seccionCampos);
			$('#modalEdicionBodySeccionArray3_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray3);
				valorColumnas = 0;
				valorPosicion = 0;
				valorIniciaObjeto = 1;
//				alert(valoresFinales);
				while(valoresFinales.includes("C:\\fakepath\\") ){
					valoresFinales = valoresFinales.replace("C:\\fakepath\\", "")	
				}
//				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto);
//				alert(valoresFinales);
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
	
	$('.bodySeccionArray5').click(function(){
		if(validaParam()){
			$.seccionCampos = cargaModal("bodySeccionArray5",$.modelo);
			$('#modalEdicionBodySeccionArray5_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, contaObjetoBodySeccionArray5);
				valorColumnas = 3;
				valorPosicion = 0;
				valorIniciaObjeto = 1;
				valoresFinales = ordenaValoresFinales(valoresFinales , valorColumnas, valorPosicion, valorIniciaObjeto);
				finalJson = { action : $.action,
						 idEmpresa : $.idEmpresa,	
						 seccion : "bodySeccionArray5",
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
		console.log("SeccionRedes Besloor")
		if(validaParam()){
			$.seccionCampos = cargaModal("footerSeccionRedes","");
			$('#modalEdicionFooterSeccionRedes_btnSave').click(function(){
				valoresFinales = dataEdicion($.seccionCampos, 0);
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
	

	$('.bodyQRE').click(function(){
		console.log("QRE Besloor")
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
		  
		  console.log("QRD")
		  
			if(validaParam()){
				$('#modalEdicionBodyQRD_btnSave').hide();
				$('#divCarrusel').empty();
				$('#divNuevaCategoria').empty()
				$('#divCategoria').show();
				$('#modalEdicionBodyQRD_btnNuevaCategoria').show();
				$('#modalEdicionBodyQRD_btnSaveElemento').hide();
				$('#divEdicionElementoCategoria').hide();
				$('#seleccionCategoria').prop("disabled",false);
				
				valida();
				
				$.seccionCampos = cargaModal("bodyQRD");
				var jsonQRD = JSON.parse($('#jsonQRDHidden').val())
				$('#seleccionCategoria').empty();
				var optionCategoria = "<option value='' selected>Seleccione Categoria para Edicion</option>"
				var categoria='';
				$('#seleccionCategoria').append(optionCategoria);
				for (var clave in jsonQRD){
					  if (jsonQRD.hasOwnProperty(clave)) {
					    // Mostrando en pantalla la clave junto a su valor
//					    console.log("La clave es " + clave+ " y el valor es " + jsonQRD[clave]);
						  optionCategoria = "<option value='"+clave+"'>"+clave+"</option>";
						  $('#seleccionCategoria').append(optionCategoria);
					  }			  
					}
				
				
				$('#seleccionCategoria').change(function(event){
					$('#divEdicionElementoCategoria').show();
					$('#divEdicionCategoria').show();
					$('#modalEdicionBodyQRD_btnSave').show();
					$('#modalEdicionBodyQRD_btnNuevaCategoria').hide();
					$('#divEdicionElementoCategoria').empty();
					
					categoria = $('#seleccionCategoria option:selected').val();
					$('#seleccionCategoria').prop("disabled",true);
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
					
//					console.log(jsonQRD.hasOwnProperty(categoria));
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
	var bs1 = $(".bodySeccionArray1").offset().top - (bsa4 - $(".bodySeccionArray1").offset().top) - ((bsa4 - $(".bodySeccionArray1").offset().top)/2)
	
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
			$('#bodySeccionArray1').addClass('shake');
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
			$('#bodySeccion1').addClass('animated');
			$('#bodySeccion1').addClass('rollin');
			$('#bodySeccion1').addClass('slow');
//			console.log("activo:"+scroll);
		}
		
	});
	$(window).scroll();



	  
	  
	});/*********  fin de documento *********/
function valida(){flag = true ; return flag;}