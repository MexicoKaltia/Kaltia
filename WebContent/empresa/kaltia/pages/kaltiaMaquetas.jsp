<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body>
    <div class="wrapper bgded overlay coloured" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.action'/>/images/<s:property value='body.bodySeccionArray2.get(0).objetoVO.get(3)'/>');">
      <h6 class="heading">M O D E L O S</h6>
      <ul class="nospace linklist">
        <s:subset start="0" source ="maquetaskaltia">
        <s:iterator>
          		<li><a href="http://www.kaltia.xyz/<s:property/>"  target="_blank">http://www.kaltia.xyz/<s:property/></a></li>
         </s:iterator>
         </s:subset>

      </ul>
    </div>
</body>
</html>
