<!--**********************************************************************************-->
<!-- modalBodySeccionArray3 -->
<div class="modal fade" id="modalEdicion_bodySeccionArray3Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> bodySeccionArray3</h5>
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
			          <span class="col-md-4 col-md-offset-4 text-left"><i class="fa fa-phone"></i>Titulo Seccion</span>
			          <div class="col-md-8">
						<input type="text" id="tituloBSA3" value="<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' />"/>
			          </div>
			        </div>
			        <div class="row">
			          <span class="col-md-4 col-md-offset-4 text-left"><i class="fa fa-phone"></i>Descripcion</span>
			          <div class="col-md-8">
						<textarea class='form-control' id="descripcionBSA3"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></textarea>
			          </div>
			        </div>
			        			        <!-- carrusel -->
			        <div id="carousel_bodySeccionArray3" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray3" start="1">  
    							<s:iterator  var ="bodySeccionArray3">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active">
								</s:if>
								<s:else>
   									<div class="carousel-item">
								</s:else>
								<section>
						        <div class="row">
						          <span class="col-md-4 col-md-offset-4 text-left"><i class="fa fa-envelope-o"></i>Imagen</span>
						          <div class="col-md-8">
							      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>?=v1" alt="<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>">
									<form id="imagenBSA3Form<s:property value='#conta'/>" class="imagenArrayForm">
										<hiden class="imagenBSA3Form<s:property value='#conta'/>"></hiden>
										<label for="imagenObjetoBSA3<s:property value='#conta'/>">Actualiza imagen:</label> 
										<input id="imagenObjetoBSA3<s:property value='#conta'/>" type="file" name="uploadfile" accept="image/jpeg" />
<%-- 										<script type="text/javascript">var contaImagenBodySeccionArray3 = <s:property value='#conta'/></script> --%>
					    			</form>
						          </div>
						        </div>
						        <div class="row">
						          <span class="col-md-4 col-md-offset-4 text-left"><i class="fa fa-phone"></i>Titulo Objeto</span>
						          <div class="col-md-8">
									<input type="text" id="tituloObjetoBSA3<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray3.objetoVO.get(3)'/>"/>
						          </div>
						        </div>
						        <div class="row">
						          <span class="col-md-4 col-md-offset-4 text-left"><i class="fa fa-phone"></i>Descripcion Objeto</span>
						          <div class="col-md-8">
									<textarea class='form-control' id="descripcionObjetoBSA3<s:property value='#conta'/>"><s:property value='#bodySeccionArray3.objetoVO.get(4)'/></textarea>
						          </div>
						        </div>
						        </section>
						    	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray3 = <s:property value='#conta'/></script>
				      	</div>
				      	<div class="controls-top">	
						  <a class="btn-floating" href="#carousel_bodySeccionArray3"  data-slide="prev"><i class="fa fa-chevron-left"></i></a>
						  <a class="btn-floating" href="#carousel_bodySeccionArray3"  data-slide="next"><i class="fa fa-chevron-right"></i></a>
						</div>
						  <ol class="carousel-indicators">
						    <li data-target="#carousel_bodySeccionArray3" data-slide-to="0" class="active"></li>
						    <li data-target="#carousel_bodySeccionArray3" data-slide-to="1"></li>
						    <li data-target="#carousel_bodySeccionArray3" data-slide-to="2"></li>
						  </ol>	  
   			       </div> 	<!-- fin carrusel -->
   			     </div>	<!-- end bodymodal -->	
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary"
					id="modalEdicionBodySeccionArray3_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!--**********************************************************************************-->




<!--**********************************************************************************-->
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
<!-- FIN modalFile -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalEdicionUbicacion -->
<div class="modal fade" id="modalUbicacion" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> Ubicacion</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		 	<!--**********************************************************************************-->
			<div class="modal-body">
				<div class="container-fluid">
					<iframe src="<s:property value='footer.footerVarios'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modal_btnClose">Cerrar</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicionUbicacion -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalEdicion -->		 
<div class="modal fade" id="modalEdicion" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
