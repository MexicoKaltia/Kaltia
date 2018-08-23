<!DOCTYPE html>
<!-- modal -->
<head>
<link
	href="<%=request.getContextPath()%>/layout/css/complementoModal.css"
	rel="stylesheet" type="text/css" media="all">
</head>

<!-- modalEdicion -->
<div class="modal fade" id="modalEdicion" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle">Edicion Seccion</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" id="modalEdicion_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>

			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
				<div class="container-fluid">
					<div class="alerta">
						<hiden class="alerta_in"></hiden>
					</div>
					<div class="alerta_file">
						<hiden class="alerta_inFile"></hiden>
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
<!-- fin modalEdicion -->

<!-- modalFile -->
<div class="modal fade" id="modalFile">
	<div class="modal-dialog">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/02.jpg?v=1');">
			<div class="modal-body">
				<form id="upload-file-form">
					<div class="alerta_file">
					<hiden class="alerta_inFile"></hiden>
					</div>
					<label for="upload-file-input">Actualiza imagen:</label> 
					<input id="upload-file-input" type="file" name="uploadfile" accept="image/jpeg" />
				</form>
			</div>
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="btnCloseFile">Cerrar</a>
				<a href="#" class="btn btn-primary" id="btnSaveFile">Guardar</a>
			</div>
		</div>
	</div>
</div>
