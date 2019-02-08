<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <article class="group btmspace-80">
      <div class="one_half first"><img class="inspace-10 borderedbox" src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodyTexto1.get(0)' />" alt="<s:property value='identidadVO.idAction'/>"></div>
      <div class="one_half">
        <p class="nospace font-xs"><s:property value='body.bodyTexto1.get(1)' /></p>
        <h3 class="heading"><s:property value='body.bodyTexto1.get(2)' /></h3>
        <p><s:property value='body.bodyTexto1.get(3)' /></p>
        <blockquote><s:property value='body.bodyTexto1.get(4)' /></blockquote>
        <p><s:property value='body.bodyTexto1.get(5)' /></p>
        <footer><a href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodyTexto1.get(6)' />"><s:property value='body.bodyTexto1.get(7)' /> &raquo;</a></footer>
      </div>
    </article>
    <!-- ################################################################################################ -->
    <hr class="btmspace-80">
    <div class="center btmspace-80">
      <h3 class="heading"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /></h3>
      <p class="nospace"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace group cta">
    <s:subset start="1" source ="body.bodySeccionArray1">
      <s:iterator  var="bodySeccionArray1">
      <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
        <article><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(4)' />">
        <i class="<s:property value='#bodySeccionArray1.objetoVO.get(1)' />"></i>
        	</a>
          <h6 class="heading"><s:property value='#bodySeccionArray1.objetoVO.get(2)' /></h6>
          <p><s:property value='#bodySeccionArray1.objetoVO.get(3)' />&hellip;</p>
          <footer><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(4)' />">
          	<s:property value='#bodySeccionArray1.objetoVO.get(5)' /> &raquo;</a></footer>
        </article>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodyTexto2.get(0)'/>');">
  <article class="hoc container clear"> 
    <div class="three_quarter first">
      <h6 class="nospace"><s:property value='body.bodyTexto2.get(1)'/></h6>
      <p class="nospace"><s:property value='body.bodyTexto2.get(2)'/></p>
    </div>
    <footer class="one_quarter"><a class="btn medium" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodyTexto2.get(3)'/>"><s:property value='body.bodyTexto2.get(4)'/> &raquo;</a></footer>
  </article>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <div class="center btmspace-50">
      <h3 class="font-x2 nospace"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' /></h3>
      <p class="nospace"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace group latest">
    <s:subset start="1" source ="body.bodySeccionArray2">
      <s:iterator  var="bodySeccionArray2">
      <li class="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />">
        <article>
          <figure><a href="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(2)' />" alt="<s:property value='identidadVO.idAction'/>" ></a>
            <figcaption class="group">
              <time datetime="2045-04-06"><s:property value='#bodySeccionArray2.objetoVO.get(3)' /></time>
              <span>by <a href="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"><s:property value='#bodySeccionArray2.objetoVO.get(4)' /></a></span> </figcaption>
          </figure>
          <div class="postexcerpt">
            <h4 class="heading"><s:property value='#bodySeccionArray2.objetoVO.get(5)' /></h4>
            <p><s:property value='#bodySeccionArray2.objetoVO.get(6)' />&hellip;</p>
            <footer><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"><s:property value='#bodySeccionArray2.objetoVO.get(7)' /> &raquo;</a></footer>
          </div>
        </article>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
    <!-- ################################################################################################ -->
  </section>
</div>

</body>
</html>