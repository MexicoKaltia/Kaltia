<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<!-- ################################################################################################ -->
<div class="wrapper row3 bodySeccionArray1 aniview reallyslow" data-av-animation="fadeInUp"  id="bodySeccionArray1">
<a  id="seccion2"></a>
  <main class="hoc container clear"> 
    <!-- main body --> 
    <ul class="nospace group">
    <s:iterator value="body.bodySeccionArray1" var="bodySeccionArray1">
      <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)'/>">
        <article><i class="btmspace-30 fa fa-3x <s:property value='#bodySeccionArray1.objetoVO.get(1)'/>"></i>
          <h6 class="heading font-x1"><s:property value='#bodySeccionArray1.objetoVO.get(2)'/></h6>
          <p class="btmspace-30"><s:property value='#bodySeccionArray1.objetoVO.get(3)'/> [&hellip;]</p>
<%--    REFERENCIA CON ACTION/SUBACTION       <footer><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(4)'/>"><s:property value='#bodySeccionArray1.objetoVO.get(5)'/> &rsaquo;</a></footer> --%>
          <footer><a class="btn" href="<s:property value='#bodySeccionArray1.objetoVO.get(4)'/>"><s:property value='#bodySeccionArray1.objetoVO.get(5)'/> &rsaquo;</a></footer>
        </article>
      </li>
      </s:iterator>
    </ul>
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ --> 
<div class="bodySeccion1 aniview reallyslow" data-av-animation="fadeInLeft"  id="bodySeccion1">
<div class="wrapper bgded overlay parallax" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccion1.get(0)'/>?v=1');">
                                                                
<a  id="seccion3"></a>
  <section class="hoc container clear"> 
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccion1.get(1)'/></h6>
    </div>
    <div class="group">
      <div class="one_half first">
        <p><strong><s:property value='body.bodySeccion1.get(2)'/></strong></p>
        <p><s:property value='body.bodySeccion1.get(3)'/></p>
        <p class="btmspace-30"><s:property value='body.bodySeccion1.get(4)'/> [&hellip;]</p>
        <footer><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodySeccion1.get(5)'/>"><s:property value='body.bodySeccion1.get(6)'/> &raquo;</a></footer>
      </div>
      <div class="one_half">
        <p><strong><s:property value='body.bodySeccion1.get(7)'/></strong></p>
        <a href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodySeccion1.get(5)'/>"><img src="<s:property value='body.bodySeccion1.get(8)'/>" alt=""></a>
        <p><s:property value='body.bodySeccion1.get(9)'/></p>
      </div>
    </div> 
  </section>
</div>
</div>
<!-- ################################################################################################ -->
<div class="bodySeccionArray2 aniview reallyslow" data-av-animation="faceInLeft" id="bodySeccionArray2">
<a  id="seccion4"></a> 
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <div class="sectiontitle">
    <h6><strong><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(1)' /></strong></h6>
      <br>
      <h3 class="heading"><s:property value='body.bodySeccionArray2.get(0).objetoVO.get(0)' /></h3>
    </div>
    <div class="group testimonials">
    <s:subset start="1" source ="body.bodySeccionArray2">
      <s:iterator  var="bodySeccionArray2">
      <article class="<s:property value='#bodySeccionArray2.objetoVO.get(0)' />">
       <img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(1)'/>?v=1'" alt="<s:property value='identidadVO.idAction'/>" style="max-width: 9.0em; max-height: 9.0em">
        <blockquote><s:property value='#bodySeccionArray2.objetoVO.get(2)' /></blockquote>
        <h6 class="heading"><s:property value='#bodySeccionArray2.objetoVO.get(3)' /></h6>
        <em><s:property value='#bodySeccionArray2.objetoVO.get(4)' /></em></article>
      </s:iterator>
      </s:subset>
    </div> 
  </section>
</div>
</div>
<!-- ################################################################################################ -->
<div class="bodySeccionArray3 aniview reallyslow" data-av-animation="flip"  id="bodySeccionArray3">
<a  id="seccion5"></a>
<div class="wrapper bgded overlay parallax" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccionArray3.get(0).objetoVO.get(0)'/>?v=1');">
																
  <section class="hoc container clear"> 
    <div class="sectiontitle">
      <h6 class="heading"><s:property value='body.bodySeccionArray3.get(0).objetoVO.get(1)' /></h6>
    </div>
    <div class="group team">
    <s:subset start="1" source ="body.bodySeccionArray3">
      <s:iterator  var="bodySeccionArray3">
      <figure class="<s:property value='#bodySeccionArray3.objetoVO.get(0)' />">
<%--  REFERENCIA ACTION/SUBACTION     	<a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray3.objetoVO.get(1)' />"> --%>
		<a href="#">
      		<img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray3.objetoVO.get(1)'/>?v=1" alt="<s:property value='identidadVO.idAction'/>" style="max-width: 15em; max-height: 15em" >
      	</a>
        <figcaption>
          <h6 class="heading"><s:property value='#bodySeccionArray3.objetoVO.get(2)' /></h6>
          <em><s:property value='#bodySeccionArray3.objetoVO.get(3)' /></em>
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
</div>
   <!-- ################################################################################################ -->
   <div class="bodySeccionArray4 aniview reallyslow" data-av-animation="slideInLeft"  id="bodySeccionArray4">
   <a  id="seccion6"></a>
<div class="wrapper row3">
  <figure class="hoc clear"> 
    <ul class="nospace group logos">
    <s:iterator value="body.bodySeccionArray4" var="bodySeccionArray4">
      <li class="<s:property value='#bodySeccionArray4.objetoVO.get(0)'/>">
<%-- REFERENCIA ACTION/SUBACTION       	<a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>"> --%>
		<a href="#">
      		<img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray4.objetoVO.get(1)'/>?v=1" > 		
      	</a>
      </li>
     </s:iterator> 
    </ul>
  </figure>
</div>
</div>
<!-- ################################################################################################ -->

</body>
</html>