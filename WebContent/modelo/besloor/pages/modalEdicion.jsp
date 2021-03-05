<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- modalEdicion  -->
<head>
  
   
</head>
<!-- modal Edicion -->
<!-- VERSION ESTANDAR-->
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
<!-- modalHeaderSeccion1 -->
<div class="modal fade" id="modalEdicion_headerSeccion1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog  modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> headerSeccion1</h5>
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
						        <form>
			        <div id="carouselExampleIndicators1" class="carousel slide" data-interval="false">
						  <div class="carousel-inner container">
						  		<script type="text/javascript">var contaObjetoHeaderSeccion1 = <s:property value='0'/></script>
       						    <s:set var="conta" value="0" />
								<s:iterator value='header.headerSeccion1' var="menu2Value">	
						  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-12 text-center">
								</s:else>
										<li>
											
									          <div class="form-group row">
									            <span class="col-3 col-form-label text-right colorLabel">Titulo</span>
									            <div class="col-7">
									              <input type="text" class="form-control" id="tituloObjetoHS1<s:property value='#conta'/>" value="<s:property value='#menu2Value.substring(0,#menu2Value.indexOf("."))' />" required />
									            </div>
									          </div>
									          <div class="form-group row">
									            <span class="col-3 col-form-label text-right colorLabel">Referencia</span>
									            <div class="col-7">
									              <select class="custom-select form-control" id="seleccionObjetoHS1<s:property value='#conta'/>">
													<option value="<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>" selected ><s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/></option>
									              <!-- <option selected>Selecciona una Opcion del Menú con los Modulos Activos</option> -->
									              <s:iterator value='identidadVO.moduloNombre'>
									              	<option value='<s:property/>'><s:property/></option>
									              </s:iterator>
									              
									            </select>
									            </div>
									          </div>
									        
										</li>
									</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			<script type="text/javascript">var contaObjetoHeaderSeccion1 = <s:property value='#conta'/></script>
						</div>
<!-- 						 <div class="controls-top"> -->
<!-- 							<a class="btn-floating" href="#carouselExampleIndicators1" data-slide="prev"><i class="fa fa-chevron-left"></i></a> -->
<!-- 							<a class="btn-floating" href="#carouselExampleIndicators1" data-slide="next"><i class="fa fa-chevron-right"></i></a> -->
<!-- 						</div> -->
						  <a class="carousel-control-prev" href="#carouselExampleIndicators1" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselExampleIndicators1" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						<ol class="carousel-indicators">
							    <li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active"></li>
							    <li data-target="#carouselExampleIndicators1" data-slide-to="1"></li>
							    <li data-target="#carouselExampleIndicators1" data-slide-to="2"></li>
						  	</ol>
						  	  
    			       </div>
    			       </form>
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
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> headerSeccion2</h5>
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
				<form>
				    <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-phone"></i> Telefono</span>
			          <div class="col-8">
						<input type="number" class="form-control" id="telefonoHS2" value="<s:property value='header.headerSeccion2.get(0)' />" required/> 
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-envelope-o"></i> Correo</span>
			          <div class="col-8">
						<input type="email" class="form-control" id="emailHS2" value="<s:property value='header.headerSeccion2.get(1)' />" required/>
			          </div>
			        </div>
			     </form>   
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
<div class="modal fade" id="modalEdicion_headerSeccionArray5" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> headerSeccionArray5</h5>
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
				    <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo Pagina</span>
			          <div class="col-7">
						<input type="text" class="form-control" id="tituloHSA5" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(0)' />"/> 
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Icono</span>
			          <div class="col-7">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(1)' />" alt="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(1)' />">
