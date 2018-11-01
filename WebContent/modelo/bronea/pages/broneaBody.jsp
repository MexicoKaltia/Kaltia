<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body id="top">
<div class="wrapper row3 bodySeccionArray1">
<a  id="seccion2"></a>
  <main class="hoc container clear"> 
    <!-- main body -->
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /></h6>
      <p><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></p>
    </div>
    <div class="group">
      <div class="one_half first">
        <p><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' /></p>
        <p class="btmspace-50"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(3)' /></p>
        <ul class="nospace group">
        <s:subset source="body.bodySeccionArray1" start="1">  
    	<s:iterator  var ="bodySeccionArray1">
          <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
            <article><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(1)' />">
            <i class="<s:property value='#bodySeccionArray1.objetoVO.get(2)' />"></i></a>
              <h6 class="heading font-x1"><s:property value='#bodySeccionArray1.objetoVO.get(3)' /></h6>
              <p><s:property value='#bodySeccionArray1.objetoVO.get(4)' />&hellip;</p>
            </article>
          </li>
          </s:iterator>
          </s:subset>
        </ul>
      </div>
      <div class="one_half">
      <img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />" alt="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(4)' />">
      </div>
    </div>

    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row2 bodySeccionArray2">
<a  id="seccion3"></a>
  <div class="hoc container clear"> 
    <ul class="nospace group cta">
      <s:iterator  var="bodySeccionArray2" value ="body.bodySeccionArray2">
      <li class="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />">
        <article><i class="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"></i>
          <h6 class="heading font-x1"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray2.objetoVO.get(2)' />"><s:property value='#bodySeccionArray2.objetoVO.get(3)' /></a></h6>
          <p><s:property value='#bodySeccionArray2.objetoVO.get(4)' /></p>
        </article>
      </li>
      </s:iterator>
    </ul>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3 bodySeccionArray3">
<a  id="seccion4"></a>
  <div class="hoc container clear"> 
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' /></h6>
      <p><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace group services">
      <!-- inicio Categorias-->
     <s:subset start="1" source ="body.bodySeccionArray3">
      <s:iterator var="bodySeccionArray3">
       	<li class="<s:property value='#bodySeccionArray3.objetoVO.get(0)'/> btmspace-30">
        	<article class="bgded overlay" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>?=v1');">
<%-- identificar secciones
          		<h6 class="heading font-x1"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(2)'/>"> --%>
          		<h6 class="heading font-x1"><a href="<s:property value='#bodySeccionArray3.objetoVO.get(2)'/>">
          		<s:property value='#bodySeccionArray3.objetoVO.get(3)'/></a></h6>
          		<p><s:property value='#bodySeccionArray3.objetoVO.get(4)'/></p>
        	</article>
      	</li>
      </s:iterator>
      </s:subset>
      <!-- fin Categorias -->
    </ul>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay bodySeccion1" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='body.BodySeccion1.get(0)'/>');">
<a  id="seccion5"></a>
  <article class="hoc container clear center"> 
    <div class="sectiontitle" style="margin-bottom:30px;">
      <h6 class="heading"><s:property value='body.BodySeccion1.get(1)'/></h6>
      <p><s:property value='body.BodySeccion1.get(2)'/></p>
    </div>
    <p><a class="btn medium" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.BodySeccion1.get(3)'/>"><s:property value='body.BodySeccion1.get(4)'/></a></p>
  </article>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3 bodySeccionArray4">
<a  id="seccion6"></a>
  <section class="hoc container clear"> 
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(0)' /></h6>
      <p><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(1)' /></p>
    </div>
    <div class="group">
      <s:subset start="1" source ="body.bodySeccionArray4">
      <s:iterator var="bodySeccionArray4">
       	<article class="<s:property value='#bodySeccionArray4.objetoVO.get(0)'/>">
<%-- identificar Secciones
       	<a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>"> --%>
       	<a href="<s:property value='#bodySeccionArray4.objetoVO.get(2)'/>">
       	<img class="btmspace-30" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.empresa'/>/images/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>" alt="<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>"></a>
        	<h3 class="heading"><s:property value='#bodySeccionArray4.objetoVO.get(3)'/></h3>
        	<p><s:property value='#bodySeccionArray4.objetoVO.get(4)'/>&hellip;</p>
        <footer class="nospace"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>">
        <s:property value='#bodySeccionArray4.objetoVO.get(5)'/> &raquo;</a></footer>
      </article>
      </s:iterator>
      </s:subset>
    </div>
  </section>
</div>
</body>
</html>