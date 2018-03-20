<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace inline">
        <li><i class="fa fa-phone"></i><s:property value='header.headerSeccion2.get(0)' /></li>
        <li><i class="fa fa-envelope-o"></i> <s:property value='header.headerSeccion2.get(1)' /></li>
      </ul>
    </div>
    <div class="fl_right">
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
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <div id="logo" class="fl_left">
      <h1><a href="<%=request.getContextPath() + "/"%><s:property value='identidadVO.idAction'/>"><s:property value='header.idEmpresa' /></a></h1>
    </div>
        <!-- ################################################################################################ -->
   <s:set var="idEmpresa" value="header.idEmpresa" />
				<nav id="mainav" class="fl_right">
					<ul class="clear">
						<li class="active"><a href="<%=request.getContextPath() + "/"%><s:property value='identidadVO.idAction'/>"><s:property value="#idEmpresa" /></a></li>			
						<s:iterator value='header.headerMenu.menu' var="menuValue">
							<li><a class="drop" href="<s:property value='identidadVO.idAction'/>/<s:property value='#menuValue.substring(#menuValue.lastIndexOf(".")+1,#menuValue.length())'/>">
							<s:property value='#menuValue.substring(0,#menuValue.indexOf("."))' /></a>
								<ul>
									<s:iterator value='header.headerMenu.subMenu' var="menuValueSub">
										<s:if test="#menuValue == #menuValueSub.menu">
											<s:iterator value='#menuValueSub.subMenu' var="menuSub">
												<li><a class="drop" href="<s:property value='identidadVO.idAction'/>/<s:property value='#menuSub.substring(#menuSub.lastIndexOf(".")+1,#menuSub.length())'/>">
												<s:property value ='#menuSub.substring(0,#menuSub.indexOf("."))'/></a>
													<ul>
													<s:iterator value="header.headerMenu.subSubMenu" var="menuValueSubSub">
															<s:if test="#menuSub == #menuValueSubSub.menuSub">
																<s:iterator value="#menuValueSubSub.subSubMenu" var="menuSubSub">
																	<li><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#menuSubSub.substring(#menuSubSub.lastIndexOf(".")+1,#menuSubSub.length())'/>">
																	<s:property value ='#menuSubSub.substring(0,#menuSubSub.indexOf("."))'/></a></li>
																</s:iterator>
															</s:if>
														</s:iterator>
													</ul>
												</li>
											</s:iterator>
										</s:if>
									</s:iterator>
								</ul></li>
						</s:iterator>
					</ul>
				</nav>
  </header>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row2 bgded" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccionArray2.get(0).objetoVO.get(0)' />');">
  <div class="overlay">
    <div id="breadcrumb" class="clear"> 

      <ul>
        <li><a href="<%=request.getContextPath() + "/"%><s:property value='identidadVO.idAction'/>">Home</a></li>
        <li><a href="<%=request.getContextPath() + "/"%><s:property value='identidadVO.idAction'/>"><s:property value='header.idEmpresa' /></a></li>
        <li><a href="#"><s:property value="subAction"/></a></li>
      </ul>
      <!-- ################################################################################################ -->
    </div>
  </div>
</div>
</body>
</html>