<!-- 	    				<form id="upload-file-form"> -->
							<form id="faviconHSA5Form">
							<hiden class="faviconHSA5Form"></hiden>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="faviconHSA5"  type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(1)' />"/>
		    			</form>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Logotipo</span>
			          <div class="col-7">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)' />" alt="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)' />">
	    				<form id="logoHSA5Form">
							<hiden class="logoHSA5Form"></hiden>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="logoHSA5" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)' />"/>
		    			</form>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Imagen Fondo</span>
			          <div class="col-7">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(3)' />" alt="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(3)' />">
	    				<form id="fondoHeaderHSA5Form">
								<hiden class="fondoHeaderHSA5Form"></hiden>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="fondoHeaderHSA5" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(3)' />"/>
		    			</form>

			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo Secciones Separar por | </span>
 					  <div class="col-7">				
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
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalHeaderSeccion4 -->
<div class="modal fade" id="modalEdicion_headerSeccion4" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> headerSeccion4</h5>
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
				
  			    <div class="form-group row">
  			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo</span>
  			          <div class="col-7">
  						<input type="text" class="form-control" id="tituloHS4" value="<s:property value='header.headerSeccion4.get(0)'/>"/> 
  			          </div>
  			    </div>
  			    <div class="form-group row">
  			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Descripcion</span>
  			          <div class="col-7">
  						<textarea class='form-control' id="descripcionHS4" rows="5"><s:property value='header.headerSeccion4.get(1)'/></textarea> 
  			          </div>
  			    </div>
  			    <div class="form-group row">
  			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton 1</span>
  			          <div class="col-7">
  						<input type="text" class="form-control" id="boton1HS4" value="<s:property value='header.headerSeccion4.get(3)'/>"/>
  						<%-- Identificar Secciones <a class="btn inverse" href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(3)'/>"><s:property value='header.headerSeccion4.get(4)'/></a></li> --%>
            			<select class="custom-select form-control" id="seleccion1HS4">
