$(document).ready(function() {

	
/////////////
	/*
	 *   Secciones   *
	 */
/////////////
	$('.headerSeccion1').click(function(){
		if(validaParam()){
			cargaModal("headerSeccion1");
			$('#modalEdicionHeaderSeccion1_btnSave').click(function(){
				modalEdicionBody_btnSave("headerSeccion1");
			});
		}else{
			console.log("param:Nulo");
		}
	});
	$('.headerSeccion2').click(function(){
		if(validaParam()){
			cargaModal("headerSeccion2");
			$('#modalEdicionHeaderSeccion2_btnSave').click(function(){
				modalEdicionBody_btnSave("headerSeccion2");
			});
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
			cargaModal("headerSeccion4");
			$('#modalEdicionHeaderSeccion4_btnSave').click(function(){
				modalEdicionBody_btnSave("headerSeccion4");
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.bodySeccionArray1').click(function(){
		if(validaParam()){
			cargaModal("bodySeccionArray1");
			$('#modalEdicionBodySeccionArray1_btnSave').click(function(){
				modalEdicionBody_btnSave("bodySeccionArray1");
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.bodySeccionArray2').click(function(){
		if(validaParam()){
			cargaModal("bodySeccionArray2");
			$('#modalEdicionBodySeccionArray2_btnSave').click(function(){
				modalEdicionBody_btnSave("bodySeccionArray2");
			});
		}else{
			console.log("param:Nulo");
		}
	});
	
	$('.bodySeccionArray3').click(function(){
		if(validaParam()){
			cargaModal("bodySeccionArray3");
			$('#modalEdicionBodySeccionArray3_btnSave').click(function(){
				modalEdicionBody_btnSave("bodySeccionArray3");
			});
		}else{
			console.log("param:Nulo");
		}
	});
	$('.bodySeccion1').click(function(){
		if(validaParam()){
			cargaModal("bodySeccion1");
			$('#modalEdicionBodySeccionArray3_btnSave').click(function(){
				modalEdicionBody_btnSave("bodySeccionArray3");
			});
		}else{
			console.log("param:Nulo");
		}
	});
	$('.bodySeccionArray4').click(function(){
		if(validaParam()){
			cargaModal("bodySeccionArray4");
			$('#modalEdicionBodySeccionArray4_btnSave').click(function(){
				modalEdicionBody_btnSave("bodySeccionArray4");
			});
		}else{
			console.log("param:Nulo");
		}
	});
	$('.footerSeccion1').click(function(){
		if(validaParam()){
			cargaModal("footerSeccion1");
			$('#modalEdicionFooterSeccion1_btnSave').click(function(){
				modalEdicionBody_btnSave("footerSeccion1");
			});
		}else{
			console.log("param:Nulo");
		}
	});

	
	
	
	/*********  fin de documento *********/
	});
	
	