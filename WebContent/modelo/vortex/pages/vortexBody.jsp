<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main id="container" class="clear"> 
    <div id="slider" class="push50"> 
      <s:iterator value="body.bodyTexto1">
      <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property/>" alt="">
      </s:iterator>
    </div>
  <!-- ############################################################################################################# -->
    <hr class="push50">
    <ul class="nospace clear">
    <s:iterator value="body.bodySeccionArray1" var="bodySeccionArray1">
      <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)'/>"><a href="<s:property value='#bodySeccionArray1.objetoVO.get(1)'/>"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray1.objetoVO.get(2)'/>" alt=""></a>
        <div class="pad30">
          <h2 class="uppercase nospace push15"><s:property value='#bodySeccionArray1.objetoVO.get(3)'/></h2>
          <p class="nospace"><s:property value='#bodySeccionArray1.objetoVO.get(4)'/>aa<a href="<s:property value='#bodySeccionArray1.objetoVO.get(1)'/>"><span class="icon-arrow-right"></span></a></p>
        </div>
      </li>
      </s:iterator>
    </ul>
    <!-- / container body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ --> 
</body>
</html>