<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html  lang="">
<body>
<!-- ################################################################################################ -->
<a id ="proyectos">
<div class="bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray2.get(0).objetoVO.get(3)' />?v=1');">
  <section id="info" class="clear"> 
    <div class="center btmspace-80">
      <h2 class="heading uppercase btmspace-30"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' /></h2>
      <p class="lrspace"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /></p>
    </div>
    <div class="group">
      <div class="one_half first"><img class="borderedbox inspace-10" src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray2.get(0).objetoVO.get(2)' />" alt="<s:property value='identidadVO.idAction'/>"></div>
      <div class="one_half">
        <ul class="nospace group services">
            <s:subset start="1" source ="body.bodySeccionArray2">
		    <s:iterator var="bodySeccionArray2">        
          <li>
            <article><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray2.objetoVO.get(0)'/>">
            <i class="<s:property value='#bodySeccionArray2.objetoVO.get(1)'/>"></i></a>
              <h6 class="heading"><s:property value='#bodySeccionArray2.objetoVO.get(2)'/></h6>
              <p><s:property value='#bodySeccionArray2.objetoVO.get(3)'/>&hellip;</p>
              <footer><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray2.objetoVO.get(0)'/>">
              <s:property value='#bodySeccionArray2.objetoVO.get(4)'/> &raquo;</a></footer>
            </article>
          </li>
          </s:iterator>
          </s:subset>
        </ul>
      </div>
    </div>
    <div class="clear"></div>
  </section>
</div>
</a>
<!-- ################################################################################################ -->
<a id="servicios">
<div class="wrapper row3">
  <main class="container clear"> 
    <!-- main body -->
    
    <div class="group">
      <div class="one_third first"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' />" alt=""></div>
      <div class="two_third">
        <h2 class="heading"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></h2>
        <p><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' /></p>
        <p class="btmspace-80"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(3)' /></p>
        <ul class="nospace group">
            <s:subset start="1" source ="body.bodySeccionArray1">
		    <s:iterator var="bodySeccionArray1">
        	  <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)'/>">
            	<h6 class="nospace btmspace-10"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)'/>">
            	<i class="<s:property value='#bodySeccionArray1.objetoVO.get(2)'/>"></i>
            	<s:property value='#bodySeccionArray1.objetoVO.get(3)'/></a></h6>
            	<p class="nospace"><s:property value='#bodySeccionArray1.objetoVO.get(4)'/>&hellip;</p>
          	  </li>
          	</s:iterator>
          	</s:subset>
        </ul>
      </div>
    </div>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
</a>
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
</body>
</html>