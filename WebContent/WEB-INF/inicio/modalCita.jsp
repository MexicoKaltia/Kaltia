<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalCita -->
<div class="modal fade" id="modalCita" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content"
			style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/modalImagenFondo.jpg?v=1');">
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
					<div class="row">
						<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-3x fa-calendar bigicon"></i></span>
						<div class="col-md-8">
							<input type="text" id="datepickerHGRC" size="15">
							<button type="button" class="btn btn-secondary" id="consultaHorario">Consulta Horarios</button>
						</div>
					  </div>
		        	<div id="my-timeline"></div>
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
