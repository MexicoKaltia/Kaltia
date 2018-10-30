<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- modal -->
<head>

<%-- <link href="<%=request.getContextPath()%>/layout/css/complementoModal.css" rel="stylesheet" type="text/css" media="all"> --%>
</head>
<!-- modal Edicion -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalHeaderSeccion1 -->
<div class="modal fade" id="modalEdicion_headerSeccion1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog  modal-lg" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> headerSeccion1</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modalbtnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 			<!--**********************************************************************************-->
			<div class="modal-body">
						        <!-- carrusel -->
			        <div id="carouselExampleIndicators1" class="carousel slide" data-interval="false">
						  <div class="carousel-inner container">
						  		<script type="text/javascript">var contaObjetoHeaderSeccion1 = <s:property value='0'/></script>
       						    <s:set var="conta" value="0" />
								<s:iterator value='header.headerSeccion1' var="menu2Value">	
						  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-md-8 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-md-8 text-center">
								</s:else>
										<li>
										    <div class="row">
									          <span class="col-md-2 col-md-offset-2 text-left">Titulo</span>
									          <div class="col-md-8">
									            <input type="text" id="tituloObjetoHS1<s:property value='#conta'/>" value="<s:property value='#menu2Value.substring(0,#menu2Value.indexOf("."))' />"/>
									          </div>
									        </div>
									        <div class="row">
									          <span class="col-md-2 col-md-offset-2 text-left">Referencia</span>
									          <div class="col-md-8">
											<select class="form-control" id="enlaceObjetoHS1<s:property value='#conta'/>">
												  <option value="<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>" selected disabled><s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/></option>
												  <hr>										
	      										  <option value="Ubicacion">Ubicacion</option>
											      <option value="Cita">Cita</option>
											      <option value="Contacto">Contacto</option>
											      <option value="Registro">Registro</option>
											 </select>
									          </div>
									        </div>	
										</li>
									</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			<script type="text/javascript">var contaObjetoHeaderSeccion1 = <s:property value='#conta'/></script>
						</div>
						 <div class="controls-top">
							<a class="btn-floating" href="#carouselExampleIndicators1" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
							<a class="btn-floating" href="#carouselExampleIndicators1" data-slide="next"><i class="fa fa-chevron-right"></i></a>
						</div>
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators1" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators1" data-slide-to="2"></li>
						  </ol>	  
    			       </div>
			      <!-- fin carrusel -->
				
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionHeaderSeccion1_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalHeaderSeccion2 -->
<div class="modal fade" id="modalEdicion_headerSeccion2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> headerSeccion2</h5>
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
				    <div class="row">
			          <span class="col-md-2 col-md-offset-2 text-left"><i class="fa fa-phone"></i>Telefono</span>
			          <div class="col-md-8">
						<input type="number" id="telefonoHS2" value="<s:property value='header.headerSeccion2.get(0)' />"/> 
			          </div>
			        </div>
			        <div class="row">
			          <span class="col-md-2 col-md-offset-2 text-left"><i class="fa fa-envelope-o"></i>Correo</span>
			          <div class="col-md-8">
						<input type="email" id="emailHS2" value="<s:property value='header.headerSeccion2.get(1)' />"/>
			          </div>
			        </div>
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionHeaderSeccion2_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalheaderSeccionArray5 -->
<div class="modal fade" id="modalEdicion_headerSeccionArray5Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> headerSeccionArray5</h5>
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
				    <div class="row">
			          <span class="col-md-2 col-md-offset-2 text-left"><i class="fa fa-phone"></i>Titulo Pagina</span>
			          <div class="col-md-8">
						<input type="text" id="tituloHSA5" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(0)' />"/> 
			          </div>
			        </div>
			        <div class="row">
			          <span class="col-md-2 col-md-offset-2 text-left"><i class="fa fa-envelope-o"></i>Icono</span>
			          <div class="col-md-8">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='header.headerSeccion3.get(1)' />" alt="<s:property value='header.headerSeccion3.get(1)' />">
	    				<form id="upload-file-form">
							<div class="alertaBody_file">
								<hiden class="alertaBody_inFile"></hiden>
							</div>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="upload-file-inputBody" type="file" name="uploadfile" accept="image/jpeg" />
		    			</form>
			          </div>
			        </div>
			        <div class="row">
			          <span class="col-md-2 col-md-offset-2 text-left"><i class="fa fa-envelope-o"></i>Logotipo</span>
			          <div class="col-md-8">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='header.headerSeccion3.get(1)' />" alt="<s:property value='header.headerSeccion3.get(3)' />">
	    				<form id="upload-file-form">
							<div class="alertaBody_file">
								<hiden class="alertaBody_inFile"></hiden>
							</div>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="upload-file-inputBody" type="file" name="uploadfile" accept="image/jpeg" />
		    			</form>

			          </div>
			        </div>
			        <div class="row">
			          <span class="col-md-2 col-md-offset-2 text-left"><i class="fa fa-envelope-o"></i>Imagen Fondo</span>
			          <div class="col-md-8">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='header.headerSeccion3.get(1)' />" alt="<s:property value='header.headerSeccion3.get(4)' />">
	    				<form id="upload-file-form">
							<div class="alertaBody_file">
								<hiden class="alertaBody_inFile"></hiden>
							</div>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="upload-file-inputBody" type="file" name="uploadfile" accept="image/jpeg" />
		    			</form>

			          </div>
			        </div>
			        <div class="row">
			          <span class="col-md-2 col-md-offset-2 text-left"><i class="fa fa-envelope-o"></i>Titulo Secciones Separar por | </span>
