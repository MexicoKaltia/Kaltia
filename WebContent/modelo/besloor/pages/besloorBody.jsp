<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body id="top">
	

<a  id="seccion2"></a>	
<div class="wrapper row3 bodySeccionArray1" id="bodySeccionArray1">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="center btmspace-80">
      <h6 class="heading underline font-x2"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></h6>
    </div>
    <ul class="nospace group overview btmspace-80">
    <s:subset source="body.bodySeccionArray1" start="1">  
    <s:iterator  var ="bodySeccionArray1">
      <li class="one_quarter">
        <article><a href="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />"><i class="btmspace-30 fa fa-4x <s:property value='#bodySeccionArray1.objetoVO.get(1)' />"></i></a>
          <h6 class="heading"><a href="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />"><s:property value='#bodySeccionArray1.objetoVO.get(2)' /></a></h6>
          <p><s:property value='#bodySeccionArray1.objetoVO.get(3)' /></p>
          <footer><a href="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />"><s:property value='#bodySeccionArray1.objetoVO.get(4)' /></a></footer>
        </article>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
    <footer class="center"><a class="btn" href="<s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' />"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(2)' /></a></footer>
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<a  id="seccion3"></a>	
<div class="wrapper row2  bodySeccionArray2" id="bodySeccionArray2">
  <article class="hoc container clear"> 
    <div class="center btmspace-80">
      <h6 class="heading underline font-x2"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /></h6>
    </div>
    <ul class="nospace group figures btmspace-80">
    <s:subset source="body.bodySeccionArray2" start="1">  
    <s:iterator  var ="bodySeccionArray2">
      <li class="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />">
        <figure><img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(1)' />?v=1" alt="">
          <figcaption><em>01</em> <a href="<s:property value='#bodySeccionArray2.objetoVO.get(2)' />"><s:property value='#bodySeccionArray2.objetoVO.get(3)' /></a></figcaption>
        </figure>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
    <footer class="center"><a class="btn" href="<s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' />"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(2)' /></a></footer>
  </article>
</div>
<!-- ################################################################################################ -->
<a  id="seccion4"></a>
<div class="bgded overlay startlt light bodySeccionArray3 parallax" id="bodySeccionArray3" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)' />?v=1');">
  <section id="segment" class="hoc clear"> 
    <div class="two_third">
      <h6 class="heading underline font-x2"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></h6>
      <p class="btmspace-50"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(2)' /></p>
      <s:subset source="body.bodySeccionArray3" start="1">  
      <s:iterator  var ="bodySeccionArray3">
      <article><a href="#"><i class="fas <s:property value='#bodySeccionArray3.objetoVO.get(0)' />"></i></a>
        <h6 class="heading"><s:property value='#bodySeccionArray3.objetoVO.get(1)' /></h6>
        <p><s:property value='#bodySeccionArray3.objetoVO.get(2)' /></p>
        <footer><a href="<s:property value='#bodySeccionArray3.objetoVO.get(3)' />"><s:property value='#bodySeccionArray3.objetoVO.get(4)' /></a></footer>
      </article>
      </s:iterator>
      </s:subset>
    </div>
  </section>
</div>
<!-- ################################################################################################ -->
<a  id="seccion5"></a>	
<div class="wrapper row2  bodySeccionArray4" id="bodySeccionArray4">
  <section class="hoc container clear"> 
    <div class="center btmspace-80">
      <h6 class="heading underline font-x2"><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(0)' /></h6>
    </div>
    <ul class="nospace group figures latest btmspace-80">
    <s:subset source="body.bodySeccionArray4" start="1">  
      <s:iterator  var ="bodySeccionArray4">
      <li class="<s:property value='#bodySeccionArray4.objetoVO.get(0)' />">
        <figure><img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray4.objetoVO.get(1)' />" alt="">
          <figcaption><a href="<s:property value='#bodySeccionArray4.objetoVO.get(2)' />"><s:property value='#bodySeccionArray4.objetoVO.get(3)' /></a>
            <time datetime="2045-04-03"><s:property value='#bodySeccionArray4.objetoVO.get(4)' /></time>
          </figcaption>
        </figure>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
    <footer class="center"><a class="btn" href="<s:property value='body.bodySeccionArray4.get(0).objetoVO.get(1)' />"><s:property value='body.bodySeccionArray4.get(0).objetoVO.get(2)' /></a></footer>
  </section>
</div>
<!-- ################################################################################################ -->
<a  id="seccion6"></a>	

<div class="wrapper bgded overlay bodySeccionArray5" id="bodySeccionArray5" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccionArray5.get(0).objetoVO.get(0)' />');">
  <section id="testimonials" class="hoc container clear"> 
    <div class="center btmspace-80">
      <h6 class="heading underline font-x2"><s:property value='body.bodySeccionArray5.get(0).objetoVO.get(1)' /></h6>
    </div>
    <ul class="nospace group btmspace-80">
    <s:subset source="body.bodySeccionArray5" start="1">  
      <s:iterator  var ="bodySeccionArray5">
      <li class="<s:property value='#bodySeccionArray5.objetoVO.get(0)' />">
        <blockquote><s:property value='#bodySeccionArray5.objetoVO.get(4)' /></blockquote>
        <figure class="clear"><img class="circle" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray5.objetoVO.get(1)' />" alt="">
          <figcaption>
            <h6 class="heading"><s:property value='#bodySeccionArray5.objetoVO.get(2)' /></h6>
            <em><s:property value='#bodySeccionArray5.objetoVO.get(3)' /></em></figcaption>
        </figure>
      </li>
      </s:iterator>
      </s:subset>
      
    </ul>
    <footer class="center"><a class="btn" href="<s:property value='body.bodySeccionArray5.get(0).objetoVO.get(2)' />"><s:property value='body.bodySeccionArray5.get(0).objetoVO.get(3)' /></a></footer>
  </section>
</div>
</body>
</html>