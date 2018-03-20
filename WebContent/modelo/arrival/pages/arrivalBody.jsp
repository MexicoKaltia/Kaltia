<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row3">
  <main class="container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <article class="one_third first">
      <h2><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /></h2>
      <p class="btmspace-30"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></p>
      <p class="nospace"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' />"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(3)' /></a></p>
    </article>
    <div class="two_third">
      <div class="group services">
        <s:subset source="body.bodySeccionArray1" start="1">  
    	<s:iterator  var ="bodySeccionArray1">
        <article class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
        <a class="icon" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />"><i class="<s:property value='#bodySeccionArray1.objetoVO.get(2)' />"></i></a>
          <h4 class="heading"><s:property value='#bodySeccionArray1.objetoVO.get(3)' /></h4>
          <p><s:property value='#bodySeccionArray1.objetoVO.get(4)' /></p>
          <a class="viewit" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />"><i class="fa fa-angle-right"></i></a></article>
          </s:iterator>
          </s:subset>
      </div>
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row1 bgded" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' />');">
  <div class="overlay dark">
    <div class="container clear"> 
      <ul class="pr-charts nospace group center">
        <s:subset source="body.bodySeccionArray2" start="1">  
    	<s:iterator  var ="bodySeccionArray2">
        <li class="pr-chart-ctrl" data-animate="false">
          <div class="pr-chart" data-percent="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />"><i></i></div>
          <p><s:property value='#bodySeccionArray2.objetoVO.get(1)' /></p>
        </li>
        </s:iterator>
        </s:subset>
      </ul>
      
    </div>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="container clear"> 
    <h2><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' /></h2>
    <p class="btmspace-50"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></p>
    <div class="group">
    	<s:subset source="body.bodySeccionArray3" start="1">  
    	<s:iterator  var ="bodySeccionArray3">
      <article class="<s:property value='#bodySeccionArray3.objetoVO.get(0)' />">
        <figure class="btmspace-30"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(1)' />">
        <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(2)' />" alt="<s:property value='#bodySeccionArray3.objetoVO.get(2)' />"></a></figure>
        <div class="bg-grey borderedbox inspace-30">
          <h2><s:property value='#bodySeccionArray3.objetoVO.get(3)' /></h2>
          <p class="btmspace-30"><s:property value='#bodySeccionArray3.objetoVO.get(4)' /></p>
          <p class="nospace"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(1)' />"><s:property value='#bodySeccionArray3.objetoVO.get(5)' /></a></p>
        </div>
      </article>
      <article class="<s:property value='#bodySeccionArray3.objetoVO.get(6)' />">
        <div class="bg-grey borderedbox inspace-30 btmspace-30">
          <h2><s:property value='#bodySeccionArray3.objetoVO.get(7)' /></h2>
          <p class="btmspace-30"><s:property value='#bodySeccionArray3.objetoVO.get(8)' /></p>
          <p class="nospace"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(9)' />"><s:property value='#bodySeccionArray3.objetoVO.get(10)' /></a></p>
        </div>
        <figure><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(9)' />">
        <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(11)' />" alt="<s:property value='#bodySeccionArray3.objetoVO.get(11)' />"></a></figure>
      </article>
      </s:iterator>
      </s:subset>
    </div>
    <div class="clear"></div>
  </section>
</div>

</body>
</html>