<!-- 			          <div class="col-md-8"> -->
<!--						<textarea class="form-control" id="variosHS3" name="variosHS3" placeholder="Enter your massage for us here. We will get back to you within 2 business days." rows="7"><s:property value='header.headerSeccion3.get(2)' /></textarea> -->
<!-- 			          </div> -->
 					  <div class="col-md-8">				
						<s:set var="seccion" value="0" />
			            <s:subset source="header.headerSeccionArray5" start="1">  
	    				<s:iterator  var ="headerSeccionArray5">
	    				<s:iterator  value ="#headerSeccionArray5.objetoVO">
			         	 <li><input type="text" id="enlaceHSA5<s:property value="#seccion"/>" value="<s:property />"/></li>
			         	 <s:set var="seccion" value="#seccion+1" />
			         	 </s:iterator>
			            </s:iterator>
	          			</s:subset> 
			          </div>
			        </div>
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionHeaderSeccionArray5_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- modalHeaderSeccion3 VERSION ESTANDAR-->
<div class="modal fade" id="modalEdicion_headerSeccion33" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle">Edicion Seccion</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 			<!--**********************************************************************************-->
			<div class="modal-body">
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionHeaderSeccion3_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalHeaderSeccion4 -->
<div class="modal fade" id="modalEdicion_headerSeccion4Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> headerSeccion4</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 			<!--**********************************************************************************-->
			<div class="modal-body">
						<article>
					<div>
						<p class="heading">
							<input type="text" id="subtituloHS4" value="<s:property value='header.headerSeccion4.get(0)'/>"/>
						</p>
						<h2 class="heading">
							<input type="text" id="tituloHS4" value="<s:property value='header.headerSeccion4.get(1)'/>"/>
						</h2>
						<p>
							<textarea class='form-control' id="descripcionHS4"><s:property value='header.headerSeccion4.get(2)'/></textarea>
						</p>
					</div>
					<div>
					</div>
				 <footer>
			          <ul class="nospace inline pushright">
<%-- Identificar Secciones
			            <li><a class="btn inverse" href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(3)'/>"><s:property value='header.headerSeccion4.get(4)'/></a></li> --%>
						<li><input type="text" id="boton1HS4" value="<s:property value='header.headerSeccion4.get(4)'/>"/>
						<select class="form-control" id="referencia1HS4">
											  <option value="<s:property value='header.headerSeccion4.get(3)'/>" selected disabled><s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/></option>
											  <hr>										
      										  <option value="Ubicacion">Ubicacion</option>
										      <option value="Cita">Cita</option>
										      <option value="Contacto">Contacto</option>
										      <option value="Registro">Registro</option>
										 </select>
						</li>
