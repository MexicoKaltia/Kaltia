<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- modalEdicion BRONEA -->
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
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
						        <form>
			        <div id="carouselExampleIndicators1" class="carousel slide" data-interval="false">
						  <div class="carousel-inner container">
						  		<script type="text/javascript">var contaObjetoHeaderSeccion1 = <s:property value='0'/></script>
       						    <s:set var="conta" value="0" />
								<s:iterator value='header.headerSeccion1' var="menu2Value">	
						  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-sm-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-sm-12 text-center">
								</s:else>
										<li>
											
									          <div class="form-group row">
									            <span class="col-sm-3 col-form-label text-right colorLabel">Titulo</span>
									            <div class="col-sm-7">
									              <input type="text" class="form-control" id="tituloObjetoHS1<s:property value='#conta'/>" value="<s:property value='#menu2Value.substring(0,#menu2Value.indexOf("."))' />" required />
									            </div>
									          </div>
									          <div class="form-group row">
									            <span class="col-sm-3 col-form-label text-right colorLabel">Referencia</span>
									            <div class="col-sm-7">
									              <select class="custom-select form-control" id="seleccionObjetoHS1<s:property value='#conta'/>">
									              <!-- <option value="<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>" selected disabled><s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/></option> -->
									              <!-- <option selected>Selecciona una Opcion del Menú con los Modulos Activos</option> -->
									              <option value="<s:property value='body.BodySeccion1.get(3)'/>" selected><s:property value='body.BodySeccion1.get(3)'/></option>
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
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
				<form>
				    <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-phone"></i> Telefono</span>
			          <div class="col-sm-8">
						<input type="number" class="form-control" id="telefonoHS2" value="<s:property value='header.headerSeccion2.get(0)' />" required/> 
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-envelope-o"></i> Correo</span>
			          <div class="col-sm-8">
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
<div class="modal fade" id="modalEdicion_headerSeccionArray5Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
				    <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo Pagina</span>
			          <div class="col-sm-7">
						<input type="text" class="form-control" id="tituloHSA5" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(0)' />"/> 
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Icono</span>
			          <div class="col-sm-7">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(1)' />" alt="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(1)' />">
<!-- 	    				<form id="upload-file-form"> -->
							<form id="faviconHSA5Form">
							<hiden class="faviconHSA5Form"></hiden>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="faviconHSA5"  type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(1)' />"/>
		    			</form>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Logotipo</span>
			          <div class="col-sm-7">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)' />" alt="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)' />">
	    				<form id="logoHSA5Form">
							<hiden class="logoHSA5Form"></hiden>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="logoHSA5" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)' />"/>
		    			</form>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Imagen Fondo</span>
			          <div class="col-sm-7">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(3)' />" alt="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(3)' />">
	    				<form id="fondoHeaderHSA5Form">
								<hiden class="fondoHeaderHSA5Form"></hiden>
							<label for="upload-file-input">Actualiza imagen:</label> 
							<input id="fondoHeaderHSA5" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(3)' />"/>
		    			</form>

			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo Secciones Separar por | </span>
 					  <div class="col-sm-7">				
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
<div class="modal fade" id="modalEdicion_headerSeccion4Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
				<div class="form-group row">
  			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Subtitulo</span>
  			          <div class="col-sm-7">
  						<input type="text" class="form-control" id="subtituloHS4" value="<s:property value='header.headerSeccion4.get(0)'/>"/> 
  			          </div>
  			    </div>
  			    <div class="form-group row">
  			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo</span>
  			          <div class="col-sm-7">
  						<input type="text" class="form-control" id="tituloHS4" value="<s:property value='header.headerSeccion4.get(1)'/>"/> 
  			          </div>
  			    </div>
  			    <div class="form-group row">
  			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Descripcion</span>
  			          <div class="col-sm-7">
  						<textarea class='form-control' id="descripcionHS4" rows="5"><s:property value='header.headerSeccion4.get(2)'/></textarea> 
  			          </div>
  			    </div>
  			    <div class="form-group row">
  			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton 1</span>
  			          <div class="col-sm-7">
  						<input type="text" class="form-control" id="boton1HS4" value="<s:property value='header.headerSeccion4.get(4)'/>"/>
  						<%-- Identificar Secciones <a class="btn inverse" href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(3)'/>"><s:property value='header.headerSeccion4.get(4)'/></a></li> --%>
            			<select class="custom-select form-control" id="seleccion1HS4">
