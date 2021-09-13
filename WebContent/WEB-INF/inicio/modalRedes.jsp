<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!--**********************************************************************************-->
<!-- modalFooterSeccion1 -->
<div class="modal fade" id="modalEdicion_footerSeccionRedes" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
	
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
		
			<div class="modal-header">
				<h5 style="color:white" class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> footerSeccionRedes</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 			<!--**********************************************************************************-->
			<div class="modal-body">
			
				<form class="form-horizontal" id="modalFormSeccionRedes" method="post">			
			    	<div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Redes Sociales</span>
			          <div class="col-7">
						<input type="text" class="form-control" id="tituloRedes" value="<s:property value='footer.footerSeccionRedes.get(0)' />"/>
			          </div>
			        </div>
			        <br><br>
			        <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-facebook" ></i></span>
				      <div class="col-7">
				      <div class="input-group grupoRS">
						  
						  <input type="text" class="form-control validaCampo" value="<s:property value='footer.footerSeccionRedes.get(1)' />" id="textFFS1" name="textFFS1" >
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-instagram" ></i></span>
				      <div class="col-7">
						<div class="input-group grupoRS">
						  
						  <input type="text" class="form-control validaCampo" value="<s:property value='footer.footerSeccionRedes.get(6)' />" id="textIFS1" name="textIFS1">
						</div>
				      </div>
				    </div>
			        <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-twitter" ></i></span>
				      <div class="col-7">
						<div class="input-group grupoRS">
						  
						  <input type="text" class="form-control validaCampo" value="<s:property value='footer.footerSeccionRedes.get(2)' />" id="textTFS1" name="textTFS1" >
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-youtube" ></i></span>
				      <div class="col-7">
				      <div class="input-group grupoRS">
						  
						  <input type="text" class="form-control validaCampo" value="<s:property value='footer.footerSeccionRedes.get(3)' />" id="textYFS1" name="textYFS1" >
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-linkedin" ></i></span>
				      <div class="col-7">
						<div class="input-group grupoRS">
						  
						  <input type="text" class="form-control validaCampo" value="<s:property value='footer.footerSeccionRedes.get(4)' />" id="textLFS1" name="textLFS1" >
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-google-plus" ></i></span>
				      <div class="col-7">
						<div class="input-group grupoRS">
						  
						  <input type="text" class="form-control validaCampo" value="<s:property value='footer.footerSeccionRedes.get(5)' />" id="textGFS1" name="textGFS1" >
						</div>
				      </div>
				    </div>
				    <hr>
				    <button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
					<button type="submit" class="btn btn-primary" id="modalEdicionFooterSeccionRedes_btnSave">Guardar Cambios</button>
			    </form>
			        				  
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				
			</div>
			
		</div>
	</div>
</div>
<!-- fin modalFooterSeccionRedes -->
<!--**********************************************************************************-->
<script>
	
</script>

