<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="group btmspace-80">
      <div class="one_half first">
        <h4><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /></h4>
        <p><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></p>
      </div>
      <div class="one_half">
        <p><s:property value="body.bodySeccionArray1.get(0).objetoVO.get(2)"/></p>
        <p><s:property value="body.bodySeccionArray1.get(0).objetoVO.get(3)"/></p>
      </div>
    </div>
    
    <div class="group">
    <s:subset source="body.bodySeccionArray1" start="1">  
    <s:iterator  var ="bodySeccionArray1">
      <article class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
      	<a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />">
      	<i class="<s:property value='#bodySeccionArray1.objetoVO.get(2)' />"></i></a>
        <h4><s:property value='#bodySeccionArray1.objetoVO.get(3)' /></h4>
        <p><s:property value='#bodySeccionArray1.objetoVO.get(4)' /></p>
      </article>
      </s:iterator>
      </s:subset>
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="wrapper">
  <section id="latest" class="container clear"> 
    <div class="center btmspace-80">
      <h3 class="font-x2 nospace"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' /></h3>
      <p class="nospace"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace group">
    <s:subset source="body.bodySeccionArray2" start="1">  
    <s:iterator  var ="bodySeccionArray2">
      <li>
        <figure class="txtoverlay"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray2.objetoVO.get(0)' />"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(1)' />" alt="<s:property value='identidadVO.idAction'/>" ></a>
          <figcaption class="txtcaption">
            <h6 class="heading"><s:property value='#bodySeccionArray2.objetoVO.get(2)' /></h6>
            <p><s:property value='#bodySeccionArray2.objetoVO.get(3)' /></p>
            <footer><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray2.objetoVO.get(0)' />"><s:property value='#bodySeccionArray2.objetoVO.get(4)' /> &raquo;</a></footer>
          </figcaption>
        </figure>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
  </section>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <div class="btmspace-50">
      <h3 class="font-x2 nospace"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' /></h3>
      <p class="nospace"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></p>
    </div>
    <div class="group">
    <s:subset source="body.bodySeccionArray3" start="1">  
    <s:iterator  var ="bodySeccionArray3">
      <article class="<s:property value='#bodySeccionArray3.objetoVO.get(0)' />"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(1)' />">
      <img class="btmspace-30" src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(1)' />" alt="<s:property value='identidadVO.idAction'/>"></a>
        <h4 class="nospace font-x1"><s:property value='#bodySeccionArray3.objetoVO.get(3)' /></h4>
        <p><s:property value='#bodySeccionArray3.objetoVO.get(4)' />&hellip;</p>
        <footer><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(1)' />"><s:property value='#bodySeccionArray3.objetoVO.get(5)' /></a></footer>
      </article>
      </s:iterator>
      </s:subset>     
    </div>
  </section>
</div>
<!-- ################################################################################################ -->
<div class="wrapper bgded" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodyTexto1.get(0)' />');">
  <div class="hoc split clear">
    <article class="box clear"> 
      <h6 class="heading"><s:property value='body.bodyTexto1.get(1)' /></h6>
      <p class="btmspace-30"><s:property value='body.bodyTexto1.get(2)' />&hellip;</p>
      <footer><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodyTexto1.get(3)' />"><s:property value='body.bodyTexto1.get(4)' /></a></footer>
    </article>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <div class="hoc container clear center"> 
    <article>
      <h2 class="heading font-x3"><s:property value='body.bodyTexto2.get(0)' /><br>
        <s:property value='body.bodyTexto2.get(1)' /></h2>
      <p class="btmspace-50"><s:property value='body.bodyTexto2.get(2)' /></p>
      <p class="btmspace-50"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodyTexto2.get(3)' />"><s:property value='body.bodyTexto2.get(4)' /></a></p>
      <footer class="font-xs">** <s:property value='body.bodyTexto2.get(5)' /><br>
        <s:property value='body.bodyTexto2.get(6)' /></footer>
    </article>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper bgded" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray4.get(0).objetoVO.get(0)' />');">
  <ul class="nospace group clrbox">
  <s:subset source="body.bodySeccionArray4" start="1">  
    <s:iterator  var ="bodySeccionArray4">
    <li>
      <article>
        <h4 class="heading"><s:property value='#bodySeccionArray4.objetoVO.get(0)' /></h4>
        <p><s:property value='#bodySeccionArray4.objetoVO.get(1)' />&hellip;</p>
        <footer><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray4.objetoVO.get(2)' />"><s:property value='#bodySeccionArray4.objetoVO.get(3)' /></a></footer>
      </article>
    </li>
    </s:iterator>
    </s:subset>
    <!-- ################################################################################################ -->
  </ul>
</div>

</body>
</html>