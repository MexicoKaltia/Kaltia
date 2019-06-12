<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalCita -->
<div class="modal fade" id="modalCita" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content"
			style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header" id="topCita">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/>Cita</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose"></button>
			</div>
			<div class="alertaUsuarioEmpresa">
				<div class='alert alert-warning' role='alert'>Ingresa con tu Usuario para agendar Cita</div>
			</div>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
				
				<div id="divUsuarioEmpresa">
					<p class="colorLabel sizeEtiqueta">Ingresa tu Fecha : </p><br>
					<div class="form-group row">
						<span class="col-2 col-form-label text-right colorLabel"><i class="fa fa-3x fa-calendar bigicon"></i></span>
						<div class="col-3" >
							<input type="text" class="form-control" id="datepickerHGRC" size="15" readonly>
						</div>:
						<div class="col-3" >
							<input type="text" class="form-control" id="horaCita" size="15" readonly>
						</div>
					
						<div class="col-2" >		 
							<!-- <div id="horaCita">
							    <select></select>    
							</div>
							<select name="horaCita" id="horaCita" multiple></select> -->
							<button type="button" class="btn btn-secondary" id="consultaHorario">Horarios</button>
						</div>
					</div>  
		        	<div id="my-timeline"></div>
		        </div>
		        <div id="descripcionCita">
		        <br>
		        	<div class="form-group row">
					<span class="col-2 col-form-label text-right colorLabel"><i class="fa fa-3x fa-pencil-square-o bigicon"></i></span>
					<div class="col-6">
		        		<textarea class="form-control" id="descrCita" name="descrCita" placeholder="Captura la descripcion de tu Cita, en breve un asesor se pondrá en contacto. Gracias" rows="4"></textarea>
		        	</div>
		        	</div>
		        </div>
		        
		        <div id="divBotonUsuarioEmpresa">
		        	<a class="btn inverse" data-dismiss="modal" data-toggle="modal" data-target="#modalIngresa">Ingresa</a>  
		        	<a class="btn" data-dismiss="modal" data-toggle="modal" data-target="#modalRegistro">Registro</a>
		        </div>
		    </div>
		    <!--**********************************************************************************-->
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="modal_btnClose">Cerrar</a>
				<button type="button" class="btn btn-secondary" id="btnSaveCita" disabled="true">Cita </button>
			</div>
		</div>
	</div>
</div>
<!-- FIN modalCita -->
<!--**********************************************************************************-->
