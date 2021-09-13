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
			if(o.elementoDescripcion.includes("http")){
				var arrayPalabras = o.elementoDescripcion.split(" ");
				var enlaceLocal = "";
				for(palabra in arrayPalabras){
					if(arrayPalabras[palabra].includes("http")){
						enlaceLocal = arrayPalabras[palabra];
					}
				}
				var elemento='<div class="elemento  col-md-4" style="padding-bottom:20px"><div class="card">\
		               <a href="'+rutaImagen+'/images/'+o.elementoImagen+'" data-lightbox="ligthboxBodySeccionArray0" data-title="">\
		               <img src="'+rutaImagen+'/images/'+o.elementoImagen+'" class="card-img-top" alt="..." />\
		               </a>\
		                <div class="card-body">\
		                	<a href="'+rutaImagen+'/images/'+o.elementoImagen+'" data-lightbox="ligthboxBodySeccionArray0" data-title="">\
		                    <h4 class="card-title" style="font-family:verdana;color:navy">'+o.elementoNombre+'</h4>\
				            </a>\
		                	<a href="'+enlaceLocal+'" target="_blank">\
		                    <p class="card-text" style="font-family:verdana;color:teal">'+o.elementoDescripcion+'</p>\
		                    </a>\
		                    <h5 style="font-family:verdana;color:teal">'+o.elementoCosto+'</h5>\
		                </div>\
		           </div></div>';
		          
				arrayElemento = arrayElemento + elemento;
			}else{
				var elemento='<div class="elemento  col-md-4" style="padding-bottom:20px"><div class="card">\
		               <a href="'+rutaImagen+'/images/'+o.elementoImagen+'" data-lightbox="ligthboxBodySeccionArray0" data-title="">\
		               <img src="'+rutaImagen+'/images/'+o.elementoImagen+'" class="card-img-top" alt="..." />\
		               </a>\
		                <div class="card-body">\
		                	<a href="'+rutaImagen+'/images/'+o.elementoImagen+'" data-lightbox="ligthboxBodySeccionArray0" data-title="">\
		                    <h4 class="card-title" style="font-family:verdana;color:navy">'+o.elementoNombre+'</h4>\
				            </a>\
		                    <p class="card-text" style="font-family:verdana;color:teal">'+o.elementoDescripcion+'</p>\
		                    <h5 style="font-family:verdana;color:teal">'+o.elementoCosto+'</h5>\
		                </div>\
		           </div></div>';
		          
	arrayElemento = arrayElemento + elemento;
			}
			
		}
		$('#tarjetaProductosContenido').append(divCategoria + arrayElemento+ "</div></div>");
	}
	
	
});
