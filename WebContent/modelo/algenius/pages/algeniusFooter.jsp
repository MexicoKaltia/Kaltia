<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row4 aniview reallyslow" data-av-animation="zoomIn"  style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='footer.footerSecciones.get(0)'/>?v=1');">
  <footer id="footer" class="hoc clear"> 
    <div class="one_quarter first footerSeccionUbicacion">
      	<h6 class="heading"><s:property value='footer.footerSeccionUbicacion.get(0)' /></h6>
		  <p class="btmspace-30"><s:property value='footer.footerSeccionUbicacion.get(1)' /></p>
		  <ul class="nospace linklist contact">
		  <li><i class="fa fa-map-marker"></i> <s:property value='footer.footerSeccionUbicacion.get(2)' /></li>
		 <li><i class="fa fa-phone"></i> <s:property value='footer.footerSeccionUbicacion.get(3)' /></li>
		 <li><i class="fa fa-envelope-o"></i> <s:property value='footer.footerSeccionUbicacion.get(4)' /></li>
		 <iframe src="<s:property value='footer.footerSeccionUbicacion.get(5)'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
		</ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter footerSeccionRedes" id="footerSeccionRedes">
      <h6 class="heading"><s:property value='footer.footerSeccionRedes.get(0)' /></h6>
      <nav>
        <ul class="nospace">
          <li><a href="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>"><i class="fa fa-lg fa-home"></i></a></li>   
  		<s:iterator value='header.headerSeccion1' var="menu2Value">
			<li><a class="validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>">
				<s:property value='#menu2Value.substring(0,#menu2Value.indexOf("."))' />
				<%--    Identificando secciones
 			   	href="<s:property value='identidadVO.idAction'/>/<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>"> --%>
			</a></li>
		</s:iterator>        </ul>
      </nav>
      <ul class="faico clear">
        <li><a href="<s:property value='footer.footerSeccionRedes.get(1)' />" target="_blank"><i class="fa  fa-facebook" ></i></a></li>
	      <li><a href="<s:property value='footer.footerSeccionRedes.get(2)' />" target="_blank"><i class="fa  fa-twitter" ></i></a></li>
	      <li><a href="<s:property value='footer.footerSeccionRedes.get(3)' />" target="_blank"><i class="fa  fa-youtube" ></i></a></li>
	      <li><a href="<s:property value='footer.footerSeccionRedes.get(4)' />" target="_blank"><i class="fa  fa-linkedin" ></i></a></li>
	      <li><a href="<s:property value='footer.footerSeccionRedes.get(5)' />" target="_blank"><i class="fa  fa-google-plus" ></i></a></li>
      </ul>
    </div>
   
         
<%--         <s:subset start="1" source ="footer.footerSeccion2"> --%>
<%--         <s:iterator> --%>
<%-- <%--identificar Secciones --%>
<%--            		<li><a href="<s:property value='identidadVO.idAction'/>/<s:property/>"><s:property/></a></li> --%> 
<%--            		<li><a href="#seccion4"><s:property/></a></li> --%>
<%--          </s:iterator> --%>
<%--          </s:subset> --%>
    <!-- ################################################################################################ -->     
    <div class="one_quarter footerSeccion3" id="footerSeccion3">
      <h6 class="heading"><s:property value='footer.footerSeccion3.get(0)' /></h6>
      <article>
        <h2 class="nospace font-x1"><a href="<s:property value='footer.footerSeccion3.get(1)' />"><s:property value='footer.footerSeccion3.get(2)' /></a></h2>
        <time class="font-xs" datetime="2045-04-06"><s:property value='footer.footerSeccion3.get(3)' /></time>
        <p><s:property value='footer.footerSeccion3.get(4)' /> [&hellip;]</p>
      </article>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter footerSecciones" id="footerSecciones">
      <h6 class="heading"><s:property value='footer.footerSecciones.get(1)' /></h6>
      <ul class="nospace linklist">
          <s:set var="seccion" value="1" />
		     <s:subset source="header.headerSeccionArray5" start="1">  
    		 <s:iterator  var ="headerSeccionArray5">
    		 <s:iterator  value ="#headerSeccionArray5.objetoVO">
		     	 <li><a href="#seccion<s:property value="#seccion"/>"><s:property/></a></li>
		     <s:set var="seccion" value="#seccion+1" />
		     </s:iterator>
		     </s:iterator>
          	 </s:subset>       
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">
    <div id="copyright" class="hoc clear"> 
    <p class="fl_left"><a href="#"><s:property value='footer.footerSeccionFoot.get(0)' /><s:property value='identidadVO.nombreCorto'/></a></p>
    <p class="fl_right"><a href="kaltiaservicios.com/contenidos" target="_blank"><s:property value='footer.footerSeccionFoot.get(1)' /></a></p>
  </div>
</div>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- ################################################################################################ -->

</body>
</html>