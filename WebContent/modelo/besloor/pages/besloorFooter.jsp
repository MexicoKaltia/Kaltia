<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body>	
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <div class="center btmspace-50">
      <h6 class="heading"><s:property value='identidadVO.nombreCorto'/></h6>
      <nav>
        <ul class="nospace inline pushright uppercase">
        <li><a href="#"><i class="fas fa-lg fa-home"></i></a></li>
         <s:set var="seccion" value="1" />
				           <s:subset source="header.headerSeccionArray5" start="1">  
		    			<s:iterator  var ="headerSeccionArray5">
		    			<s:iterator  value ="#headerSeccionArray5.objetoVO">
					       	<li class="nav-item" ><a class="nav-link" style="color:white" href="#seccion<s:property value="#seccion"/>"><s:property/></a></li>
				       	 <s:set var="seccion" value="#seccion+1" />
				       	 </s:iterator>
				           </s:iterator>
		           		</s:subset>
        </ul>
      </nav>
    </div>
    <hr class="btmspace-50">
    <!-- ################################################################################################ -->
    <div class="group">
      <div class="one_quarter first footerSeccionUbicacion">
        <h6 class="heading"><s:property value='footer.footerSeccionUbicacion.get(0)' /></h6>
        <ul class="nospace btmspace-30 linklist contact">
          <li><i class="fas fa-map-marker-alt"></i>
            <address>
            <s:property value='footer.footerSeccionUbicacion.get(1)' />
            </address>
          </li>
          <li><i class="fas fa-phone"></i><s:property value='footer.footerSeccionUbicacion.get(2)' /></li>
          <li><i class="far fa-envelope"></i><s:property value='footer.footerSeccionUbicacion.get(3)' /></li>
          <li><iframe src="<s:property value='footer.footerSeccionUbicacion.get(4)'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></li>
        </ul>
        
      </div>
      <!-- ################################################################################################ -->
      <div class="one_quarter">
        <h6 class="heading"><s:property value='footer.footerSeccion1.get(1)' /></h6>
        <p class="nospace btmspace-15"><s:property value='footer.footerSeccion1.get(2)' /></p>
        <form method="post" action="<s:property value='footer.footerSeccion1.get(0)' />">
          <fieldset>
            <legend>Newsletter:</legend>
            <input class="btmspace-15" type="text" value="" placeholder="Nombre" id="footerNombre">
            <input class="btmspace-15" type="text" value="" placeholder="Email" id="footerEmail">
            <button type="submit" value="submit">Suscribirse</button>
          </fieldset>
        </form>
      </div>
      <!-- ################################################################################################ -->
      <div class="one_quarter">
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
      <!-- ################################################################################################ -->
        <div class="one_quarter footerSeccionRedes">
	      <h6 class="heading"><s:property value='footer.footerSeccionRedes.get(0)' /></h6>
	      <ul class="nospace linklist">
		      <lo><a href="<s:property value='footer.footerSeccionRedes.get(1)' />" target="_blank"><i class="btmspace-30 fab fa-4x fa-facebook" ></i></a></lo>
		      <lo><a href="<s:property value='footer.footerSeccionRedes.get(2)' />" target="_blank"><i class="btmspace-30 fab fa-4x fa-twitter" ></i></a></lo>
		      <lo><a href="<s:property value='footer.footerSeccionRedes.get(3)' />" target="_blank"><i class="btmspace-30 fab fa-4x fa-youtube" ></i></a></lo>
		      <lo><a href="<s:property value='footer.footerSeccionRedes.get(4)' />" target="_blank"><i class="btmspace-30 fab fa-4x fa-linkedin" ></i></a></lo>
		      <lo><a href="<s:property value='footer.footerSeccionRedes.get(5)' />" target="_blank"><i class="btmspace-30 fab fa-4x fa-google-plus" ></i></a></lo>
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
  </footer>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <p class="fl_left"><a href="#"><s:property value='footer.footerSeccion4.get(0)' /><s:property value="footer.idEmpresa"/></a></p>
    <p class="fl_right"><a href="http://www.kaltia.xyz"><s:property value='footer.footerSeccion4.get(1)' /></a></p>
  </div>
</div>

<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- ################################################################################################ -->
</body>
</html>

