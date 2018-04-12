<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>	
<body>
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodyTexto1.get(0)'/></h6>
    </div>
    <div class="group">
      <div class="one_half first">
        <p><strong><s:property value='body.bodyTexto1.get(1)'/></strong></p>
        <p><s:property value='body.bodyTexto1.get(2)'/></p>
        <p class="btmspace-30"><s:property value='body.bodyTexto1.get(3)'/> [&hellip;]</p>
        <footer><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodyTexto1.get(4)'/>">
        <s:property value='body.bodyTexto1.get(5)'/> &raquo;</a></footer>
      </div>
      <div class="one_half">
        <p><strong><s:property value='body.bodyTexto1.get(6)'/></strong></p>
        <a href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodyTexto1.get(7)'/>">
        <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodyTexto1.get(8)'/>" alt=""></a>
        <p><s:property value='body.bodyTexto1.get(9)'/></p>
      </div>
    </div>
  </section>
</div>
<!-- ########################################### MODIFICAR ESTA SECCION CON SLIDE ##################################################### -->
<div class="wrapper bgded overlay light" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)'/>');">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)'/></h6>
    </div>
    <div class="group testimonials">
    <s:subset start="1" source ="body.bodySeccionArray1">
    <s:iterator var="bodySeccionArray1">
      <article class="<s:property value='#bodySeccionArray1.objetoVO.get(0)'/>"><img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray1.objetoVO.get(1)'/>" alt="">
        <blockquote><s:property value='#bodySeccionArray1.objetoVO.get(2)'/></blockquote>
        <h6 class="heading"><s:property value='#bodySeccionArray1.objetoVO.get(3)'/></h6>
        <em><s:property value='#bodySeccionArray1.objetoVO.get(4)'/></em></article>
     </s:iterator>
     </s:subset>
    </div>
  </section>
</div>
<!-- ########################################## FIN MODIFICAR ESTA SECCION CON SLIDE ###################################################### -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)'/></h6>
    </div>
    <div class="group team">
    <s:subset start="1" source ="body.bodySeccionArray2">
    <s:iterator var="bodySeccionArray2">
      <figure class="<s:property value='#bodySeccionArray2.objetoVO.get(0)'/>">
      <a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray2.objetoVO.get(1)'/>">
      <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(2)'/>" alt=""></a>
        <figcaption>
          <h6 class="heading"><s:property value='#bodySeccionArray2.objetoVO.get(3)'/></h6>
          <em><s:property value='#bodySeccionArray2.objetoVO.get(4)'/></em>
          <footer>
            <ul class="faico clear">
              <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
              <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
              <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
            </ul>
          </footer>
        </figcaption>
      </figure>
      </s:iterator>
      </s:subset>
    </div>
    <div class="clear"></div>
  </section>
</div>
<!-- ################################################################################################ -->
<div class="wrapper overlay coloured">
  <figure class="hoc clear"> 
    <ul class="nospace group logos">
    <s:iterator value="body.bodySeccionArray3" var="bodySeccionArray3">
      <li class="<s:property value='#bodySeccionArray3.objetoVO.get(0)'/>">
      <a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>">
      <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(2)'/>" alt=""></a></li>
      </s:iterator>
    </ul>
  </figure>
</div>
<!-- ################################################################################################ -->
</body>
</html>