<%--               			  <option value="<s:property value='header.headerSeccion4.get(3)'/>" selected disabled><s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/></option> --%>
						  <option value="<s:property value='header.headerSeccion4.get(2)'/>" selected><s:property value='header.headerSeccion4.get(2)'/></option>
 						  <!-- <option selected>Selecciona una Opcion del Menú con los Modulos Activos</option> -->
              				<s:iterator value='identidadVO.moduloNombre'>
							  	<option value='<s:property/>'><s:property/></option>
							</s:iterator>              		   
						 </select> 
  			          </div>
  			    </div>
  			  
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
<div class="modal fade" id="modalEdicion_bodySeccionArray1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> bodySeccionArray1</h5>
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
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo Seccion</span>
			          <div class="col-7">
						<input type="text" class="form-control" id="tituloBSA1" value=<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /> />
			          </div>
			        </div>
			       <div class="form-group row">
  			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton 1</span>
  			          <div class="col-7">
  						<input type="text" class="form-control" id="botonBSA1" value="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)'/>"/>						
            			<select class="custom-select form-control" id="seleccionBSA1">
						  <option value="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)'/>" selected><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)'/></option>
              				<s:iterator value='identidadVO.moduloNombre'>
							  	<option value='<s:property/>'><s:property/></option>
							</s:iterator>              		   
						 </select> 
  			          </div>
  			    </div>
			        
			        			        <!-- carrusel -->
			        <div id="carouselbodySeccionArray1" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray1" start="1">  
    							<s:iterator  var ="bodySeccionArray1">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-12 text-center">
								</s:else>
								<section>
								<div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Icono</span>
						          <div class="col-7">
									<a data-toggle="modal" href="#modalIconoObjeto" class="iconoForm">
									<i class="btmspace-30 fa fa-4x <s:property value='#bodySeccionArray1.objetoVO.get(1)' />" id="iconoObjetoBSA1<s:property value='#conta'/>"></i></a>
									<label for="iconoObjetoBSA1" ><s:property value='#bodySeccionArray1.objetoVO.get(1)' /></label> 
						          </div>
						        </div>
								<div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-7">
									<input type="text" class="form-control" id="tituloObjetoBSA1<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray1.objetoVO.get(2)' />"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-7">
									<textarea class='form-control' id="descripcionObjetoBSA1<s:property value='#conta'/>"><s:property value='#bodySeccionArray1.objetoVO.get(3)' /></textarea>
						          </div>
						        </div>
								 <div class="form-group row">
				  			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton 1</span>
				  			          <div class="col-7">
				  						<input type="text" class="form-control" id="botonObjetoBSA1<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray1.objetoVO.get(4)'/>"/>						
				            			<select class="custom-select form-control" id="seleccionObjetoBSA1">
										  <option value="<s:property value='#bodySeccionArray1.objetoVO.get(0)'/>" selected><s:property value='#bodySeccionArray1.objetoVO.get(0)'/></option>
				              				<s:iterator value='identidadVO.moduloNombre'>
											  	<option value='<s:property/>'><s:property/></option>
											</s:iterator>              		   
										 </select> 
				  			          </div>
				  			    </div>
						        
						        </section>
						    	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray1 = <s:property value='#conta'/></script>
				      	</div>
						  <a class="carousel-control-prev" href="#carouselbodySeccionArray1" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselbodySeccionArray1" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						  <ol class="carousel-indicators">
						    <li data-target="#carouselbodySeccionArray1" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselbodySeccionArray1" data-slide-to="1"></li>
						    <li data-target="#carouselbodySeccionArray1" data-slide-to="2"></li>
						    <li data-target="#carouselbodySeccionArray1" data-slide-to="3"></li>
						  </ol>	  
   			       </div> 	<!-- fin carrusel -->

			  </div>	<!-- end bodymodal -->	
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
<div class="modal fade" id="modalEdicion_bodySeccionArray2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> bodySeccionArray2</h5>
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
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo Seccion</span>
			          <div class="col-7">
						<input type="text" class="form-control" id="tituloBSA2" value=<s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /> />
			          </div>
			        </div>
			        <div class="form-group row">
				  		 <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton Seccion</span>
				  		 <div class="col-7">
				  			<input type="text" class="form-control" id="botonBSA2" value="<s:property value='body.bodySeccionArray2.objetoVO.get(2)'/>"/>						
				            <select class="custom-select form-control" id="seleccionBSA2">
					    	<option value="<s:property value='body.bodySeccionArray2.objetoVO.get(0)'/>" selected><s:property value='#bodySeccionArray2.objetoVO.get(0)'/></option>
				    		<s:iterator value='identidadVO.moduloNombre'>
							  	<option value='<s:property/>'><s:property/></option>
							</s:iterator>              		   
							 </select> 
				  	      </div>
				  	 </div>
  			        <!-- carrusel -->
			        <div id="carouselbodySeccionArray2" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray2" start="1">  
    							<s:iterator  var ="bodySeccionArray2">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-12 text-center">
								</s:else>
								<section>
						  	    
						        
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
						          <div class="col-7">
							      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(1)'/>?=v1" alt="<s:property value='#bodySeccionArray2.objetoVO.get(1)'/>">
									<form id="imagenBSA2Form<s:property value='#conta'/>" class="imagenArrayForm">
										<hiden class="imagenBSA2Form<s:property value='#conta'/>"></hiden>
										<label for="imagenObjetoBSA2<s:property value='#conta'/>">Actualiza imagen:</label> 
										<input id="imagenObjetoBSA2<s:property value='#conta'/>" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='#bodySeccionArray2.objetoVO.get(1)'/>"/>
<%-- 										<script type="text/javascript">var contaImagenBodySeccionArray3 = <s:property value='#conta'/></script> --%>
					    			</form>
						          </div>
						        </div>
						        <div class="form-group row">
				  			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo</span>
				  			          <div class="col-7">
				  						<input type="text" class="form-control" id="tituloObjetoBSA2<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray2.objetoVO.get(2)'/>"/>						
				            			<select class="custom-select form-control" id="seleccionObjetoBSA2">
										  <option value="<s:property value='#bodySeccionArray2.objetoVO.get(1)'/>" selected><s:property value='#bodySeccionArray2.objetoVO.get(1)'/></option>
				              				<s:iterator value='identidadVO.moduloNombre'>
											  	<option value='<s:property/>'><s:property/></option>
											</s:iterator>              		   
										 </select> 
				  			          </div>
				  			    </div>
						        </section>
						   	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray2 = <s:property value='#conta'/></script>
				      	</div>
				      	  <a class="carousel-control-prev" href="#carouselbodySeccionArray2" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselbodySeccionArray2" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						  <ol class="carousel-indicators">
						    <li data-target="#carouselbodySeccionArray2" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselbodySeccionArray2" data-slide-to="1"></li>
						    <li data-target="#carouselbodySeccionArray2" data-slide-to="2"></li>
						  </ol>	  
   			       </div> 	<!-- fin carrusel -->
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
<div class="modal fade" id="modalEdicion_bodySeccionArray3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> bodySeccionArray3</h5>
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
		           <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
			          <div class="col-7">
					 	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)'/>?=v1" alt="<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)'/>">
						<form id="imagenBSA3Form" class="imagenArrayForm">
							<hiden class="imagenBSA3Form"></hiden>
							<label for="imagenBSA3">Actualiza imagen:</label> 
							<input id="imagenBSA3" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)'/>"/>
