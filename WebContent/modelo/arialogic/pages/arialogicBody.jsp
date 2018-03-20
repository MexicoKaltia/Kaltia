<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h2 class="heading"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /></h2>
      <p><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace group blocks">
        <s:subset source="body.bodySeccionArray1" start="1">  
    	<s:iterator  var ="bodySeccionArray1">
      <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />');">
      <a class="btn medium" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(2)' />">
      	<s:property value='#bodySeccionArray1.objetoVO.get(3)' /></a>
      	<br>
        <s:property value='#bodySeccionArray1.objetoVO.get(4)' /></li>
        </s:iterator>
        </s:subset>
    </ul>
      <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' />');">
  <section id="testimonials" class="hoc container clear"> 
    <div class="center btmspace-50">
      <h2 class="heading"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /></h2>
      <p><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(2)' /></p>
    </div>
    <ul class="nospace group">
    <s:subset source="body.bodySeccionArray2" start="1">  
    <s:iterator  var ="bodySeccionArray2">
      <li class="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />">
        <div class="clear"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(1)' />" alt="<s:property value='identidadVO.idAction'/>"> 
        	<span class="block"><strong><s:property value='#bodySeccionArray2.objetoVO.get(2)' /> / </strong>
        	 <em> <s:property value='#bodySeccionArray2.objetoVO.get(3)' /></em></span>
          <blockquote><s:property value='#bodySeccionArray2.objetoVO.get(4)' />&hellip;</blockquote>
        </div>
      </li>
      </s:iterator>
      </s:subset>     
    </ul>
  </section>
</div>
    <!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 

    <div class="center btmspace-50">
      <h2 class="heading"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' /></h2>
      <p><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace elements">
    <s:subset source="body.bodySeccionArray3" start="1">  
    <s:iterator  var ="bodySeccionArray3">
      <li class="<s:property value='#bodySeccionArray3.objetoVO.get(0)' />">
        <article><a href="<s:property value='#bodySeccionArray3.objetoVO.get(1)' />"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(2)' />" alt=""></a>
          <div class="txtwrap">
            <h6 class="heading"><s:property value='#bodySeccionArray3.objetoVO.get(3)' /></h6>
            <time datetime="2045-04-06"><s:property value='#bodySeccionArray3.objetoVO.get(4)' /></time>
            <p><s:property value='#bodySeccionArray3.objetoVO.get(5)' />,&hellip;</p>
            <footer><a href="<s:property value='#bodySeccionArray3.objetoVO.get(1)' />"><s:property value='#bodySeccionArray3.objetoVO.get(6)' /> &raquo;</a></footer>
          </div>
        </article>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
  </section>
</div>
<!-- ################################################################################################ -->
<div class="wrapper coloured">
  <div class="hoc clear"> 
        <figure id="logos">
      <ul class="nospace group">
        <s:iterator value="body.bodySeccionArray4" var="bodySeccionArray4">
      <li class="<s:property value='#bodySeccionArray4.objetoVO.get(0)'/>">
      	<a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>">
      		<img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray4.objetoVO.get(2)'/>" alt="<s:property value='identidadVO.idAction'/>" >
      	</a>
      </li>
     </s:iterator>
      </ul>
      <figcaption class="hidden"><a class="btn small" href="#">More &raquo;</a></figcaption>
    </figure>
    <!-- ################################################################################################ -->
  </div>
</div>

</body>
</html>