<%-- Identificar Secciones
			            <li><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(5)'/>"><s:property value='header.headerSeccion4.get(6)'/></a></li> --%>
			            <li><input type="text" id="boton2HS4" value="<s:property value='header.headerSeccion4.get(6)'/>"/>
							<select class="form-control" id="referencia2HS4">
											  <option value="<s:property value='header.headerSeccion4.get(5)'/>" selected disabled><s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/></option>
											  <hr>										
      										  <option value="Ubicacion">Ubicacion</option>
										      <option value="Cita">Cita</option>
										      <option value="Contacto">Contacto</option>
										      <option value="Registro">Registro</option>
										 </select>
						</li>
			          </ul>
		        </footer>

				</article>
				
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionHeaderSeccion4_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!--**********************************************************************************-->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- modalBodySeccionArray1 -->
<div class="modal fade" id="modalEdicion_bodySeccionArray1Bronea" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> bodySeccionArray1</h5>
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
 			<main class="hoc container clear"> 
			    <!-- main body -->
			    <div class="sectiontitle">
			      <h6 class="heading"><input type="text" id="tituloBSA1" value=<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /> /></h6>
			      <p><input type="text" id="subTituloBSA1" value="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)'/>" /></p>
			    </div>
			    <div class="group">
			      <div class="one_half first">
			        <p><textarea class='form-control' id="descripcion1BSA1"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' /></textarea></p>
			        <p class="btmspace-50"><textarea class='form-control' id="descripcion2BSA1"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(3)' /></textarea></p>
			        <!-- carrusel -->
			        <div id="carouselExampleIndicators2" class="carousel slide">
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
						  </ol>	  
						  <div class="carousel-inner">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray1" start="1">  
    							<s:iterator  var ="bodySeccionArray1">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active">
								</s:if>
								<s:else>
   									<div class="carousel-item">
								</s:else>
									<article>
										<a href="#">
											<i class="<s:property value='#bodySeccionArray1.objetoVO.get(2)' />"></i></a>
										<h6 class="heading font-x1"><input type="text" id="tituloObjetoBSA1<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray1.objetoVO.get(3)' />"/></h6>
										<p><textarea class='form-control' id="descripcionObjetoBSA1<s:property value='#conta'/>"><s:property value='#bodySeccionArray1.objetoVO.get(4)' /></textarea></p>
									</article>
									</div>
									
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray1 = <s:property value='#conta'/></script>
						  <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						</div>
    			       </div>
	    		      </div>
			      <!-- fin carrusel -->
			      <div class="one_half">
			      <img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />" alt="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />">
    				<form id="upload-file-form">
						<div class="alertaBody_file">
							<hiden class="alertaBody_inFile"></hiden>
						</div>
						<label for="upload-file-input">Actualiza imagen:</label> 
						<input id="upload-file-inputBody" type="file" name="uploadfile" accept="image/jpeg" />
	    			</form>
			      </div>
			    </div>
			  </main> 			
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary"
					id="modalEdicionBodySeccionArray1_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!--**********************************************************************************-->