<%--               			  <option value="<s:property value='header.headerSeccion4.get(3)'/>" selected disabled><s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/></option> --%>
						  <option value="<s:property value='header.headerSeccion4.get(3)'/>" selected><s:property value='header.headerSeccion4.get(3)'/></option>
 						  <!-- <option selected>Selecciona una Opcion del Menú con los Modulos Activos</option> -->
              				<s:iterator value='identidadVO.moduloNombre'>
							  	<option value='<s:property/>'><s:property/></option>
							</s:iterator>              		   
						 </select> 
  			          </div>
  			    </div>
  			    <div class="form-group row">
  			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Boton 2</span>
  			          <div class="col-sm-7">
  						<input type="text" class="form-control" id="boton2HS4" value="<s:property value='header.headerSeccion4.get(6)'/>"/>
						<select class="custom-select form-control" id="seleccion2HS4">
						<option value="<s:property value='header.headerSeccion4.get(5)'/>" selected><s:property value='header.headerSeccion4.get(5)'/></option>
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
<div class="modal fade" id="modalEdicion_bodySeccionArray1Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
		    <!-- main body -->
			<div class="modal-body">
			    	<div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Titulo Seccion</span>
			          <div class="col-sm-7">
						<input type="text" class="form-control" id="tituloBSA1" value=<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /> />
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Subtitulo Seccion</span>
			          <div class="col-sm-7">
						<input type="text" class="form-control" id="subTituloBSA1" value="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)'/>" />
			          </div>
			        </div>
		      
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Descripcion 1</span>
			          <div class="col-sm-7">
						<textarea class='form-control' class="form-control" id="descripcion1BSA1"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' /></textarea>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Descripcion 2</span>
			          <div class="col-sm-7">
						<textarea class='form-control' class="form-control" id="descripcion2BSA1"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(3)' /></textarea>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-terminal"></i>Imagen</span>
			          <div class="col-sm-7">
				      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />" alt="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />">
						<form id="imagenBSA1Form">
							<hiden class="imagenBSA1Form"></hiden>
							<label for="imagenBSA1">Actualiza imagen:</label> 
							<input id="imagenBSA1" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)'/>"/>
		    			</form>
			          </div>
			        </div>
			        
			        			        <!-- carrusel -->
			        <div id="carouselExampleIndicators2" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray1" start="1">  
    							<s:iterator  var ="bodySeccionArray1">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-sm-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-sm-12 text-center">
								</s:else>
								<section>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Icono</span>
						          <div class="col-sm-7">
									<a data-toggle="modal" href="#modalIconoObjeto" class="iconoForm">
									<i class="btmspace-30 fa fa-4x <s:property value='#bodySeccionArray1.objetoVO.get(2)' />" id="iconoObjetoBSA1<s:property value='#conta'/>"></i></a>
									<label for="iconoObjetoBSA1" ><s:property value='#bodySeccionArray1.objetoVO.get(2)' /></label> 
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-sm-7">
									<input type="text" class="form-control" id="tituloObjetoBSA1<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray1.objetoVO.get(3)' />"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-sm-7">
									<textarea class='form-control' id="descripcionObjetoBSA1<s:property value='#conta'/>"><s:property value='#bodySeccionArray1.objetoVO.get(4)' /></textarea>
						          </div>
						        </div>
						        </section>
						    	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray1 = <s:property value='#conta'/></script>
				      	</div>
						  <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
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
<div class="modal fade" id="modalEdicion_bodySeccionArray2Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
 						    <!-- main body -->
			<div class="modal-body">
  			        <!-- carrusel -->
			        <div id="carouselbodySeccionArray2Bronea" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray2" start="0">  
    							<s:iterator  var ="bodySeccionArray2">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-sm-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-sm-12 text-center">
								</s:else>
								<section>
						  	    <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Icono</span>
						          <div class="col-sm-7">
									<a data-toggle="modal" href="#modalIconoObjeto" class="iconoForm">
									<i class="btmspace-30 fa fa-4x <s:property value='#bodySeccionArray2.objetoVO.get(1)' />" id="iconoObjetoBSA2<s:property value='#conta'/>"></i></a>
									<label for="iconoObjetoBSA2" ><s:property value='#bodySeccionArray2.objetoVO.get(1)' /></label>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-sm-7">
									<input type="text" class='form-control' id="tituloObjetoBSA2<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray2.objetoVO.get(3)' />"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-sm-7">
									<textarea class='form-control' id="descripcionObjetoBSA2<s:property value='#conta'/>"><s:property value='#bodySeccionArray2.objetoVO.get(4)' /></textarea>
						          </div>
						        </div>
						        </section>
						   	</div>
								<s:set var="conta" value="#conta+1" />
				      			</s:iterator>
				      			</s:subset>
				      			<script type="text/javascript">var contaObjetoBodySeccionArray2 = <s:property value='#conta'/></script>
				      	</div>
				      	  <a class="carousel-control-prev" href="#carouselbodySeccionArray2Bronea" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselbodySeccionArray2Bronea" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						  <ol class="carousel-indicators">
						    <li data-target="#carouselbodySeccionArray2Bronea" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselbodySeccionArray2Bronea" data-slide-to="1"></li>
						    <li data-target="#carouselbodySeccionArray2Bronea" data-slide-to="2"></li>
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
<div class="modal fade" id="modalEdicion_bodySeccionArray3Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
			    	<div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Seccion</span>
			          <div class="col-sm-7">
						<input type="text" class='form-control' id="tituloBSA3" value="<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion</span>
			          <div class="col-sm-7">
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
    								<div class="carousel-item active col-sm-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-sm-12 text-center">
								</s:else>
								<section>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
						          <div class="col-sm-7">
							      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>?=v1" alt="<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>">
									<form id="imagenBSA3Form<s:property value='#conta'/>" class="imagenArrayForm">
										<hiden class="imagenBSA3Form<s:property value='#conta'/>"></hiden>
										<label for="imagenObjetoBSA3<s:property value='#conta'/>">Actualiza imagen:</label> 
										<input id="imagenObjetoBSA3<s:property value='#conta'/>" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>"/>
