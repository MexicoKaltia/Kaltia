<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body id="top">
<div class="wrapper row3 bodySeccionArray1">
<a  id="seccion2"></a>
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /></h6>
      <p><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></p>
    </div>
    <div class="group">
      <div class="one_half first">
        <p><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' /></p>
        <p class="btmspace-50"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(3)' /></p>
        <ul class="nospace group">
        <s:subset source="body.bodySeccionArray1" start="1">  
    	<s:iterator  var ="bodySeccionArray1">
          <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
            <article><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />">
            <i class="<s:property value='#bodySeccionArray1.objetoVO.get(2)' />"></i></a>
              <h6 class="heading font-x1"><s:property value='#bodySeccionArray1.objetoVO.get(3)' /></h6>
              <p><s:property value='#bodySeccionArray1.objetoVO.get(4)' />&hellip;</p>
            </article>
          </li>
          </s:iterator>
          </s:subset>
        </ul>
      </div>
      <div class="one_half">
      <img class="inspace-10 borderedbox" src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />" alt="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />">
      </div>
    </div>

    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row2 bodySeccionArray2">
<a  id="seccion3"></a>
  <div class="hoc container clear"> 
    <ul class="nospace group cta">
      <s:iterator  var="bodySeccionArray2" value ="body.bodySeccionArray2">
      <li class="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />">
        <article><i class="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"></i>
          <h6 class="heading font-x1"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray2.objetoVO.get(2)' />"><s:property value='#bodySeccionArray2.objetoVO.get(3)' /></a></h6>
          <p><s:property value='#bodySeccionArray2.objetoVO.get(4)' /></p>
        </article>
      </li>
      </s:iterator>
    </ul>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3 bodySeccionArray3">
<a  id="seccion4"></a>
  <div class="hoc container clear"> 
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' /></h6>
      <p><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace group services">
      <!-- inicio Categorias-->
     <s:subset start="1" source ="body.bodySeccionArray3">
      <s:iterator var="bodySeccionArray3">
       	<li class="<s:property value='#bodySeccionArray3.objetoVO.get(0)'/>">
        	<article class="bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>?=v1');">
<%-- identificar secciones
          		<h6 class="heading font-x1"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(2)'/>"> --%>
          		<h6 class="heading font-x1"><a href="<s:property value='#bodySeccionArray3.objetoVO.get(2)'/>">
          		<s:property value='#bodySeccionArray3.objetoVO.get(3)'/></a></h6>
          		<p><s:property value='#bodySeccionArray3.objetoVO.get(4)'/></p>
        	</article>
      	</li>
      </s:iterator>
      </s:subset>
      <!-- fin Categorias -->
    </ul>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.BodySeccion1.get(0)'/>');">
<a  id="seccion5"></a>
  <article class="hoc container clear center"> 
    <div class="sectiontitle" style="margin-bottom:30px;">
      <h6 class="heading"><s:property value='body.BodySeccion1.get(1)'/></h6>
      <p><s:property value='body.BodySeccion1.get(2)'/></p>
    </div>
    <p><a class="btn medium" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.BodySeccion1.get(3)'/>"><s:property value='body.BodySeccion1.get(4)'/></a></p>
  </article>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
<a  id="seccion6"></a>
  <section class="hoc container clear"> 
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(0)' /></h6>
      <p><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(1)' /></p>
    </div>
    <div class="group">
      <s:subset start="1" source ="body.bodySeccionArray4">
      <s:iterator var="bodySeccionArray4">
       	<article class="<s:property value='#bodySeccionArray4.objetoVO.get(0)'/>">
<%-- identificar Secciones
       	<a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>"> --%>
       	<a href="<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>">
       	<img class="btmspace-30" src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray4.objetoVO.get(2)'/>" alt="<s:property value='#bodySeccionArray4.objetoVO.get(2)'/>"></a>
        	<h3 class="heading"><s:property value='#bodySeccionArray4.objetoVO.get(3)'/></h3>
        	<p><s:property value='#bodySeccionArray4.objetoVO.get(4)'/>&hellip;</p>
        <footer class="nospace"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>">
        <s:property value='#bodySeccionArray4.objetoVO.get(5)'/> &raquo;</a></footer>
      </article>
      </s:iterator>
      </s:subset>
    </div>
  </section>
</div>
</body>

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
 
