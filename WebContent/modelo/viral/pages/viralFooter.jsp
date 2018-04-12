<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html  lang="">
<body>
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <footer id="footer" class="clear"> 
    <div class="one_quarter first">
      <h6 class="title"><s:property value='footer.footerLista1.get(0)' /></h6>
      <address class="btmspace-15">
      <s:property value='footer.footerLista1.get(1)' />
      </address>
      <ul class="nospace">
        <li class="btmspace-10"><span class="fa fa-phone"></span><s:property value='footer.footerLista1.get(2)' /></li>
        <li><span class="fa fa-envelope-o"></span> <s:property value='footer.footerLista1.get(3)' /></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="title"><s:property value='footer.footerLista2.get(0)' /></h6>
      
      <ul class="nospace linklist">
        <s:subset start="1" source ="footer.footerLista2">
        <s:iterator>
          		<li><a href="<s:property value='identidadVO.idAction'/>/<s:property/>"><s:property/></a></li>
         </s:iterator>
         </s:subset>

      </ul>

    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="title"><s:property value='footer.footerLista3.get(0)' /></h6>
      <article>
        <h2 class="nospace"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='footer.footerLista3.get(1)' />">
        <s:property value='footer.footerLista3.get(2)' /></a></h2>
        <time class="smallfont" datetime="2045-04-06"><s:property value='footer.footerLista3.get(3)' /></time>
        <p><s:property value='footer.footerLista3.get(4)' /></p>
      </article>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="title"><s:property value='footer.footerLista5.get(0)' /></h6>
      <p><s:property value='footer.footerLista5.get(1)' /></p>
      <form method="post" action="<s:property value='identidadVO.idAction'/>/<s:property value='footer.footerLista5.get(2)' />">
        <fieldset>
          <legend>Newsletter:</legend>
          <input class="btmspace-15" type="text" value="" placeholder="Name">
          <input class="btmspace-15" type="text" value="" placeholder="Email">
          <button type="submit" value="submit"><s:property value='footer.footerLista5.get(3)' /></button>
        </fieldset>
      </form>
    </div>
  </footer>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row6">
  <div id="copyright" class="hoc clear"> 
    <p class="fl_left"><a href="#"><s:property value='footer.footerLista4.get(0)' /><s:property value="footer.idEmpresa"/></a></p>
    <p class="fl_right"><a href="kaltia.xyz"><s:property value='footer.footerLista4.get(1)' /></a></p>
  </div>
</div>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a> 
</body>
</html>