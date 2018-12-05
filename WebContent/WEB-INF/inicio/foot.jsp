<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<body>


	<!-- JAVASCRIPTS Generales-->	
	<script src="<%=request.getContextPath()%>/layout/js/jquery-3.3.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/jquery-ui.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/bootstrap.min.js"></script>
	
	<!-- JAVASCRIPTS Plugins-->
	<script src="<%=request.getContextPath()%>/layout/js/jquery.roadmap.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/datepicker-es.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/lightbox.js"></script>
	<!-- JAVASCRIPTS Plugins Modelo-->
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.backtotop.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.mobilemenu.js"></script>
<%-- 	<script src="<%=request.getContextPath()%>/layout/js/prefixfree.min.js"></script> --%>
<%-- 	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.flexslider-min.js"></script> --%>
<%-- 	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/sss/sss.min.js"></script> --%>
<%-- 	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.easypiechart.min.js"></script> --%>
	
	<!-- JAVASCRIPTS Mis Metodos-->
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/edicionSecciones.js"></script>	
	<script src="<%=request.getContextPath()%>/layout/js/complemento.js"></script>
	
	
		
	
			
	
	<!-- ################################################################################################ -->
<input type="hidden" id="idEmpresa" value="<s:property value='header.idEmpresa'/>" />

</body>
</html>
