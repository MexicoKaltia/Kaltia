<!--**********************************************************************************-->
<!-- modalBodySeccionArray3 -->
<div class="modal fade" id="modalIngresa" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> Ingresa</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 			<!--**********************************************************************************-->
 		    <!-- main body -->
			<div class="modal-body">
		         
		      <div class="row">
				<span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-3x fa-address-book bigicon"></i></span>
				<div class="col-md-8">
					<input type="text" id="usuarioIngresa" value="" placeholder="Digita Usuario" class="form-control">
				</div>
			  </div>
			  <div class="row">
			    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-3x fa-circle bigicon"></i></span>
			    <div class="col-md-8">
			    	<input type="password" id="passIngresa" value="" placeholder="Password" class="form-control">
				</div>
			  </div>
   			     </div>	<!-- end bodymodal -->	
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="btnSaveIngresa">Ingresa</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
