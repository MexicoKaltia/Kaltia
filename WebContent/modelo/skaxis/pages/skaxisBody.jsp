<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <article class="group btmspace-80">
      <div class="two_third first"><img class="borderedbox inspace-10" src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodyTexto1.get(0)'/>" alt="<s:property value='identidadVO.idAction'/>">
      </div>
      <div class="one_third">
        <h6 class="heading"><s:property value='body.bodyTexto1.get(1)'/></h6>
        <ul class="nospace meta">
          <li><i class="fa fa-user"></i> <a href="#"><s:property value='body.bodyTexto1.get(2)'/></a></li>
          <li><i class="fa fa-tag"></i> <a href="#"><s:property value='body.bodyTexto1.get(3)'/></a></li>
        </ul>
        <p><s:property value='body.bodyTexto1.get(4)'/></p>
        <p class="btmspace-30"><s:property value='body.bodyTexto1.get(5)'/></p>
        <footer class="nospace"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodyTexto1.get(6)'/>"><s:property value='body.bodyTexto1.get(7)'/> &raquo;</a></footer>
      </div>
    </article>
    <!-- ################################################################################################ -->
    <hr class="btmspace-80">
    <ul class="nospace group overview">
    <s:iterator value='body.bodySeccionArray1' var='bodySeccionArray1'>
      <li class="one_third">
        <article><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
        <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />" alt=""></a>
          <h6 class="heading"><s:property value='#bodySeccionArray1.objetoVO.get(2)' /></h6>
          <ul class="nospace meta">
            <li><i class="fa fa-user"></i> <a href="#"><s:property value='#bodySeccionArray1.objetoVO.get(3)' /></a></li>
            <li><i class="fa fa-tag"></i> <a href="#"><s:property value='#bodySeccionArray1.objetoVO.get(4)' /></a></li>
          </ul>
          <p><s:property value='#bodySeccionArray1.objetoVO.get(5)' /></p>
          <footer class="nospace"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
          <s:property value='#bodySeccionArray1.objetoVO.get(6)' /> &raquo;</a></footer>
        </article>
      </li>
     </s:iterator>
    </ul>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay coloured" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodyTexto2.get(0)'/>');">
  <article class="hoc cta clear"> 
    <h6 class="three_quarter first"><s:property value='body.bodyTexto2.get(1)'/></h6>
    <footer class="one_quarter"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodyTexto2.get(2)'/>">
    <s:property value='body.bodyTexto2.get(3)'/> &raquo;</a></footer>
  </article>
</div>
<!-- ################################################################################################ -->
</body>
</html>