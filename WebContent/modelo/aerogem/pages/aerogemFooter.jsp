<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="es">
<body>
<!-- ################################################################################################ -->
<div class="wrapper row4 bgded overlay parallax" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='footer.FooterSeccion3.get(1)' />');">
<a id="seccion6"></a>
  <footer id="footer" class="hoc clear"> 
    <div class="one_quarter first footerSeccion1">
      <h6 class="heading"><s:property value='footer.footerSeccion1.get(0)' /></h6>
      <ul class="nospace linklist">
	      <lo><a href="<s:property value='footer.footerSeccion1.get(1)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-facebook" ></i></a></lo>
	      <lo><a href="<s:property value='footer.footerSeccion1.get(2)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-twitter" ></i></a></lo>
	      <lo><a href="<s:property value='footer.footerSeccion1.get(3)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-youtube" ></i></a></lo>
	      <lo><a href="<s:property value='footer.footerSeccion1.get(4)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-linkedin" ></i></a></lo>
	      <lo><a href="<s:property value='footer.footerSeccion1.get(5)' />" target="_blank"><i class="btmspace-30 fa fa-4x fa-google-plus" ></i></a></lo>
<%--         <s:subset start="1" source ="footer.footerSeccion1"> --%>
<%--         <s:iterator> --%>
<%-- <%--identificar Secciones --%>
<%--            		<li><a href="<s:property value='identidadVO.idAction'/>/<s:property/>"><s:property/></a></li> --%> 
<%--            		<li><a href="#seccion4"><s:property/></a></li> --%>
<%--          </s:iterator> --%>
<%--          </s:subset> --%>
        
      </ul>
      <br><br>
      <iframe src="<s:property value='footer.footerSeccionUbicacion.get(5)'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
    <!-- ################################################################################################ -->
	<div class="one_quarter footerSeccionUbicacion">
      	<h6 class="heading"><s:property value='footer.footerSeccionUbicacion.get(0)' /></h6>
		  <p class="btmspace-30"><s:property value='footer.footerSeccionUbicacion.get(1)' /></p>
		  <ul class="nospace linklist contact">
		  <li><i class="fa fa-map-marker"></i>
		  <address>
		    <s:property value='footer.footerSeccionUbicacion.get(2)' />
		 </address>
		 </li>
		 <li><i class="fa fa-phone"></i><s:property value='footer.footerSeccionUbicacion.get(3)' /></li>
		 <li><i class="fa fa-envelope-o"></i><s:property value='footer.footerSeccionUbicacion.get(4)' /></li>
		 
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
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter footerSeccionArray1">
      <h6 class="heading"></i><s:property value='footer.footerSeccionArray1.get(0).objetoVO.get(0)' /></h6>
      <ul class="nospace linklist">
      <s:subset start="1" source ="footer.footerSeccionArray1">
        <s:iterator var="footerSeccionArray1">
        <li>
          <article>
            <h6 class="nospace font-x1"><a href="#"><s:property value='#footerSeccionArray1.objetoVO.get(0)' /></a></h6>
            <time class="font-xs block btmspace-10" datetime="2045-04-06"><s:property value='#footerSeccionArray1.objetoVO.get(1)' /></time>
            <p class="nospace"><s:property value='#footerSeccionArray1.objetoVO.get(2)' />&hellip;</p>
          </article>
        </li>
        </s:iterator>
        </s:subset>
      </ul>
    </div>
  </footer>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <p class="fl_left"><a href="#"><s:property value='footer.footerSeccion4.get(0)' /><s:property value="footer.idEmpresa"/></a></p>
    <p class="fl_right"><a href="kaltia.xyz"><s:property value='footer.footerSeccion4.get(1)' /></a></p>
  </div>
</div>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- ################################################################################################ -->
</body>
</html>