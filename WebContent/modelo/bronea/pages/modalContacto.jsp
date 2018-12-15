<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalContacto -->
<div class="modal fade" id="modalContacto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/modalImagenFondo.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> Contacto</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
			
			   <div class="row">
		          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-circle-o bigicon"></i></span>
		          <div class="col-md-8">
		              <s:property value='footer.footerSeccion1.get(1)' />
<!-- 		              <input id="phone" name="phone" type="text" placeholder="Num Telefono" class="form-control"> -->
		          </div>
		       </div>
		       <div class="row">
		          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-map-marker bigicon"></i></span>
		          <div class="col-md-8">
		              <s:property value='footer.footerSeccion1.get(2)' />
<!-- 		              <input id="phone" name="phone" type="text" placeholder="Num Telefono" class="form-control"> -->
		          </div>
		       </div>
		       <div class="row">
		          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		          <div class="col-md-8">
		              <s:property value='footer.footerSeccion1.get(3)' />
<!-- 		              <input id="phone" name="phone" type="text" placeholder="Num Telefono" class="form-control"> -->
		          </div>
		       </div>
		       <div class="row">
		          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
		          <div class="col-md-8">
		              <s:property value='footer.footerSeccion1.get(4)' />
<!-- 		              <input id="phone" name="phone" type="text" placeholder="Num Telefono" class="form-control"> -->
		          </div>
		       </div>
               <div class="row">
                  <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                  <div class="col-md-8">
                     <iframe src="<s:property value='footer.footerVarios'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                   </div>
               </div>		

		      </div>
		      <!--**********************************************************************************-->
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="modal_btnClose">Cerrar</a>
				<a href="#" class="btn btn-primary" id="btnSaveContacto">Guardar</a>
			</div>
		</div>
	</div>
</div>
<!-- modalContacto -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
