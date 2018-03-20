<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body> 
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <div class="one_half first">
      <h6 class="heading"><s:property value='footer.footerLista1.get(0)' /></h6>
      <p class="btmspace-30"><s:property value='footer.footerLista1.get(1)' /></p>
      <ul class="nospace linklist contact">
        <li><i class="fa fa-map-marker"></i>
          <address>
          <s:property value='footer.footerLista1.get(2)' />
          </address>
        </li>
        <li><i class="fa fa-phone"></i><s:property value='footer.footerLista1.get(3)' /></li>
        <li><i class="fa fa-envelope-o"></i><s:property value='footer.footerLista1.get(4)' /></li>
        <iframe src="<s:property value='footer.footerVarios'/>" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading"><s:property value='footer.footerLista2.get(0)' /></h6>
      <ul class="nospace linklist">
        <s:subset start="1" source ="footer.footerLista2">
        <s:iterator>
          		<li><a href="<s:property value='identidadVO.idAction'/>/<s:property/>"><s:property/></a></li>
         </s:iterator>
         </s:subset>
        
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading"><s:property value='footer.footerLista3.get(0)' /></h6>
      <ul class="nospace linklist">
        <s:subset start="1" source ="footer.footerLista3">
        <s:iterator>
          		<li><a href="<s:property value='identidadVO.idAction'/>/<s:property/>"><s:property/></a></li>
         </s:iterator>
         </s:subset>
        
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