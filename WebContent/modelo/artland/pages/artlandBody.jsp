<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="group">
      <div class="one_half first">
        <p class="font-xs"><s:property value='body.bodyTexto1.get(0)' /></p>
        <h6 class="heading font-x3"><s:property value='body.bodyTexto1.get(1)' /></h6>
        <p><s:property value='body.bodyTexto1.get(2)' /></p>
        <p><s:property value='body.bodyTexto1.get(3)' /> [&hellip;]</p>
        <footer><a href="<s:property value='body.bodyTexto1.get(4)' />"><s:property value='body.bodyTexto1.get(5)' /> &raquo;</a></footer>
      </div>
      <div class="one_half"><a href="<s:property value='body.bodyTexto1.get(4)' />">
      <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodyTexto1.get(6)' />" alt="<s:property value='body.bodyTexto1.get(6)' />"></a></div>
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="hoc container clear"> 
  <s:iterator value="body.bodySeccionArray1" var="bodySeccionArray1">
    <article class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
      <footer class="btmspace-15"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />">
      	<s:property value='#bodySeccionArray1.objetoVO.get(2)' /> &raquo;</a></footer>
      <h6 class="heading font-x1"><s:property value='#bodySeccionArray1.objetoVO.get(3)' /></h6>
      <p class="btmspace-30"><s:property value='#bodySeccionArray1.objetoVO.get(4)' /> [&hellip;]</p>
      <a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />">
      	<img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray1.objetoVO.get(5)' />" alt="<s:property value='#bodySeccionArray1.objetoVO.get(5)' />"></a></article>
   </s:iterator>  
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <div class="sectiontitle center">
      <h2 class="heading"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' /></h2>
      <p><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace group services">
    <s:subset source="body.bodySeccionArray2" start="1">  
    <s:iterator  var ="bodySeccionArray2">
      <li class="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />">
        <article><a href="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"><i class="<s:property value='#bodySeccionArray2.objetoVO.get(2)' />"></i></a>
          <h6 class="heading"><s:property value='#bodySeccionArray2.objetoVO.get(3)' /></h6>
          <p><s:property value='#bodySeccionArray2.objetoVO.get(4)' /> [&hellip;]</p>
          <footer><a href="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"><s:property value='#bodySeccionArray2.objetoVO.get(5)' /> &raquo;</a></footer>
        </article>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
  </section>
</div>
<!-- ################################################################################################ -->
<div class="wrapper bgded" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodyTexto2.get(0)' />');">
  <section id="callback" class="hoc container clear"> 
    <div class="one_half first">
      <div class="inspace-30 row3">
        <h6 class="heading"><s:property value='body.bodyTexto2.get(1)' /></h6>
        <p class="btmspace-30"><s:property value='body.bodyTexto2.get(2)' /></p>
        <form method="post" action="<s:property value='body.bodyTexto2.get(3)' />">
          <fieldset>
            <input type="text" value="" placeholder="<s:property value='body.bodyTexto2.get(4)' />">
            <input type="text" value="" placeholder="<s:property value='body.bodyTexto2.get(5)' />">
            <button type="submit" value="submit"><s:property value='body.bodyTexto2.get(6)' /></button>
          </fieldset>
        </form>
      </div>
    </div>
  </section>
</div>

</body>
</html>