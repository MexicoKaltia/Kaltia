<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<a  id="seccion2"></a>
	<div class="bodyQRE "  id="bodyQRE">  
<%-- 	style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodyQRE.get(0).objetoVO.get(0)'/>?v=1');"> --%>
	<img class="btmspace-30 parallax"
									src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='body.bodyQRE.get(0).objetoVO.get(0)'/>?v=1"
									alt="<s:property value='#bodyQRE.objetoVO.get(0)'/>">
		
			
	</div>
</body>
</html>


