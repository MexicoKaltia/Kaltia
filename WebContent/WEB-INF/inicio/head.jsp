<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(1)' />?v=1" rel="shortcut icon" type="image/x-icon" />
<title><s:property value='header.headerSeccion3.get(0)' /></title>

<link  href="<%=request.getContextPath()%>/layout/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all">


<link href="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/styles/layout.css"
	rel="stylesheet" type="text/css" media="all">
	
	
<link href="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/css/complemento.css"
	rel="stylesheet" type="text/css" media="all">
	
</head>
</html>