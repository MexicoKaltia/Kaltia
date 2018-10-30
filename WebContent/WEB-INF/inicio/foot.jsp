<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<body>	
			<!-- JAVASCRIPTS -->
	<script src="<%=request.getContextPath()%>/layout/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/prefixfree.min.js"></script>

	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.backtotop.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.mobilemenu.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.flexslider-min.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/sss/sss.min.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.easypiechart.min.js"></script>
<%-- 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> --%>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/edicionSecciones.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/complemento.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/bootstrap.min.js"></script>
	
	
	<!-- ################################################################################################ -->
<input type="hidden" id="idEmpresa" value="<s:property value='header.idEmpresa'/>" />
<%-- 	<span id="headerSeccion1_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccion1' /> --%>
<%-- 	</span> --%>
<%-- 	<span id="headerSeccion2_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccion2' /> --%>
<%-- 	</span> --%>
		<span id="headerSeccion3_valores" hidden="true"> 
	<s:property value='header.headerSeccion3' />
	</span>
<%-- 		<span id="headerSeccion4_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccion4' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="headerSeccion5_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccion5' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="headerSeccionArray1_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccionArray1' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="headerSeccionArray2_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccionArray2' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="headerSeccionArray3_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccionArray3' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="headerSeccionArray4_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccionArray4' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="headerSeccionArray5_valores" hidden="true">  --%>
<%-- 	<s:property value='header.headerSeccionArray5' /> --%>
<%-- 	</span> --%>
<%-- 	<span id="bodySeccion1_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccion1' /> --%>
<%-- 	</span> --%>
<%-- 	<span id="bodySeccion2_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccion2' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="bodySeccion3_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccion3' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="bodySeccion4_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccion4' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="bodySeccion5_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccion5' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="bodySeccionArray1_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccionArray1' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="bodySeccionArray2_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccionArray2' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="bodySeccionArray3_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccionArray3' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="bodySeccionArray4_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccionArray4' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="bodySeccionArray5_valores" hidden="true">  --%>
<%-- 	<s:property value='body.bodySeccionArray5' /> --%>
<%-- 	</span> --%>
<%-- 	<span id="footerSeccion1_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccion1' /> --%>
<%-- 	</span> --%>
<%-- 	<span id="footerSeccion2_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccion2' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="footerSeccion3_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccion3' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="footerSeccion4_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccion4' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="footerSeccion5_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccion5' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="footerSeccionArray1_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccionArray1' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="footerSeccionArray2_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccionArray2' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="footerSeccionArray3_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccionArray3' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="footerSeccionArray4_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccionArray4' /> --%>
<%-- 	</span> --%>
<%-- 		<span id="footerSeccionArray5_valores" hidden="true">  --%>
<%-- 	<s:property value='footer.footerSeccionArray5' /> --%>
<%-- 	</span> --%>
	

</body>
</html>
