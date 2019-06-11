<!--**********************************************************************************-->
<!-- modalBodySeccionArray3 -->
<div class="modal fade" id="modalIngresa" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
		         
		      <div class="form-group row">
				<span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-3x fa-address-book bigicon"></i></span>
				<div class="col-7">
					<input type="text" class="form-control" id="usuarioIngresa" value="" placeholder="Digita Usuario" class="form-control">
				</div>
			  </div>
			  <div class="form-group row">
			    <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-3x fa-circle bigicon"></i></span>
			    <div class="col-7">
			    	<input type="password" class="form-control" id="passIngresa" value="" placeholder="Password" class="form-control">
				</div>
			  </div>
   			     </div>	<!-- end bodymodal -->	
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="btnSaveIngresa" >Ingresa</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
