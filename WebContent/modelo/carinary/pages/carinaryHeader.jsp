<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- ################################################################################################ -->
<html>	
<body id="top">
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <div id="logo" class="fl_left">
      <h1><a href="<s:property value='identidadVO.idAction'/>">
		<img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt="">
		<s:property value='header.idEmpresa'/>
	 </a></h1>
    </div>
    <div id="quickinfo" class="fl_right">
      <ul class="nospace inline">
        <li><strong>contacto:</strong><br>
          <s:property value='header.headerSeccion2.get(0)'/></li>
        <li><strong>Correo:</strong><br>
          <s:property value='header.headerSeccion2.get(1)'/></li>
      </ul>
    </div>
  </header>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row2">
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
</div>
<!-- ################################################################################################ -->

	<div class="bgded overlay"	style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(4)' />?v=1');">
		<div id="pageintro" class="hoc clear">
			<div class="flexslider basicslider">
				<ul class="slides">
					<s:iterator value='header.headerSeccionArray2' var="headerSeccionArray2">
						<li>
							<article>
								<h3 class="heading"><s:property value='#headerSeccionArray2.objetoVO.get(1)' /></h3>
								<p><s:property value='#headerSeccionArray2.objetoVO.get(2)' /></p>
								<footer><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#headerSeccionArray2.objetoVO.get(3)' />"><s:property value='#headerSeccionArray2.objetoVO.get(4)' /></a></footer>
								<p></p>
								
							</article>
						</li>
					</s:iterator>
				</ul>
			</div>
		</div>
	</div>
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccionArray3.get(0).objetoVO.get(0)' />?=v1');">
  <main class="hoc container clear"> 
    <!-- main body -->
    <ul class="nospace group services">
    <s:subset start="1" source ="header.headerSeccionArray3">
    <s:iterator var="headerSeccionArray3">
      <li class="<s:property value='#headerSeccionArray3.objetoVO.get(0)' />">
        <article><i class="<s:property value='#headerSeccionArray3.objetoVO.get(1)' />"></i>
          <h6 class="heading"><s:property value='#headerSeccionArray3.objetoVO.get(2)' /></h6>
          <p><s:property value='#headerSeccionArray3.objetoVO.get(3)' /> [&hellip;]</p>
          <footer><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#headerSeccionArray3.objetoVO.get(4)' />"><s:property value='#headerSeccionArray3.objetoVO.get(5)' /> &raquo;</a></footer>
        </article>
      </li>
      </s:iterator>
      </s:subset>
    </ul>
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- ################################################################################################ -->
</body>
</html>