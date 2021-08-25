<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalUbicacion -->
<div class="modal fade" id="modalTarjetaProductos" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content"
			style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<label class="sizeEtiqueta colorLabel"><s:property value='identidadVO.nombreCorto'/> - Productos</label>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
				<h5 style='font-family:verdana;color:white'>Categorias:</h5>
				<div id="tarjetaProductosEncabezado"></div>
				<div id="tarjetaProductosContenido"></div>
			   				
		      </div>
		      <!--**********************************************************************************-->
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="modal_btnClose">Cerrar</a>
			</div>
		</div>
	</div>
</div>
<!-- modalUbicacion -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
