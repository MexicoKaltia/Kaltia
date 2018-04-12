<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<body> 
<div class="wrapper row4 bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='footer.footerLista1.get(0)'/>');">
  <footer id="footer" class="hoc clear"> 
    <div class="one_quarter first">
      <h6 class="heading"><s:property value='footer.footerLista1.get(1)' /></h6>
      <p><s:property value='footer.footerLista1.get(2)' /></p>
      <p><s:property value='footer.footerLista1.get(3)' /></p>
    </div>
        <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="heading"><s:property value='footer.footerLista2.get(0)' /></h6>
      <nav>
        <ul class="nospace">
          <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#"><s:property value='footer.footerLista2.get(1)' /></a></li>
          <li><a href="#"><s:property value='footer.footerLista2.get(2)' /></a></li>
          <li><a href="#"><s:property value='footer.footerLista2.get(3)' /></a></li>
        </ul>
      </nav>
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
      </ul>
    </div>
        <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="heading"><s:property value='footer.footerLista3.get(0)' /></h6>
      <article>
        <h2 class="nospace font-x1"><a href="#"><s:property value='footer.footerLista3.get(1)' /></a></h2>
        <time class="font-xs" datetime="<s:property value='footer.footerLista3.get(1)' />"><s:property value='footer.footerLista3.get(1)' /></time>
        <p><s:property value='footer.footerLista3.get(3)' /></p>
      </article>
    </div>
        <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="heading">Ubicacion</h6>
      <ul class="nospace linklist">
        <li><a href="#"><iframe src="<s:property value="footer.footerVarios"/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></a></li>
      </ul>
    </div>
  </footer>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <p class="fl_left"><a href="#"><s:property value='footer.footerLista4.get(0)' /><s:property value="footer.idEmpresa"/></a></p>
    <p class="fl_right"><a href="kaltia.xyz"><s:property value='footer.footerLista4.get(1)' /></a></p>
  </div>
</div>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- ################################################################################################ -->

</body>
</html>