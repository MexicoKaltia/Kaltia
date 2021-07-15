<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="es">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicono -->
<link href="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(1)'/>?v=1" rel="shortcut icon" type="image/x-icon" />

<!--  Titulo Encabezado HTML -->
<title><s:property value='header.headerSeccionArray5.get(0).objetoVO.get(0)' /></title>

<!-- Importacion Generales CSS -->
<link href="<%=request.getContextPath()%>/layout/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=request.getContextPath()%>/modelo/<s:property value='identidadVO.actionEstilo'/>/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- Importacion Plugins CSS -->
<link href="<%=request.getContextPath()%>/layout/css/jquery.roadmap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=request.getContextPath()%>/layout/css/lightbox.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=request.getContextPath()%>/layout/css/animate.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=request.getContextPath()%>/layout/css/validate/screen.css" rel="stylesheet" type="text/css" media="all">
<!-- Importacion Propias CSS -->
<link href="<%=request.getContextPath()%>/layout/css/edicion.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=request.getContextPath()%>/layout/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">


</head>
<div class="alerta">
		<hiden class="alerta_in"></hiden>
		<input type="hidden" id="version" value="23012020" />
	</div>