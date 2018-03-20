<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <style media="screen">
  body{
background: url("<%=request.getContextPath()%>/props/404.jpg") no-repeat center center fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
}
  </style>
</head>
<body>

<h1><a href="#"><s:property value="identidadVO.codigoVO" /> </a></h1>
<h1><a href="#"><s:property value="identidadVO.mensajeVO" />  </a></h1>
<h1><a href="#"><s:property value="identidadVO.idAction" />  </a></h1>

<h2><a href="#"><s:property value="baseVO.codigoVO" /> </a></h2>
<h2><a href="#"><s:property value="baseVO.mensajeVO" /> </a></h2>

<h3><a href="#"><s:property value="userPrimarioVO.codigoVO" /> </a></h3>
<h3><a href="#"><s:property value="userPrimarioVO.mensajeVO" /> </a></h3>



</body>
</html>