<%-- 									<script type="text/javascript">var contaImagenBodySeccionArray3 = <s:property value='#conta'/></script> --%>
						</form>
					   </div>
					</div>
			    	<div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Seccion</span>
			          <div class="col-7">
						<input type="text" class='form-control' id="tituloBSA3" value="<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion</span>
			          <div class="col-7">
						<textarea class='form-control' id="descripcionBSA3"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(2)' /></textarea>
			          </div>
			        </div>
			        			        <!-- carrusel -->
			        <div id="carousel_bodySeccionArray3" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray3" start="1">  
    							<s:iterator  var ="bodySeccionArray3">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-12 text-center">
								</s:else>
								<section>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Icono</span>
						          <div class="col-7">
									<a data-toggle="modal" href="#modalIconoObjeto" class="iconoForm">
									<i class="btmspace-30 fa fa-4x <s:property value='#bodySeccionArray3.objetoVO.get(0)' />" id="iconoObjetoBSA3<s:property value='#conta'/>"></i></a>
									<label for="iconoObjetoBSA3" ><s:property value='#bodySeccionArray3.objetoVO.get(0)' /></label> 
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-7">
									<input type="text" class='form-control' id="tituloObjetoBSA3<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-7">
									<textarea class='form-control' id="descripcionObjetoBSA3<s:property value='#conta'/>"><s:property value='#bodySeccionArray3.objetoVO.get(2)'/></textarea>
						          </div>
						        </div>
						        <div class="form-group row">
				  			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton Objeto</span>
				  			          <div class="col-7">
				  						<input type="text" class="form-control" id="botonObjetoBSA3<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray3.objetoVO.get(4)'/>"/>						
				            			<select class="custom-select form-control" id="seleccionObjetoBSA2">
										  <option value="<s:property value='#bodySeccionArray3.objetoVO.get(3)'/>" selected><s:property value='#bodySeccionArray3.objetoVO.get(3)'/></option>
				              				<s:iterator value='identidadVO.moduloNombre'>
											  	<option value='<s:property/>'><s:property/></option>
											</s:iterator>              		   
										 </select> 
				  			          </div>
				  			    </div>
						        </section>
						    	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray3 = <s:property value='#conta'/></script>
				      	</div>
				      	<a class="carousel-control-prev" href="#carousel_bodySeccionArray3" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carousel_bodySeccionArray3" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
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
<!--**********************************************************************************-->
<!-- modalBodySeccionArray4 -->
<div class="modal fade" id="modalEdicion_bodySeccionArray4" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> bodySeccionArray4</h5>
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
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Seccion</span>
			          <div class="col-7">
						<input type="text" class='form-control' id="tituloBSA4" value="<s:property value='body.bodySeccionArray4.get(0).objetoVO.get(0)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
				  		 <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton Seccion</span>
				  		 <div class="col-7">
				  			<input type="text" class="form-control" id="botonBSA4" value="<s:property value='body.bodySeccionArray4.get(0).objetoVO.get(2)'/>"/>						
				            <select class="custom-select form-control" id="seleccionBSA4">
					    	<option value="<s:property value='body.bodySeccionArray4.get(0).objetoVO.get(1)'/>" selected><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(1)'/></option>
				    		<s:iterator value='identidadVO.moduloNombre'>
							  	<option value='<s:property/>'><s:property/></option>
							</s:iterator>              		   
							 </select> 
				  	      </div>
				  	 </div>
			        			        <!-- carrusel -->
			        <div id="carousel_bodySeccionArray4" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray4" start="1">  
    							<s:iterator  var ="bodySeccionArray4">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-12 text-center">
								</s:else>
								<section>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
						          <div class="col-7">
							      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>?=v1" alt="<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>">
									<form id="imagenBSA4Form<s:property value='#conta'/>" class="imagenArrayForm">
										<hiden class="imagenBSA4Form<s:property value='#conta'/>"></hiden>
										<label for="imagenObjetoBSA4<s:property value='#conta'/>">Actualiza imagen:</label> 
										<input id="imagenObjetoBSA4<s:property value='#conta'/>" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>"/>
					    			</form>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-7">
									<input type="text"  class='form-control' id="descripcionObjetoBSA4<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray4.objetoVO.get(4)'/>"/>
						          </div>
						        </div>
						        <div class="form-group row">
				  			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton Objeto</span>
				  			          <div class="col-7">
				  						<input type="text" class="form-control" id="tituloObjetoBSA4<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray4.objetoVO.get(3)'/>"/>						
				            			<select class="custom-select form-control" id="referenciaObjetoBSA4<s:property value='#conta'/>">
										  <option value="<s:property value='#bodySeccionArray4.objetoVO.get(2)'/>" selected><s:property value='#bodySeccionArray4.objetoVO.get(2)'/></option>
				              				<s:iterator value='identidadVO.moduloNombre'>
											  	<option value='<s:property/>'><s:property/></option>
											</s:iterator>              		   
										 </select> 
				  			          </div>
				  			    </div>
						        </section>
						    	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray4 = <s:property value='#conta'/></script>
				      	</div>
				      	<a class="carousel-control-prev" href="#carousel_bodySeccionArray4" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carousel_bodySeccionArray4" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						  <ol class="carousel-indicators">
						    <li data-target="#carousel_bodySeccionArray4" data-slide-to="0" class="active"></li>
						    <li data-target="#carousel_bodySeccionArray4" data-slide-to="1"></li>
						    <li data-target="#carousel_bodySeccionArray4" data-slide-to="2"></li>
						  </ol>	  
   			       </div> 	<!-- fin carrusel -->
   			     </div>	<!-- end bodymodal -->	
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary"
					id="modalEdicionBodySeccionArray4_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!--************************************  modalEdicion_bodySeccionArray5  *********************************************-->
