<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row4 bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='footer.footerSeccion1.get(0)' />');">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_third first">
       <h6 class="heading"><s:property value='footer.footerSeccion1.get(1)' /></h6>
      <nav>
        <ul class="nospace">
          <li><a href="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>"><i class="fa fa-lg fa-home"></i></a></li>
          <s:iterator value='header.headerSeccion1' var="menu2Value">
			<li><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>">
				<s:property value='#menu2Value.substring(0,#menu2Value.indexOf("."))' /></a>
			</li>
		</s:iterator>
        </ul>
        </nav>
      <p><s:property value='footer.footerSeccion1.get(2)' /></p>
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_third">
	 <h6 class="title"><s:property value='footer.footerSeccion2.get(0)' /></h6>
      <ul class="nospace linklist contact">
        <li><i class="fa fa-map-marker"></i>
          <address>
          <s:property value='footer.footerSeccion2.get(1)' /> ,<s:property value='footer.footerSeccion2.get(2)' />
          </address>
        </li>
        <li><i class="fa fa-phone"></i><s:property value='footer.footerSeccion2.get(3)' /><br>
          <s:property value='footer.footerSeccion2.get(4)' /></li>
        <li><i class="fa fa-fax"></i> <s:property value='footer.footerSeccion2.get(5)' /></li>
        <li><i class="fa fa-envelope-o"></i> <s:property value='footer.footerSeccion2.get(6)' /></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_third">
     <h6 class="title"></i><s:property value='footer.footerSeccionArray1.get(0).objetoVO.get(0)' /></h6>
      <ul class="nospace linklist">
      <s:subset start="1" source ="footer.footerSeccionArray1">
        <s:iterator var="footerSeccionArray1">
        <li>
          <article>
            <h6 class="nospace font-x1"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#footerSeccionArray1.objetoVO.get(0)' />">
            <s:property value='#footerSeccionArray1.objetoVO.get(1)' /></a></h6>
            <time class="font-xs block btmspace-10" datetime="2045-04-06"><s:property value='#footerSeccionArray1.objetoVO.get(2)' /></time>
            <p class="nospace"><s:property value='#footerSeccionArray1.objetoVO.get(3)' />&hellip;</p>
          </article>
        </li>
        </s:iterator>
        </s:subset>
      </ul>
    </div>
      </footer>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row5">
    <div id="copyright" class="hoc clear"> 
      <div id="copyright" class="hoc clear"> 
    <p class="fl_left"><a href="#"><s:property value='footer.footerSeccion4.get(0)' /><s:property value="footer.idEmpresa"/></a></p>
    <p class="fl_right"><a href="kaltiaservicios.com/contenidos"><s:property value='footer.footerSeccion4.get(1)' /></a></p>
  </div>
</div>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- ################################################################################################ -->

</div>

</body>
</html>