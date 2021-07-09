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
	<script src="<%=request.getContextPath()%>/layout/js/jquery.aniview.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/validate/jquery.validate.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/validate/messages_es.js"></script>
	
	
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
	<script src="<%=request.getContextPath()%>/layout/js/productos.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/validateForms.js"></script>
	
	
		
	
			
	
	<!-- ################################################################################################ -->
<input type="hidden" id="idEmpresa" value="<s:property value='header.idEmpresa'/>" />
<input type="hidden" id="idAction" value="<s:property value='identidadVO.action'/>" />
<input type="hidden" id="idModelo" value="<s:property value='identidadVO.actionEstilo'/>" />
<input type="hidden" id="nombreCorto" value="<s:property value='identidadVO.nombreCorto'/>" />
<input type="hidden" id="productos" value="<s:property value='productos'/>" />

</body>
</html>