<!-- modalBodySeccionArray1 -->
<div class="modal fade" id="modalEdicion_bodySeccionArray1" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle">Edicion Seccion</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
 			<!--**********************************************************************************-->
 			<main class="hoc container clear"> 
			    <!-- main body -->
			    <div class="sectiontitle">
			      <h6 class="heading"><input type="text" id="titulo" value=<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /> /></h6>
			      <p><input type="text" id="subTitulo" value="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)'/>" /></p>
			    </div>
			    <div class="group">
			      <div class="one_half first">
			        <p><textarea class='form-control' id="descripcion1"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' /></textarea></p>
			        <p class="btmspace-50"><textarea class='form-control' id="descripcion2"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(3)' /></textarea></p>
			        <ul class="nospace group">
			        <s:set var="conta" value="0" />
			        <s:subset source="body.bodySeccionArray1" start="1">  
			    	<s:iterator  var ="bodySeccionArray1">
			          <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
			            <article><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />">
			            <i class="<s:property value='#bodySeccionArray1.objetoVO.get(2)' />"></i></a>
			              <h6 class="heading font-x1"><input type="text" id="tituloObjeto<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray1.objetoVO.get(3)' />"/></h6>
			              <p><textarea class='form-control' id="descripcionObjeto<s:property value='#conta'/>"><s:property value='#bodySeccionArray1.objetoVO.get(4)' /></textarea></p>
			            </article>
			          </li>
			          <s:set var="conta" value="#conta+1" />
			          <s:property value='#conta'/>
			          </s:iterator>
			          </s:subset>
			        </ul>
			      </div>
			      <div class="one_half">
			      <img class="inspace-10 borderedbox" src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />" alt="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />">
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
<div class="modal fade" id="modalEdicion_bodySeccionArray2" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle">Edicion Seccion</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
 			<!--**********************************************************************************-->
			  <div class="hoc container clear"> 
			    <ul class="nospace group cta">
			           <s:set var="conta" value="0" />
			      <s:iterator  var="bodySeccionArray2" value ="body.bodySeccionArray2">
			      <li class="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />">
			        <article><i class="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"></i>
			          <h6 class="heading font-x1"><input type="text" id="tituloObjeto<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray2.objetoVO.get(3)' />"/></h6>
			          <p><textarea class='form-control' id="descripcionObjeto<s:property value='#conta'/>"><s:property value='#bodySeccionArray1.objetoVO.get(4)' /></textarea></p>
			        </article>
			      </li>
			             <s:set var="conta" value="#conta+1" />
			      </s:iterator>
			    </ul>
			  </div>
			<%--   id="tituloObjeto<s:property value='#conta'/>" --%>
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
<div class="modal fade" id="modalEdicion_bodySeccionArray3" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-fluid" role="document">
		<div class="modal-content"
			style="background-image:url('<%=request.getContextPath()%>/layout/images/imagen.jpg');">
			<div class="modal-header">
				<h5 class="modal-title" id="modalTitle">Edicion Seccion</h5>
				<br>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close" id="modalEdicionBody_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
 			<!--**********************************************************************************-->
 			<div class="wrapper row3">
				  <div class="hoc container clear"> 
				    <div class="sectiontitle">
				      <h6 class="heading"><input type="text" id="titulo" value="<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' />"/></h6>
				      <p><textarea class='form-control' id="descripcion"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></textarea></p>
				    </div>
				    <ul class="nospace group services elemento">
				     <!-- inicio Categorias-->
				     <s:set var="conta" value="0" />
				     <s:subset start="1" source ="body.bodySeccionArray3">
				     <s:iterator var="bodySeccionArray3">
				       	<li class="<s:property value='#bodySeccionArray3.objetoVO.get(0)'/>" id="idObjeto<s:property value='#conta'/>">
				        	<a href="UNA FUNCION JS PARA CARGAR IMAGEN"></a>
 				        	<article class="bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>?=v1');"> 
				<%-- 		identificar secciones
							<%--<h6 class="heading font-x1"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(2)'/>"> --%> 
 				          		<h6 class="heading font-x1"> 
 				          		<input type="text" id="tituloObjeto<s:property value='#conta'/>" value="<s:property value='#bodySeccionArray3.objetoVO.get(3)'/>"/></h6> 
 				          		<p><textarea class='form-control' id="descripcionObjeto<s:property value='#conta'/>"><s:property value='#bodySeccionArray3.objetoVO.get(4)'/></textarea></p> 
 				        	</article> 
				      	</li>
				      <s:set var="conta" value="#conta+1" />
				      </s:iterator>
				      </s:subset>
				      <!-- fin Categorias -->
				      <button type="button" class="btn btn-secondary" id="boton">Siguiente</button>
				    </ul>
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




</html>