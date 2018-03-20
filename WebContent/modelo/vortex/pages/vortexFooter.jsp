<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row4">
  <footer id="footer" class="clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
      <h6 class="title"><s:property value="footer.footerLista1.get(0)"/></h6>
      <address class="push30">
      <s:property value="identidad.idEmpresa"/><br>
      <s:property value="footer.footerLista1.get(1)"/><br>
      <s:property value="footer.footerLista1.get(2)"/><br>
      <s:property value="footer.footerLista1.get(3)"/>
      </address>
      <ul class="nospace">
        <li class="push10"><span class="icon-time"></span><s:property value="footer.footerLista1.get(4)"/></li>
        <li class="push10"><span class="icon-phone"></span><s:property value="footer.footerLista1.get(5)"/></li>
        <li><span class="icon-envelope-alt"></span><s:property value="footer.footerLista1.get(6)"/></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_third">
      <h6 class="title"><s:property value="footer.footerSeccionArray1.get(0).objetoVO.get(0)"/></h6>
      <ul class="nospace clear">
        <li class="clear push30">
        <s:subset source="footer.footerSeccionArray1" start="1">
        <s:iterator var="footerSeccionArray1">
          <div class="imgl"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#footerSeccionArray1.objetoVO.get(0)'/>" alt=""></div>
          <p class="nospace push15"><s:property value='#footerSeccionArray1.objetoVO.get(2)'/></p>
          <p class="nospace"><a href="<s:property value='#footerSeccionArray1.objetoVO.get(1)'/>"><s:property value='#footerSeccionArray1.objetoVO.get(3)'/> &raquo;</a></p>
        </li>
        </s:iterator>
        </s:subset>
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_third">
      <h6 class="title">Lorem ipsum dolor</h6>
      <ul class="nospace clear ftgal">
      <s:iterator value="footer.footerSeccionArray2" var="footerSeccionArray2">
        <li class="<s:property value='#footerSeccionArray2.objetoVO.get(0)'/>"><a href="<s:property value='#footerSeccionArray2.objetoVO.get(1)'/>">
        <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#footerSeccionArray2.objetoVO.get(2)'/>" alt=""></a></li>
        </s:iterator>
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
</body>
</html>