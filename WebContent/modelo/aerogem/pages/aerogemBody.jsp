<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="bodySeccion1 aniview reallyslow" data-av-animation="pulse"  id="bodySeccion1"><a  id="seccion2"></a>
    <article class="group btmspace-80">
      <div class="one_half first"><img class="inspace-10 borderedbox" src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccion1.get(0)' />" alt="<s:property value='identidadVO.idAction'/>"></div>
      <div class="one_half">
        <p class="nospace font-xs"><s:property value='body.bodySeccion1.get(1)' /></p>
        <h3 class="heading"><s:property value='body.bodySeccion1.get(2)' /></h3>
        <p><s:property value='body.bodySeccion1.get(3)' /></p>
        <blockquote><s:property value='body.bodySeccion1.get(4)' /></blockquote>
        <p><s:property value='body.bodySeccion1.get(5)' /></p>
        <footer>
			<%--  referencia click   <a href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodySeccion1.get(6)' />"><s:property value='body.bodySeccion1.get(7)' /> &raquo;</a>    	 --%>
			<a href="" class="validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='body.BodySeccion1.get(6)'/>"><s:property value='body.BodySeccion1.get(7)'/>&raquo;</a>
        </footer>
      </div>
    </article>
    </div>
    <!-- ################################################################################################ -->
    <div class="bodySeccionArray1 aniview reallyslow" data-av-animation="fadeIn"  id="bodySeccionArray1"><a  id="seccion3"></a>
    <hr class="btmspace-80">
    <div class="center btmspace-80">
      <h3 class="heading"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(0)' /></h3>
      <p class="nospace"><s:property value='body.bodySeccionArray1.get(0).objetoVO.get(1)' /></p>
    </div>
    <ul class="nospace group cta">
    <s:subset start="1" source ="body.bodySeccionArray1">
      <s:iterator  var="bodySeccionArray1">
      <li class="<s:property value='#bodySeccionArray1.objetoVO.get(0)' />">
        <article>
<%--         	<a href="<s:property value='identidadVO.idAction'/>/<s:property value='#bodySeccionArray1.objetoVO.get(4)' />"> --%>
			<a class="validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='#bodySeccionArray1.objetoVO.get(4)' />">
        		<i class="fa <s:property value='#bodySeccionArray1.objetoVO.get(1)' />"></i>
        	</a>
        	<h6 class="heading"><s:property value='#bodySeccionArray1.objetoVO.get(2)' /></h6>
          	<p><s:property value='#bodySeccionArray1.objetoVO.get(3)' />&hellip;</p>
          	<footer><a  class="validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='#bodySeccionArray1.objetoVO.get(4)' />">
          		<s:property value='#bodySeccionArray1.objetoVO.get(5)' /> &raquo;</a>
          	</footer>
        </article>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
    </div>
  </main>
</div>
<!-- ################################################################################################ -->
<div class="bodySeccion2 aniview reallyslow" data-av-animation="bounceInLeft"  id="bodySeccion2"><a  id="seccion4"></a>
<div class="wrapper bgded overlay parallax" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccion2.get(0)'/>');">
  <article class="hoc container clear"> 
    <div class="three_quarter first">
      <h6 class="nospace"><s:property value='body.bodySeccion2.get(1)'/></h6>
      <p class="nospace"><s:property value='body.bodySeccion2.get(2)'/></p>
    </div>
    <footer class="one_quarter">
		<%-- referencia     	<a class="btn medium" href="<s:property value='identidadVO.idAction'/>/<s:property value='body.bodySeccion2.get(3)'/>"><s:property value='body.bodySeccion2.get(4)'/> &raquo;</a></footer> --%>
		<a class="btn medium validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='body.bodySeccion2.get(3)'/>"><s:property value='body.bodySeccion2.get(4)'/> &raquo;</a>
		
	</footer>
  </article>
</div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row3">
<div class="bodySeccionArray2 aniview reallyslow" data-av-animation="bounceInRight"  id="bodySeccionArray2"><a  id="seccion5"></a>
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
          <figure>
          	<a href="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(2)'/>?=v1" data-lightbox="ligthboxBodySeccionArray2" data-title="<s:property value='#bodySeccionArray2.objetoVO.get(5)'/>--<s:property value='#bodySeccionArray2.objetoVO.get(6)' />">
          		<img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(2)' />" alt="<s:property value='identidadVO.idAction'/>" >
          	</a>          	
            <figcaption class="group">
              <time datetime="2045-04-06"><s:property value='#bodySeccionArray2.objetoVO.get(3)' /></time>
              <span>by <a href="<s:property value='#bodySeccionArray2.objetoVO.get(1)' />"><s:property value='#bodySeccionArray2.objetoVO.get(4)' /></a></span>
             </figcaption>
          </figure>
          <div class="postexcerpt">
            <h4 class="heading"><s:property value='#bodySeccionArray2.objetoVO.get(5)' /></h4>
            <p><s:property value='#bodySeccionArray2.objetoVO.get(6)' />&hellip;</p>
            <footer>
            	<a href="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodySeccionArray2.objetoVO.get(2)'/>?=v1" data-lightbox="ligthbox2BodySeccionArray2" data-title="<s:property value='#bodySeccionArray2.objetoVO.get(5)'/>--<s:property value='#bodySeccionArray2.objetoVO.get(6)'/>"> &raquo;</a>
            </footer>
          </div>
        </article>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
  </section>
</div>
</div>

</body>
</html>