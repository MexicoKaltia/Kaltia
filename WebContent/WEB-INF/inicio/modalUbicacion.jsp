<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalUbicacion -->
<div class="modal fade" id="modalUbicacion" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content"
			style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<label class="sizeEtiqueta colorLabel"><s:property value='identidadVO.nombreCorto'/> - Ubicacion</label>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
			
			   <div class="form-group row">
		          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-circle bigicon"></i></span>
		          <div class="col-7 colorLabel sizeEtiqueta">
		              <s:property value='footer.footerSeccionUbicacion.get(1)' />
<!-- 		              <input id="phone" name="phone" type="text" placeholder="Num Telefono" class="form-control"> -->
		          </div>
		       </div>
		       
		       <div class="form-group row">
		          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-phone-square bigicon"></i></span>
		          <div class="col-7 colorLabel sizeEtiqueta">
		              <s:property value='footer.footerSeccionUbicacion.get(2)' />
<!-- 		              <input id="phone" name="phone" type="text" placeholder="Num Telefono" class="form-control"> -->
		          </div>
		       </div>
		       
		       <div class="form-group row">
		          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-envelope bigicon"></i></span>
		          <div class="col-7 colorLabel sizeEtiqueta">
		              <s:property value='footer.footerSeccionUbicacion.get(3)' />
<!-- 		              <input id="phone" name="phone" type="text" placeholder="Num Telefono" class="form-control"> -->
		          </div>
		       </div>
		       
		       <div class="form-group row">
		          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-map-marker bigicon"></i></span>
		          <div class="col-7 colorLabel sizeEtiqueta" id="modalUbicacionEnlace"> Mapa
<%-- 		              <s:property value='footer.footerSeccionUbicacion.get(4)' /> --%>
							
		          </div>
		       </div>
		       
               <div class="form-group row">
                  <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-pencil-square bigicon"></i></span>
                  <div class="col-7">
                     <iframe src="<s:property value='footer.footerSeccionUbicacion.get(5)'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                   </div>
               </div>		
				
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