<!-- modalBodySeccionArray2 -->
<div class="modal fade" id="modalEdicion_bodySeccionArray2Bronea" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> bodySeccionArray2</h5>
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
 			<div class="hoc container clear">
			      <div id="carouselExampleIndicators3" class="carousel slide">
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators3" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators3" data-slide-to="2"></li>
						  </ol>	  
						  <div class="carousel-inner">
						  	  
						      <s:set var="conta" value="0" />
						      <s:iterator  var="bodySeccionArray2" value ="body.bodySeccionArray2">
						      <s:if test="#conta == 0">
			    					<div class="carousel-item active">
						      </s:if>
							  <s:else>
			   						<div class="carousel-item">
							  </s:else>
								        <article><i class="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"></i>
								          <h6 class="heading font-x1"><input type="text" id="tituloObjetoBSA2<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray2.objetoVO.get(3)' />"/></h6>
								          <p><textarea class='form-control' id="descripcionObjetoBSA2<s:property value='#conta'/>"><s:property value='#bodySeccionArray2.objetoVO.get(4)' /></textarea></p>
								        </article>
								    </div>
						      	<s:set var="conta" value="#conta+1" />
							    </s:iterator>
							    <script type="text/javascript">var contaObjetoBodySeccionArray2 = <s:property value='#conta'/></script>
							  	  <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
									    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
									    <span class="sr-only">Previous</span>
									  </a>
								  <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
					      </div>
					    </div>  	
              	</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary"
					id="modalEdicionBodySeccionArray2_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
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
 			<div class="wrapper modal-body">
				  <div class="hoc container clear"> 
				    <div class="sectiontitle">
				      <h6 class="heading"><input type="text" id="tituloBSA3" value="<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' />"/></h6>
				      <p><textarea class='form-control' id="descripcionBSA3"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></textarea></p>
				    </div>
				    <!-- carrusel -->
				    <ul class="nospace group services">
			        <div id="carouselExampleIndicators4" class="carousel slide">
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators4" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators4" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators4" data-slide-to="2"></li>
						  </ol>	  
						  <div class="carousel-inner">
						     <s:set var="conta" value="0" />
						     <s:subset start="1" source ="body.bodySeccionArray3">
						     <s:iterator var="bodySeccionArray3">
						       	<s:if test="#conta == 0">
    								<div class="carousel-item active">
								</s:if>
								<s:else>
   									<div class="carousel-item">
								</s:else>
		 				        	<article class="bgded overlay" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>?=v1');"> 
						<%-- 		identificar secciones
									<%--<h6 class="heading font-x1"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(2)'/>"> --%> 
		 				          		<h6 class="heading font-x1"> 
		 				          		<input type="text" id="tituloObjetoBSA3<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray3.objetoVO.get(3)'/>"/></h6> 
		 				          		<p><textarea class='form-control' id="descripcionObjetoBSA3<s:property value='#conta'/>"><s:property value='#bodySeccionArray3.objetoVO.get(4)'/></textarea></p> 
		 				        	</article> 
						      	</div>
						      <s:set var="conta" value="#conta+1" />
						      </s:iterator>
						      </s:subset>
						      <script type="text/javascript">var contaObjetoBodySeccionArray3 = <s:property value='#conta'/></script>
						      <a class="carousel-control-prev" href="#carouselExampleIndicators4" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselExampleIndicators4" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						</div>
    			      </div>
    			      </ul>
				    <!-- fin carrusel -->
				  </div>
				</div>
			<%--   id="tituloObjeto<s:property value='#conta'/>" --%>
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
<!-- modalBodySeccion1 -->
<div class="modal fade" id="modalEdicion_bodySeccion1Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> bodySeccion1</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 			<!--**********************************************************************************-->
			<div class="modal-body">
				  <article class="hoc container clear center"> 
				    <div class="sectiontitle" style="margin-bottom:30px;">
				      <h6 class="heading"><input type="text" id="tituloBS1" value="<s:property value='body.BodySeccion1.get(1)'/>"/></h6>
				      <p><textarea class='form-control' id="descripcionBS1"><s:property value='body.BodySeccion1.get(2)'/></textarea></p>
				    </div>
				    <p><input type="text" id="botonBS1" value="<s:property value='body.BodySeccion1.get(4)'/>"/></p>
				    <select class="form-control" id="referenciaBS1">
											  <option value="<s:property value='body.BodySeccion1.get(3)'/>" selected disabled><s:property value='body.BodySeccion1.get(3)'/></option>
											  <hr>										
      										  <option value="Ubicacion">Ubicacion</option>
										      <option value="Cita">Cita</option>
										      <option value="Contacto">Contacto</option>
										      <option value="Registro">Registro</option>
										 </select>
				  </article>
				
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionBodySeccion1_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalBodySeccionArray4 -->
<div class="modal fade" id="modalEdicion_bodySeccionArray4Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> bodySeccionArray4</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 			<!--**********************************************************************************-->
			<div class="modal-body">
				<div class="sectiontitle">
			      <h6 class="heading"><input type="text" id="tituloBSA4" value="<s:property value='body.bodySeccionArray4.get(0).objetoVO.get(0)' />"/></h6>
			      <p><textarea class='form-control' id="descripcionBSA4"><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(1)' /></textarea></p>
			    </div>
			    			        <!-- carrusel -->
			        <div id="carouselExampleIndicators5" class="carousel slide">
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators5" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators5" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators5" data-slide-to="2"></li>
						  </ol>	  
						  <div class="carousel-inner">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray4" start="1">  
    							<s:iterator  var ="bodySeccionArray4">
						  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active">
								</s:if>
								<s:else>
   									<div class="carousel-item">
								</s:else>
										<article class="<s:property value='#bodySeccionArray4.objetoVO.get(0)'/>">
								<%-- identificar Secciones
								       	<a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>"> --%>
								       	
								       	<img class="btmspace-30" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='#bodySeccionArray4.objetoVO.get(2)'/>" alt="<s:property value='#bodySeccionArray4.objetoVO.get(2)'/>">
								        	<h3 class="heading"><input type="text" id="tituloObjetoBSA4<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray4.objetoVO.get(3)'/>"/></h3>
								        	<p><textarea class='form-control' id="descripcionObjetoBSA4<s:property value='#conta'/>"><s:property value='#bodySeccionArray4.objetoVO.get(4)'/></textarea>&hellip;</p>
								        <footer class="nospace">
								        	<input type="text" id="tituloObjetoBSA4<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray4.objetoVO.get(5)'/>"/> &raquo;
								        </footer>
								      </article>
									</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray4 = <s:property value='#conta'/></script>
						  <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						</div>
    			       </div>
			      <!-- fin carrusel -->
    		</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionBodySeccionArray4_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!--    MODAL EDICION -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!--**********************************************************************************-->
