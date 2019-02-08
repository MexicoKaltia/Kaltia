<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>

<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace linklist">
        <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
        <s:iterator value='header.headerSeccion1' var="menu2Value">
		    <li><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>">
			<s:property value='#menu2Value.substring(0,#menu2Value.indexOf("."))' />
			</a></li>
		</s:iterator>       
      </ul>
    </div>
    <div class="fl_right">
      <ul class="nospace linklist">
        <li><i class="fa fa-phone"></i> <s:property value='header.headerSeccion2.get(0)' /></li>
		<li><i class="fa fa-envelope-o"></i> <s:property value='header.headerSeccion2.get(1)' /></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
    	  <h1><a href="<s:property value='identidadVO.idAction'/>">
          <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt="">
          <s:property value='header.idEmpresa'/>
      	  </a></h1>
    </div>
    <!-- ################################################################################################ -->
          <s:set var="idEmpresa" value="header.idEmpresa" />
				<nav id="mainav" class="fl_right">
					<ul class="clear">
						<li class="active"><a href="<%=request.getContextPath() + "/"%><s:property value='identidadVO.action'/>"><s:property value="#idEmpresa" /></a></li>
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
<div class="wrapper row2 bgded" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(4)' />?v=1');">
  <div class="overlay">
    <div id="intro" class="clear"> 
    
       <!-- <s:subset start="1" source ="header.headerSeccionArray2"> -->
       <s:iterator var="headerSeccionArray2" value ="header.headerSeccionArray2">
      <article class="<s:property value='#headerSeccionArray2.objetoVO.get(0)'/>">
        <h3 class="heading"><s:property value='#headerSeccionArray2.objetoVO.get(1)'/></h3>
        <ul class="nospace">
          <li><s:property value='#headerSeccionArray2.objetoVO.get(2)'/></li>
          <li><s:property value='#headerSeccionArray2.objetoVO.get(3)'/></li>
          <li><s:property value='#headerSeccionArray2.objetoVO.get(4)'/></li>
          <li><s:property value='#headerSeccionArray2.objetoVO.get(5)'/></li>
          <li><s:property value='#headerSeccionArray2.objetoVO.get(6)'/></li>
        </ul>
        <p class="link"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='#headerSeccionArray2.objetoVO.get(7)'/>"><s:property value='#headerSeccionArray2.objetoVO.get(8)'/> &raquo;</a></p>
      </article>
      </s:iterator>
      <!-- </s:subset> -->
    </div>
  </div>
</div>
<!-- ################################################################################################ -->
</body>
</html>