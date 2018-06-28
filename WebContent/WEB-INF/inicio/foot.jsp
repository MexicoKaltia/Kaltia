<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<body>	
			<!-- JAVASCRIPTS -->
	<script src="<%=request.getContextPath()%>/layout/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/prefixfree.min.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.backtotop.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.mobilemenu.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.flexslider-min.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/sss/sss.min.js"></script>
	<script src="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/scripts/jquery.easypiechart.min.js"></script>

	<script src="<%=request.getContextPath()%>/layout/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/layout/js/complemento.js"></script>
	<!-- ################################################################################################ -->

	<span id="headerSeccion1_valores" hidden="true"> 
	<s:property value='header.headerSeccion1' />
	</span>
	<span id="headerSeccion2_valores" hidden="true"> 
	<s:property value='header.headerSeccion2' />
	</span>

</body>
</html>
