<!--**********************************************************************************-->
<!-- modalRegistro -->
<div class="modal fade" id="modalRegistro" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/modalImagenFondo.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> Registro Cliente</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
					<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
		        <div class="container">
		          <div class="row">
		            <div class="col-md-12">
		              <div class="well well-sm">
		              	<label><s:property value='identidadVO.empresa'/> - Registo Cliente</label>
		                <form class="form-horizontal" method="post">
		                  <fieldset>
		                    <legend class="text-center header"><label><s:property value='identidadVO.empresa'/> - Registo Cliente</label></legend>
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                      <div class="col-md-8">
		                        <input id="nombreRegistro" name="name" type="text" placeholder="Nombre(s)" class="form-control">
		                      </div>
		                    </div>
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                      <div class="col-md-8">
		                        <input id="apellidoRegistro" name="name" type="text" placeholder="Apellidos" class="form-control">
		                      </div>
		                    </div>
		
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
		                      <div class="col-md-8">
		                        <input id="emailRegistro" name="email" type="text" placeholder="Email" class="form-control">
		                      </div>
		                    </div>
		
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		                      <div class="col-md-8">
		                        <input id="telefonoRegistro" name="phone" type="text" placeholder="Num Telefono" class="form-control">
		                      </div>
		                    </div>
		                    <div class="row">
					          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-address-book bigicon"></i></span>
					          <div class="col-md-8">
								<input type="text" id="usuarioRegistro" value="" placeholder="Digita Usuario" class="form-control">
					          </div>
					        </div>
					        <div class="row">
					          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-circle bigicon"></i></span>
					          <div class="col-md-8">
								<input type="password" id="passRegistro1" value="" placeholder="Password" class="form-control">
					          </div>
					        </div>
					        <div class="row">
					          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-circle bigicon"></i></span>
					          <div class="col-md-8">
								<input type="password" id="passRegistro2" value="" placeholder="Confirma Password" class="form-control">
					          </div>
					        </div>
				
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
		                      <div class="col-md-8">
		                        <textarea class="form-control" id="messageRegistro" name="message" placeholder="Captura tu mensaje, en breve un asesor se pondrá en contacto. Gracias" rows="7"></textarea>
		                      </div>
		                    </div>		
		                </fieldset>
		              </form>
		            </div>
		          </div>
		        </div>
		      </div>
		      </div>
		      <!--**********************************************************************************-->
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="modal_btnClose">Cerrar</a>
				<a href="#" class="btn btn-primary" id="btnSaveRegistro">Guardar</a>
			</div>
		</div>
	</div>
</div>
<!-- FIN modalREGISTRO -->
<!--**********************************************************************************-->