<div class="modal fade" id="modalEdicion_bodySeccionArray5" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> bodySeccionArray5</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
 		    <!-- main body -->
			<div class="modal-body">
				<div class="form-group row">
		           <span class="col-5 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
			          <div class="col-7">
					 	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccionArray5.objetoVO.get(0)'/>?=v1" alt="<s:property value='body.bodySeccionArray0.objetoVO.get(0)'/>">
						<form id="imagenBSA5Form" class="imagenArrayForm">
							<hiden class="imagenBSA5Form"></hiden>
							<label for="imagenBSA5">Actualiza imagen:</label> 
							<input id="imagenBSA5" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='body.bodySeccionArray5.objetoVO.get(0)'/>"/>
<%-- 									<script type="text/javascript">var contaImagenBodySeccionArray5 = <s:property value='#conta'/></script> --%>
						</form>
					   </div>
					</div>
			    	<div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Seccion</span>
			          <div class="col-7">
						<input type="text" class='form-control' id="tituloBSA5" value="<s:property value='body.bodySeccionArray5.get(0).objetoVO.get(1)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
				  		 <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton Seccion</span>
				  		 <div class="col-7">
				  			<input type="text" class="form-control" id="botonBSA5" value="<s:property value='body.bodySeccionArray5.get(0).objetoVO.get(3)'/>"/>						
				            <select class="custom-select form-control" id="seleccionBSA5">
					    	<option value="<s:property value='body.bodySeccionArray5.get(0).objetoVO.get(2)'/>" selected><s:property value='body.bodySeccionArray5.get(0).objetoVO.get(2)'/></option>
				    		<s:iterator value='identidadVO.moduloNombre'>
							  	<option value='<s:property/>'><s:property/></option>
							</s:iterator>              		   
							 </select> 
				  	      </div>
				  	 </div>
			        			        <!-- carrusel -->
			        <div id="carousel_bodySeccionArray5" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray5" start="1">  
    							<s:iterator  var ="bodySeccionArray5">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-12 text-center">
								</s:else>
								<section>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
						          <div class="col-7">
							      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray5.objetoVO.get(1)'/>?=v1" alt="<s:property value='#bodySeccionArray5.objetoVO.get(1)'/>">
									<form id="imagenBSA5Form<s:property value='#conta'/>" class="imagenArrayForm">
										<hiden class="imagenBSA5Form<s:property value='#conta'/>"></hiden>
										<label for="imagenObjetoBSA5<s:property value='#conta'/>">Actualiza imagen:</label> 
										<input id="imagenObjetoBSA5<s:property value='#conta'/>" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='#bodySeccionArray5.objetoVO.get(1)'/>"/>
					    			</form>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-7">
									<input type="text" class='form-control' id="tituloObjetoBSA5<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray5.objetoVO.get(2)'/>"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>SubTitulo Objeto</span>
						          <div class="col-7">
									<input type="text" class='form-control' id="subTituloObjetoBSA5<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray5.objetoVO.get(3)'/>"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-7">
									<textarea class='form-control' id="descripcionObjetoBSA5<s:property value='#conta'/>"><s:property value='#bodySeccionArray5.objetoVO.get(4)'/></textarea>
						          </div>
						        </div>
						        
						        
						        </section>
						    	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray5 = <s:property value='#conta'/></script>
				      	</div>
				      	<a class="carousel-control-prev" href="#carousel_bodySeccionArray5" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carousel_bodySeccionArray5" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						  <ol class="carousel-indicators">
						    <li data-target="#carousel_bodySeccionArray5" data-slide-to="0" class="active"></li>
						    <li data-target="#carousel_bodySeccionArray5" data-slide-to="1"></li>
						    <li data-target="#carousel_bodySeccionArray5" data-slide-to="2"></li>
						  </ol>	  
   			       </div> 	<!-- fin carrusel -->
   			     </div>	<!-- end bodymodal -->	
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary"
					id="modalEdicionBodySeccionArray5_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!--**********************************************************************************-->
