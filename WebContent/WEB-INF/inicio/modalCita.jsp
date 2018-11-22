<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalCita -->
<div class="modal fade" id="modalCita" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/>Cita</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose"></button>
			</div>
			<div class="alertaUsuarioEmpresa">
				<div class='alert alert-warning' role='alert'>Ingresa con tu Usuario para agendar Cita</div>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
				
				<div id="divUsuarioEmpresa">
					<p>Ingresa tu Fecha <script type="text/javascript"></script>: </p>
		        	<input type="text" id="datepickerHGRC" size="30"><i class="fa fa-calendar"></i>
		        	<div id="my-timeline">hola</div>
		        </div>
		        <div id="divBotonUsuarioEmpresa">
		        	<a class="btn inverse" data-dismiss="modal" data-toggle="modal" data-target="#modalIngresa">Ingresa</a>  
		        	<a class="btn" data-dismiss="modal" data-toggle="modal" data-target="#modalRegistro">Registro</a>
		        </div>
		    </div>
		    <!--**********************************************************************************-->
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="modal_btnClose">Cerrar</a>
				<a href="#" class="btn btn-primary" id="btnSaveCita">Cita</a>
			</div>
		</div>
	</div>
</div>
<!-- FIN modalCita -->
<!--**********************************************************************************-->
