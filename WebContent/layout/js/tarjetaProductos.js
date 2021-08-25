$(document).ready(function(){
	

	var tarjetaProductos = JSON.parse($('#tarjetaProductos').val());
	var idAction = $('#idAction').val();
	var rutaImagen ="http://kaltiaservicios.com/store/kaltia/empresa/"+idAction;
	for(a in tarjetaProductos){
		var e = tarjetaProductos[a];
		var encabezado = "<a style='padding-right:50px;font-family:verdana;color:yellow;' href='#"+a+"'>"+a+"</a>";
		$('#tarjetaProductosEncabezado').append(encabezado);
		
		var divCategoria = '<div class="container">\
			 <div class="row">\
		        <div class="col-12" id="divCategoria">\
					<h1 style="font-family:verdana;color:white">'+a+'</h1><a  id="'+a+'"></a>\
		        </div><hr>';
		arrayElemento ="";
		
		for( i in e){
			var o = e[i];
			var elemento='<div class="elemento  col-md-3 col-lg-3" style="padding-bottom:20px"><div class="card">\
				               <a href="'+rutaImagen+'/images/'+o.elementoImagen+'" data-lightbox="ligthboxBodySeccionArray0" data-title="">\
				               <img src="'+rutaImagen+'/images/'+o.elementoImagen+'" class="card-img-top" alt="..." />\
				                <div class="card-body">\
				                    <h4 class="card-title" style="font-family:verdana;color:navy">'+o.elementoNombre+'</h4>\
				                    <p class="card-text" style="font-family:verdana;color:teal">'+o.elementoDescripcion+'</p>\
				                    <h5 style="font-family:verdana;color:teal">'+o.elementoCosto+'</h5>\
				                </div>\
				                </a>\
				           </div></div>';
				          
			arrayElemento = arrayElemento + elemento;
		}
		$('#tarjetaProductosContenido').append(divCategoria + arrayElemento+ "</div></div>");
	}
	
	
});
