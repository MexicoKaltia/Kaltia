<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="bgded" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='footer.footerLista1.get(0)' />');">
  <div class="overlay light"> 
    <!-- ################################################################################################ -->
    <div class="wrapper row4">
      <footer id="footer" class="clear"> 
        <div class="one_quarter first">
          <h6 class="title"><s:property value='footer.footerLista1.get(1)' /></h6>
          <address class="btmspace-15">
          <s:property value='footer.footerLista1.get(2)' /><br>
          <s:property value='footer.footerLista1.get(3)' /><br>
          <s:property value='footer.footerLista1.get(4)' /><br>
          <s:property value='footer.footerLista1.get(5)' />
          </address>
          <ul class="nospace">
            <li class="btmspace-10"><i class="fa fa-phone"></i> +<s:property value='footer.footerLista1.get(5)' /></li>
            <li><i class="fa fa-envelope-o"></i> <s:property value='footer.footerLista1.get(6)' /></li>
          </ul>
        </div>
            <!-- ################################################################################################ -->
        <div class="one_quarter">
       <h6 class="title"></i><s:property value='footer.footerSeccionArray1.get(0).objetoVO.get(0)' /></h6>
      <ul class="nospace linklist">
      <s:subset start="1" source ="footer.footerSeccionArray1">
        <s:iterator var="footerSeccionArray1">
        <li>
          <article>
            <h6 class="nospace font-x1"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#footerSeccionArray1.objetoVO.get(0)' />"><s:property value='#footerSeccionArray1.objetoVO.get(1)' /></a></h6>
            <time class="font-xs block btmspace-10" datetime="2045-04-06"><s:property value='#footerSeccionArray1.objetoVO.get(2)' /></time>
            <p class="nospace"><s:property value='#footerSeccionArray1.objetoVO.get(3)' />&hellip;</p>
          </article>
        </li>
        </s:iterator>
        </s:subset>
      </ul>
    </div>
            <!-- ################################################################################################ -->
        <div class="one_quarter">
           <h6 class="title"><s:property value='footer.footerLista2.get(0)' /></h6>
      <ul class="nospace linklist">
        <s:subset start="1" source ="footer.footerLista2">
        <s:iterator >
          		<li><a href="<s:property value='identidadVO.idAction'/>"><s:property/></a></li>
         </s:iterator>
         </s:subset>       
      </ul>
        </div>
            <!-- ################################################################################################ -->
        <div class="one_quarter">
           <h6 class="title"><s:property value='footer.footerLista3.get(0)' /></h6>
      <p><s:property value='footer.footerLista3.get(1)' /></p>
      <p><s:property value='footer.footerLista3.get(2)' /></p>
       </footer>
    </div>
    <!-- ################################################################################################ -->
    <div class="wrapper row5">
      <div id="copyright" class="hoc clear"> 
		    <p class="fl_left"><a href="#"><s:property value='footer.footerLista4.get(0)' /><s:property value="footer.idEmpresa"/></a></p>
		    <p class="fl_right"><a href="kaltia.xyz"><s:property value='footer.footerLista4.get(1)' /></a></p>
		  </div>
	</div>
		<!-- ################################################################################################ -->
		<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
  </div>
</div>
</body>
</html>