<!-- modalfooterSeccionUbicacion -->
<div class="modal fade" id="modalEdicion_footerSeccionUbicacion" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> footerSeccionUbicacion</h5>
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
			
			    	<div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo </span>
			          <div class="col-7">
						<input type="text" class='form-control' id="tituloFSU" value="<s:property value='footer.footerSeccionUbicacion.get(0)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Domicilio </span>
			          <div class="col-7">
						<input type="text" class='form-control' id="domicilioFSU" value="<s:property value='footer.footerSeccionUbicacion.get(1)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Telefono</span>
			          <div class="col-7">
						<input type="text" class='form-control' id="telefonoFSU" value="<s:property value='footer.footerSeccionUbicacion.get(2)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Correo</span>
			          <div class="col-7">
						</i><input type="text" class='form-control' id="correoFSU" value="<s:property value='footer.footerSeccionUbicacion.get(3)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Ubicacion</span>
			          <div class="col-7">
						<input type="text" class='form-control' id="ubicacionFSU" value="<s:property value='footer.footerSeccionUbicacion.get(4)' />"/>
			          </div>
			        </div>
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionfooterSeccionUbicacion_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalfooterSeccionUbicacion -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalFooterRedes -->
<div class="modal fade" id="modalEdicion_footerSeccionRedes" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> footerSeccionRedes</h5>
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
			    	<div class="form-group row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Redes Sociales</span>
			          <div class="col-7">
						<input type="text" class="form-control" id="tituloFS2" value="<s:property value='footer.footerSeccionRedes.get(0)' />"/>
			          </div>
			        </div>
			        <br><br>
			        <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fab fa-3x fa-facebook" ></i></span>
				      <div class="col-7">
				      <div class="input-group grupoRS">
						  <div class="input-group-prepend ">
						    <div class="input-group-text">
						      <input type="checkbox" id="facebookFSR">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccionRedes.get(1)' />" id="facebookFSRText" readonly>
						</div>
				      </div>
				    </div>
			        <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fab fa-3x fa-twitter" ></i></span>
				      <div class="col-7">
						<div class="input-group grupoRS">
						  <div class="input-group-prepend">
						    <div class="input-group-text">
						      <input type="checkbox" id="twitterFSR">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccionRedes.get(2)' />" id="twitterFSRText" readonly>
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fab fa-3x fa-youtube" ></i></span>
				      <div class="col-7">
				      <div class="input-group grupoRS">
						  <div class="input-group-prepend">
						    <div class="input-group-text">
						      <input type="checkbox" id="youtubeFSR">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccionRedes.get(3)' />" id="youtubeFSRText" readonly>
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fab fa-3x fa-linkedin" ></i></span>
				      <div class="col-7">
						<div class="input-group grupoRS">
						  <div class="input-group-prepend">
						    <div class="input-group-text">
						      <input type="checkbox" id="linkedinFSR">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccionRedes.get(4)' />" id="linkedinFSRText" readonly>
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-3 col-form-label text-right colorLabel"><i class="btmspace-30 fab fa-3x fa-google-plus" ></i></span>
				      <div class="col-7">
						<div class="input-group grupoRS">
						  <div class="input-group-prepend">
						    <div class="input-group-text">
						      <input type="checkbox" id="googleFST">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccionRedes.get(5)' />" id="googleFSText" readonly>
						</div>
				      </div>
				    </div>		      
			        				  
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionFooterSeccionRedes_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalFooterSeccionRedes -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalFooterSeccion3 -->
<div class="modal fade" id="modalEdicion_footerSeccion3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> footerSeccion2</h5>
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
			
			    	<div class="row">
			          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo secciones</span>
			          <div class="col-7">
						<input type="text" class="form-control" id="tituloFS3" value="<s:property value='footer.footerSeccion3.get(0)' />"/>
			          </div>
			        </div>
			<div class="form-group row">
		         <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
		         <div class="col-7">
			      	<img class="inspace-30 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='footer.FooterSeccion3.get(1)'/>?=v3" alt="<s:property value='footer.FooterSeccion3.get(1)'/>">
					<form id="imagenFS3Form">
						<hiden class="imagenFS3Form"></hiden>
						<label for="imagenFS3">Actualiza imagen:</label> 
						<input id="imagenFS3" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='footer.FooterSeccion3.get(1)'/>"/>
					</form>
			      </div>
			 </div>		      
			        
			        				  
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionFooterSeccion3_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalFooterSeccion3 -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalBodyQRRE -->
<div class="modal fade" id="modalEdicion_bodyQRRE" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> bodyQRRE</h5>
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
			        			        <!-- carrusel -->
			        <div id="carousel_bodyQRRE" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodyQRRE" start="1">  
    							<s:iterator  var ="bodyQRRE">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-12 text-center">
								</s:else>
								<section>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
						          <div class="col-7">
							      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodyQRRE.objetoVO.get(0)'/>?=v1" alt="<s:property value='#bodyQRRE.objetoVO.get(0)'/>">
									<form id="imagenObjetoQRREForm<s:property value='#conta'/>" class="imagenArrayForm">
										<hiden class="imagenObjetoQRREForm<s:property value='#conta'/>"></hiden>
										<label for="imagenObjetoQRRE<s:property value='#conta'/>">Actualiza imagen:</label> 
										<input id="imagenObjetoQRRE<s:property value='#conta'/>" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='#bodyQRRE.objetoVO.get(0)'/>"/>
					    			</form>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-7">
									<input type="text" class='form-control' id="tituloObjetoQRRE<s:property value='#conta'/>" value="<s:property value='#bodyQRRE.objetoVO.get(1)'/>"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-7">
									<textarea class='form-control' id="descripcionObjetoQRRE<s:property value='#conta'/>"><s:property value='#bodyQRRE.objetoVO.get(4)'/></textarea>
						          </div>
						        </div>
						        </section>
						    	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodyQRRE = <s:property value='#conta'/></script>
				      	</div>
				      	<a class="carousel-control-prev" href="#carousel_bodyQRRE" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carousel_bodyQRRE" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						  <ol class="carousel-indicators">
						    <li data-target="#carousel_bodyQRRE" data-slide-to="0" class="active"></li>
						    <li data-target="#carousel_bodyQRRE" data-slide-to="1"></li>
						    <li data-target="#carousel_bodyQRRE" data-slide-to="2"></li>
						  </ol>	  
   			       </div> 	<!-- fin carrusel -->
   			     </div>	<!-- end bodymodal -->	
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary"
					id="modalEdicionBodyQRRE_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!-- ################################################################################################ -->

