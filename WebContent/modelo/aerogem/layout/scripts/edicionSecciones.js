$(document).ready(function() {
	

	 $.modelo = "Aerogem";	

	
	function cargaModal(seccion){
		$.seccionCampos="";	
		$.seccionCampos = estructuraSeccion(seccion);
		$('.'+seccion).attr("data-toggle","modal");
		$('.'+seccion).attr("data-target","#modalEdicion_"+seccion);
		$("div.alertaBody_file > div").remove();
//		console.log("cargarModal paso 3 : #modalEdicion_"+seccion);
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
		  
			if(validaParam()){
				$('#modalEdicionBodyQRD_btnSave').hide();
				$('#divCarrusel').empty();
				$('#divNuevaCategoria').empty()
				$('#divCategoria').show();
				$('#modalEdicionBodyQRD_btnNuevaCategoria').show();
				$('#modalEdicionBodyQRD_btnSaveElemento').hide();
//				$('#divCategoria > divEdicionCategoria').hide();
				
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
//					$('#divEdicionCategoria').empty();
					$('#divEdicionCategoria').show();
					$('#modalEdicionBodyQRD_btnSave').show();
					$('#modalEdicionBodyQRD_btnNuevaCategoria').hide();
					$('#seleccionCategoria').prop("disabled",true);
					
					var edicionCategoria = '<button type="button" class="btn btn-primary" id="modalEdicionBodyQRD_btnEliminarCategoria">Eliminar Categoria</button><input type="text" class="form-control" id="categoriaActualizada" value=""/>'
					
					$('#divEdicionCategoria').append(edicionCategoria);
					
					$('#divCarrusel').empty();	
					
					categoria = $('#seleccionCategoria option:selected').val();
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
						var objetoCarrusel = '<div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span><div class="col-7"><img class="inspace-10 borderedbox" src="'+imagen+'" ><form id="imagenObjetoQRDForm'+a+'" class="imagenArrayForm"><hiden class="imagenObjetoQRDForm'+a+'"></hiden><label for="imagenObjetoQRD'+a+'">Actualiza imagen:</label><input id="imagenObjetoQRD'+a+'" type="file" name="uploadfile" accept="image/jpeg" value="'+imagen+'"/></form></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Elemento</span><div class="col-7"><input type="text" class="form-control" id="tituloObjetoQRD'+a+'" value="'+titulo+'"/></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span><div class="col-7"><textarea class="form-control" id="descripcionObjetoQRD'+a+'">'+descripcion+'</textarea></div></div><div class="form-group row"><span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Costo</span><div class="col-7"><input type="text" class="form-control" id="costoObjetoQRD'+a+'" value="'+costo+'"/></div></div>';
				       
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
//					console.log($('#imagenObjetoQRD'+a).val());
					jsonObjetoActualizado = {
							imagen: formatoImagen($('#imagenObjetoQRD'+a).val()),
							titulo: $('#tituloObjetoQRD'+a).val(),
							descripcion: $('#descripcionObjetoQRD'+a).val(),
							costo: $('#costoObjetoQRD'+a).val()};
					jsonCategoriaActualizado.push(jsonObjetoActualizado);
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
						console.log(jsonQRD)
						var nuevoCategoria = $('#tituloCtegoria').val();
						var nuevoObjeto={
							imagen:$('#imagenObjetoQRD').val(),
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
			  console.log(a);
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
			console.log(finalJson);
			
			enviaDataEdicion(finalJson)
	  	  }
	  
	  
	  
	});/*********  fin de documento *********/
function valida(){flag = true ; return flag;}