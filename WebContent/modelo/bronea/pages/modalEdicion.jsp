
<!-- modal -->
<%-- <head><link href="<%=request.getContextPath()%>/layout/css/complementoModal.css"  --%>
<!-- 	rel="stylesheet" type="text/css" media="all">	 -->
<!-- </head> -->

<!-- modalEdicion -->
<div class="modal fade" id="modalEdicion" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Edicion Seccion</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" id="headerSeccion1_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
			<div class="container-fluid">
			<div class="alerta">
					<hiden class="alerta_in"></hiden>					
				</div>
			
				<div class="soloLectura">
					<hiden class="soloLectura_in"></hiden>
					<hiden class="agregarText"></hiden>
				</div>
			</div>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicion_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary"
					id="modalEdicion_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin headerSeccion1 -->