<!-- modalbodyQRE -->
<div class="modal fade" id="modalEdicion_bodyQRE" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> body QRE</h5>
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
  			        <!-- carrusel -->
			        <div id="carouselEdicionBodyQRE" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodyQRE" start="0">  
    							<s:iterator  var ="bodyQRE">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-12 text-center">
								</s:else>
								<section>
						  	    <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
						          <div class="col-7">
							      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodyQRE.objetoVO.get(0)'/>?=v1" alt="<s:property value='#bodyQRE.objetoVO.get(0)'/>">
									<form id="imagenObjetoQREForm<s:property value='#conta'/>" class="imagenArrayForm">
										<hiden class="imagenObjetoQREForm<s:property value='#conta'/>"></hiden>
										<label for="imagenObjetoQRE<s:property value='#conta'/>">Actualiza imagen:</label> 
										<input id="imagenObjetoQRE<s:property value='#conta'/>" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='#bodyQRE.objetoVO.get(0)'/>"/>
					    			</form>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-7">
									<input type="text" class='form-control' id="tituloObjetoQRE<s:property value='#conta'/>" value="<s:property value='#bodyQRE.objetoVO.get(1)' />"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-7">
									<textarea class='form-control' id="descripcionObjetoQRE<s:property value='#conta'/>"><s:property value='#bodyQRE.objetoVO.get(2)' /></textarea>
						          </div>
						        </div>
						        </section>
						   			</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoQRE = <s:property value='#conta'/></script>
				      	</div>
				      	  <a class="carousel-control-prev" href="#carouselEdicionBodyQRE" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselEdicionBodyQRE" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						  <ol class="carousel-indicators">
						    <li data-target="#carouselEdicionBodyQRE" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselEdicionBodyQRE" data-slide-to="1"></li>
						    <li data-target="#carouselEdicionBodyQRE" data-slide-to="2"></li>
						  </ol>	  
   			       </div> 	<!-- fin carrusel -->
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"
					id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary"
					id="modalEdicionBodyQRE_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!-- ################################################################################################ -->
<!--**********************************************************************************-->
<!-- modalbodyQRD -->
<div class="modal fade" id="modalEdicion_bodyQRD" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.nombreCorto'/> body QRD</h5>
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
 			      <div id="divCategoria">
						 <select class="custom-select form-control" id="seleccionCategoria"></select>
						 <div id="#divEdicionCategoria"></div>
 			      </div>
 			       <div id="divEdicionElementoCategoria"></div>
 			      <div id="divNuevaCategoria"></div>
 			      
 			      <br><h>
 			      <div id="divCarrusel">

 			      </div>
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionBodyQRD_btnSave">Guardar Cambios</button>
				<button type="button" class="btn btn-primary" id="modalEdicionBodyQRD_btnNuevaCategoria">Nueva Categoria</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionBodyQRD_btnSaveElemento">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalEdicion -->
<!-- ################################################################################################ -->