<%-- 										<script type="text/javascript">var contaImagenBodySeccionArray3 = <s:property value='#conta'/></script> --%>
					    			</form>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-sm-7">
									<input type="text" class='form-control' id="tituloObjetoBSA3<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray3.objetoVO.get(3)'/>"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-sm-7">
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
<!-- modalBodySeccion1 -->
<div class="modal fade" id="modalEdicion_bodySeccion1Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
				<div class="form-group row">
				  <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Seccion</span>
				  <div class="col-sm-7">
					<input type="text" class='form-control' id="tituloBS1" value="<s:property value='body.BodySeccion1.get(1)'/>"/>
				  </div>
				</div>
				<div class="form-group row">
				  <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Seccion</span>
				  <div class="col-sm-7">
					<textarea class='form-control' id="descripcionBS1" rows="5"><s:property value='body.BodySeccion1.get(2)'/></textarea>
				  </div>
				</div>
				<div class="form-group row">
				  <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Boton Seccion</span>
				  <div class="col-sm-7">
					<input type="text" class='form-control' id="botonBS1" value="<s:property value='body.BodySeccion1.get(4)'/>"/>
				  </div>
				</div>
				<div class="form-group row">
				  <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>SeleccionModulo</span>
				  <div class="col-sm-7">
					    <select class="custom-select form-control" id="seleccionBS1">
						  <option value="<s:property value='body.BodySeccion1.get(3)'/>" selected><s:property value='body.BodySeccion1.get(3)'/></option>		
              				<s:iterator value='identidadVO.moduloNombre'>
							  	<option value='<s:property/>'><s:property/></option>
							</s:iterator>              		   
	    				</select>
				  </div>
				</div>
				<div class="form-group row">
		         <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
		         <div class="col-sm-7">
			      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='body.BodySeccion1.get(0)'/>?=v1" alt="<s:property value='body.BodySeccion1.get(0)'/>">
					<form id="imagenBS1Form">
						<hiden class="imagenBS1Form"></hiden>
						<label for="imagenBS1">Actualiza imagen:</label> 
						<input id="imagenBS1" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='body.BodySeccion1.get(0)'/>"/>
					</form>
			      </div>
			    </div>
				
				
				
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
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> bodySeccionArray4</h5>
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
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Seccion</span>
			          <div class="col-sm-7">
						<input type="text" class='form-control' id="tituloBSA4" value="<s:property value='body.bodySeccionArray4.get(0).objetoVO.get(0)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion</span>
			          <div class="col-sm-7">
						<textarea class='form-control' id="descripcionBSA4"><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(1)' /></textarea>
			          </div>
			        </div>
			        			        <!-- carrusel -->
			        <div id="carousel_bodySeccionArray4" class="carousel slide" data-interval="false">
			        	<div class="carousel-inner container">
       						    <s:set var="conta" value="0" />
						        <s:subset source="body.bodySeccionArray4" start="1">  
    							<s:iterator  var ="bodySeccionArray4">			  
							  	<s:if test="#conta == 0">
    								<div class="carousel-item active col-sm-12 text-center">
								</s:if>
								<s:else>
   									<div class="carousel-item col-sm-12 text-center">
								</s:else>
								<section>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Imagen</span>
						          <div class="col-sm-7">
							      	<img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>?=v1" alt="<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>">
									<form id="imagenBSA4Form<s:property value='#conta'/>" class="imagenArrayForm">
										<hiden class="imagenBSA4Form<s:property value='#conta'/>"></hiden>
										<label for="imagenObjetoBSA4<s:property value='#conta'/>">Actualiza imagen:</label> 
										<input id="imagenObjetoBSA4<s:property value='#conta'/>" type="file" name="uploadfile" accept="image/jpeg" value="<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>"/>
					    			</form>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo Objeto</span>
						          <div class="col-sm-7">
									<input type="text" class='form-control' id="tituloObjetoBSA4<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray4.objetoVO.get(3)'/>"/>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Descripcion Objeto</span>
						          <div class="col-sm-7">
									<textarea class='form-control' id="descripcionObjetoBSA4<s:property value='#conta'/>"><s:property value='#bodySeccionArray4.objetoVO.get(4)'/></textarea>
						          </div>
						        </div>
						        <div class="form-group row">
						          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Boton Objeto</span>
						          <div class="col-sm-7">
									<input type="text" class='form-control' id="botonObjetoBSA4<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray4.objetoVO.get(5)'/>"/>
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
<!-- ################################################################################################ -->
<!--**********************************************************************************-->
<!-- modalFooterSeccion1 -->
<div class="modal fade" id="modalEdicion_footerSeccion1Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
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
			
			    	<div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo </span>
			          <div class="col-sm-7">
						<input type="text" class='form-control' id="tituloFS1" value="<s:property value='footer.footerSeccion1.get(0)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>sub Titulo </span>
			          <div class="col-sm-7">
						<input type="text" class='form-control' id="subtituloFS1" value="<s:property value='footer.footerSeccion1.get(1)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Domicilio</span>
			          <div class="col-sm-7">
						<input type="text" class='form-control' id="domicilioFS1" value="<s:property value='footer.footerSeccion1.get(2)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Telefono</span>
			          <div class="col-sm-7">
						</i><input type="text" class='form-control' id="telefonoFS1" value="<s:property value='footer.footerSeccion1.get(3)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Correo</span>
			          <div class="col-sm-7">
						<input type="text" class='form-control' id="correoFS1" value="<s:property value='footer.footerSeccion1.get(4)' />"/>
			          </div>
			        </div>
			        <div class="form-group row">
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Ubicacion</span>
			          <div class="col-sm-7">
						<input type="text" class='form-control' id="ubicacionFS1" value="<s:property value='footer.footerSeccion1.get(5)' />"/>
			          </div>
			        </div>
				  
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
<!-- modalFooterSeccion2 -->
<div class="modal fade" id="modalEdicion_footerSeccion2Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> footerSeccion2</h5>
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
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Redes Sociales</span>
			          <div class="col-sm-7">
						<input type="text" class="form-control" id="tituloFS2" value="<s:property value='footer.footerSeccion2.get(0)' />"/>
			          </div>
			        </div>
			        <br><br>
			        <div class="form-group row ">
				      <span class="col-sm-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-facebook" ></i></span>
				      <div class="col-sm-7">
				      <div class="input-group grupoRS">
						  <div class="input-group-prepend ">
						    <div class="input-group-text">
						      <input type="checkbox" id="facebookFS2">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccion2.get(1)' />" id="textFFS2" readonly>
						</div>
				      </div>
				    </div>
			        <div class="form-group row ">
				      <span class="col-sm-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-twitter" ></i></span>
				      <div class="col-sm-7">
						<div class="input-group grupoRS">
						  <div class="input-group-prepend">
						    <div class="input-group-text">
						      <input type="checkbox" id="twitterFS2">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccion2.get(2)' />" id="textTFS2" readonly>
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-sm-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-youtube" ></i></span>
				      <div class="col-sm-7">
				      <div class="input-group grupoRS">
						  <div class="input-group-prepend">
						    <div class="input-group-text">
						      <input type="checkbox" id="youtubeFS2">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccion2.get(3)' />" id="textYFS2" readonly>
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-sm-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-linkedin" ></i></span>
				      <div class="col-sm-7">
						<div class="input-group grupoRS">
						  <div class="input-group-prepend">
						    <div class="input-group-text">
						      <input type="checkbox" id="linkedinFS2">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccion2.get(4)' />" id="textLFS2" readonly>
						</div>
				      </div>
				    </div>
				    <div class="form-group row ">
				      <span class="col-sm-3 col-form-label text-right colorLabel"><i class="btmspace-30 fa fa-3x fa-google-plus" ></i></span>
				      <div class="col-sm-7">
						<div class="input-group grupoRS">
						  <div class="input-group-prepend">
						    <div class="input-group-text">
						      <input type="checkbox" id="googleFS2">
						    </div>
						  </div>
						  <input type="text" class="form-control" value="<s:property value='footer.footerSeccion2.get(5)' />" id="textGFS2" readonly>
						</div>
				      </div>
				    </div>		      
			        				  
			</div>
 			<!--**********************************************************************************-->
 			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal" id="modalEdicionBody_btnClose">Cerrar</button>
				<button type="submit" class="btn btn-primary" id="modalEdicionFooterSeccion2_btnSave">Guardar Cambios</button>
			</div>
		</div>
	</div>
</div>
<!-- fin modalFooterSeccion2 -->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!--**********************************************************************************-->
<!-- modalFooterSeccion3 -->
<div class="modal fade" id="modalEdicion_footerSeccion3Bronea" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content" style="background-image:url('http://kaltia-store.xyz/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle"><s:property value='identidadVO.empresa'/> footerSeccion2</h5>
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
			          <span class="col-sm-3 col-form-label text-right colorLabel"><i class="fa fa-terminal"></i>Titulo secciones</span>
			          <div class="col-sm-7">
						<input type="text" class="form-control" id="tituloFS3" value="<s:property value='footer.footerSeccion3.get(0)' />"/>
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