<!-- modalFooterSeccion1 -->
<div class="modal fade" id="modalEdicion_footerSeccion1Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> footerSeccion1</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 			<!--**********************************************************************************-->
			<div class="modal-body">
			
			      <h6 class="heading"><input type="text" id="tituloFS1" value="<s:property value='footer.footerSeccion1.get(0)' />"/></h6>
			      <p class="btmspace-30"><input type="text" id="subtituloFS1" value="<s:property value='footer.footerSeccion1.get(1)' />"/></p>
			      <ul class="nospace linklist contact">
			        <li><i class="fa fa-map-marker"></i>
			          <address>
			          <input type="text" id="domicilioFS1" value="<s:property value='footer.footerSeccion1.get(2)' />"/>
			          </address>
			        </li>
			        <li><i class="fa fa-phone"></i><input type="text" id="telefonoFS1" value="<s:property value='footer.footerSeccion1.get(3)' />"/></li>
			        <li><i class="fa fa-envelope-o"></i><input type="text" id="correoFS1" value="<s:property value='footer.footerSeccion1.get(4)' />"/></li>
			        <iframe src="<s:property value='footer.footerVarios'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
				  </ul>
				  
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionFooterSeccion1_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalFooterSeccion1 -->
<!--**********************************************************************************-->
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
<!-- modalRegistro -->
<div class="modal fade" id="modalRegistro" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> Registro Cliente</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
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
		                        <input id="fname" name="name" type="text" placeholder="Nombre(s)" class="form-control">
		                      </div>
		                    </div>
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
		                      <div class="col-md-8">
		                        <input id="lname" name="name" type="text" placeholder="Apellidos" class="form-control">
		                      </div>
		                    </div>
		
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
		                      <div class="col-md-8">
		                        <input id="email" name="email" type="text" placeholder="Email" class="form-control">
		                      </div>
		                    </div>
		
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
		                      <div class="col-md-8">
		                        <input id="phone" name="phone" type="text" placeholder="Num Telefono" class="form-control">
		                      </div>
		                    </div>
		
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
		                      <div class="col-md-8">
		                        <textarea class="form-control" id="message" name="message" placeholder="Captura tu mensaje, en breve un asesor se pondrá en contacto. Gracias" rows="7"></textarea>
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
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalContacto -->
<div class="modal fade" id="modalContacto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> Contacto</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
		        <div class="container">
		          <div class="row">
		            <div class="col-md-12">
		              <div class="well well-sm">
		              	<label><s:property value='identidadVO.empresa'/> - Contacto</label>
		                <form class="form-horizontal" method="post">
		                  <fieldset>
		                    <legend class="text-center header"><label><s:property value='identidadVO.empresa'/> - Contacto</label></legend>
		                    <div class="row">
							<h6 class="heading"><s:property value='footer.footerSeccion1.get(0)' /></h6>
							  <p class="btmspace-30"><s:property value='footer.footerSeccion1.get(1)' /></p>
							  <ul class="nospace linklist contact">
							  <li><i class="fa fa-map-marker"></i>
							  <address>
							    <s:property value='footer.footerSeccion1.get(2)' />
							 </address>
							 </li>
							 <li><i class="fa fa-phone"></i><s:property value='footer.footerSeccion1.get(3)' /></li>
							 <li><i class="fa fa-envelope-o"></i><s:property value='footer.footerSeccion1.get(4)' /></li>
							 </ul>
							 </div>
		                    <div class="row">
		                      <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
		                      <div class="col-md-8">
		                        <textarea class="form-control" id="message" name="message" placeholder="Captura tu mensaje, en breve un asesor se pondrá en contacto. Gracias" rows="7"></textarea>
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
				<a href="#" class="btn btn-primary" id="btnSaveContacto">Guardar</a>
			</div>
		</div>
	</div>
</div>
<!-- modalContacto -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalCita -->
<div class="modal fade" id="modalCita" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> Contacto</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
		        CITA
		    </div>
		    <!--**********************************************************************************-->
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="modal_btnClose">Cerrar</a>
				<a href="#" class="btn btn-primary" id="btnSaveContacto">Guardar</a>
			</div>
		</div>
	</div>
</div>
<!-- FIN modalCita -->
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