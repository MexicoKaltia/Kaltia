<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
   	  	  <h1><a href="<s:property value='identidadVO.idAction'/>">
          <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt="">
          <s:property value='header.idEmpresa'/>
      	  </a></h1>    
    </div>
<s:set var="idEmpresa" value="header.idEmpresa" />
  <nav id="mainav" class="hoc clear"> 
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
<div class="wrapper bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(4)' />?v=1');">
  <div id="pageintro" class="hoc clear"> 
    <article>
      <h2 class="heading"><s:property value='header.headerSeccion4.get(0)'/></h2>
      <p><s:property value='header.headerSeccion4.get(1)'/></p>
      <footer><a class="btn" href="<s:property value='identidadVO.idAction'/>"><s:property value='header.headerSeccion4.get(3)'/></a></footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
</div>


</body>
</html>