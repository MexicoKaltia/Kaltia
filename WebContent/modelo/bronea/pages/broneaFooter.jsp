<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="es">
<body> 
<!-- ################################################################################################ -->
<!-- <div class="wrapper row4 aniview reallyslow" data-av-animation="rubberBand"> -->
<div class="wrapper row4 aniview reallyslow parallax" data-av-animation="rubberBand" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='footer.footerSeccion3.get(1)' />');">
  <footer id="footer" class="hoc clear"> 
    <div class="one_half first footerSeccionUbicacion">
      	<h6 class="heading"><s:property value='footer.footerSeccionUbicacion.get(0)' /></h6>
		  <p class="btmspace-30"><s:property value='footer.footerSeccionUbicacion.get(1)' /></p>
		  <ul class="nospace linklist contact">
		  <li><i class="fa fa-map-marker"></i><address><s:property value='footer.footerSeccionUbicacion.get(2)' /></address></li>
		 <li><i class="fa fa-phone"></i><s:property value='footer.footerSeccionUbicacion.get(3)' /></li>
		 <li><i class="fa fa-envelope-o"></i><s:property value='footer.footerSeccionUbicacion.get(4)' /></li>
<%--           <li><iframe src="<s:property value='footer.footerSeccionUbicacion.get(4)'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></li> --%>
              <li id="mapa"></li>
        </ul>
        <input  type="hidden" value="<s:property value='footer.footerSeccionUbicacion.get(5)'/>" id="valorMapa">    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter footerSeccionRedes">
      <h6 class="heading"><s:property value='footer.footerSeccionRedes.get(0)' /></h6>
      <ul class="nospace linklist">
	      <lo><a href="<s:property value='footer.footerSeccionRedes.get(1)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-facebook" ></i></a></lo>
	      <lo><a href="<s:property value='footer.footerSeccionRedes.get(2)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-twitter" ></i></a></lo>
	      <lo><a href="<s:property value='footer.footerSeccionRedes.get(3)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-youtube" ></i></a></lo>
	      <lo><a href="<s:property value='footer.footerSeccionRedes.get(4)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-linkedin" ></i></a></lo>
	      <lo><a href="<s:property value='footer.footerSeccionRedes.get(5)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-google-plus" ></i></a></lo>
<%--         <s:subset start="1" source ="footer.footerSeccionRedes"> --%>
<%--         <s:iterator> --%>
<%-- <%--identificar Secciones --%>
<%--            		<li><a href="<s:property value='identidadVO.idAction'/>/<s:property/>"><s:property/></a></li> --%> 
<%--            		<li><a href="#seccion4"><s:property/></a></li> --%>
<%--          </s:iterator> --%>
<%--          </s:subset> --%>
        
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter footerSeccion3">
      <h6 class="heading"><s:property value='footer.footerSeccion3.get(0)' /></h6>
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
      
<%--         <s:subset start="1" source ="footer.footerSeccion3"> --%>
<%--         <s:iterator> --%>
<%--           		<li><a href="<s:property value='identidadVO.idAction'/>/<s:property/>"><s:property/></a></li> --%>
<%--          </s:iterator> --%>
<%--          </s:subset> --%>
        
      </ul>
    </div>
  </footer>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <p class="fl_left"><a href="#"><s:property value='footer.footerSeccion4.get(0)' /><s:property value='identidadVO.nombreCorto'/></a></p>
    <p class="fl_right"><a href="http://www.kaltiaservicios.com/contenidos" target="_blank"><s:property value='footer.footerSeccion4.get(1)' /></a></p>
  </div>
</div>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- ################################################################################################ -->

</body>
</html>