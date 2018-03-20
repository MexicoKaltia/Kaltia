<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>

<div class="wrapper row5">
  <footer id="footer" class="clear"> 
    <!-- ################################################################################################ -->
    <div class="one_half first">
      <h6 class="title"><s:property value='footer.footerLista1.get(0)' /></h6>
      <p class="nospace btmspace-30"><s:property value='footer.footerLista1.get(1)' /></p>
      <ul class="nospace">
        <li class="btmspace-10">
          <address>
          <span class="fa fa-map-marker"></span> <s:property value='footer.footerLista1.get(2)' />, <s:property value='footer.footerLista1.get(3)' />, <s:property value='footer.footerLista1.get(4)' />
          </address>
        </li>
        <li class="btmspace-10"><span class="fa fa-phone"></span><s:property value='footer.footerLista1.get(5)' /></li>
        <li><span class="fa fa-envelope-o"></span><s:property value='footer.footerLista1.get(6)' /></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="title"><s:property value='footer.footerLista2.get(0)' /></h6>
      <ul class="nospace linklist">
      <s:subset start="1" source ="footer.footerLista2">
        <s:iterator>
          		<li><a href="#"><s:property/></a></li>
         </s:iterator>
         </s:subset>
      </ul>
    </div>
    <!-- ################################################################################################ -->
    <div class="one_quarter">
      <h6 class="title"><s:property value='footer.footerLista3.get(0)' /></h6>
      <form class="btmspace-50" method="post" action="#">
        <fieldset>
          <legend><s:property value='footer.footerLista3.get(1)' /></legend>
          <input class="btmspace-15" type="text" value="" placeholder="Email">
          <button type="submit" value="submit"><s:property value='footer.footerLista3.get(2)' /></button>
        </fieldset>
      </form>
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-rss" href="#"><i class="fa fa-rss"></i></a></li>
      </ul>
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
<!-- ################################################################################################ -->



</body>
</html>