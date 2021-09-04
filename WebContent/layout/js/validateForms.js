$(document).ready(function(){
	
	/*
	 * modalContacto
	 */
	$("#btnSaveRegistro").hide();
	$("#nombreRegistro").focusout(function(){
		validaModalFormContacto();
	});
	$("#emailRegistro").focusout(function(){
		validaModalFormContacto();
	});
	$("#telefonoRegistro").focusout(function(){
		validaModalFormContacto();
	});
	$("#modalFormContacto").validate({
		rules: {
			nombreRegistro: {
				required: true,
				minlength:3,
				maxlength:50
			},
			emailRegistro: "required",
			telefonoRegistro: {
				required: true,
				number: true,
				minlength: 10,
				maxlength: 10
			}
		},
		messages: {
			nombreRegistro: {
				required: "Favor captura nombre",
				minlength: "Favor captura nombre completo"
			},
			emailRegistro: "Favor captura email correcto",
			telefonoRegistro: {
				required: "Favor captura telefono correcto",
				minlength: "Favor captura telefono a 10 digitos formato 55-12345678"
			}
		}
	});
	/*
	 * fin modalContacto
	 */

	$("#modalFormSeccionRedes").validate({
		rules: {
			textFFS1: {
				 url: true,
			},
			textIFS1: {
				 url: true
			},
			textTFS1: {
				 url: true
			},
			textYFS1: {
				 url: true
			},
			textLFS1: {
				 url: true
			},
			textGFS1: {
				 url: true
			}
		},
		messages: {
			textFFS1: "Favor captura URL - Facebook correcto",
			textIFS1: "Favor captura URL - Instagram correcto",
			textTFS1: "Favor captura URL - Twitter correcto",
			textYFS1: "Favor captura URL - YouTube correcto",
			textLFS1: "Favor captura URL - LinkedIn correcto",
			textGFS1: "Favor captura URL - Google correcto",
		},
		
		
	});
	
});

function validaBtn(flag){
	setFlag(flag);
	if(flag){
		$('#modalEdicionFooterSeccionRedes_btnSave').hide();
	}else{
		$('#modalEdicionFooterSeccionRedes_btnSave').show();
	}
}

var flag
function setFlag(flag){
	this.flag = flag; 
}
function getFlag(){
	return this.flag; 
}

function validaModalFormContacto(){
	var nombreRegistro = $("#nombreRegistro").val() ;
	var emailRegistro = $("#emailRegistro").val() ;
	var telefonoRegistro = $("#telefonoRegistro").val() ;
	if(nombreRegistro !== "" && emailRegistro!== "" && telefonoRegistro!== ""){
		if(nombreRegistro.length >= 3 && emailRegistro.includes("@") && emailRegistro.includes(".") && telefonoRegistro.length ==10 && isNumber(telefonoRegistro)){
			$("#btnSaveRegistro").show();
		}else{
			$("#btnSaveRegistro").hide();
		}
	}
}

function isNumber(n) { return /^-?[\d.]+(?:e-?\d+)?$/.test(n); } 
