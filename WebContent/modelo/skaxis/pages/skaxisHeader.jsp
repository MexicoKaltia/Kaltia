<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>	
<body id="top">
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(4)' />?v=1');"> 
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <div id="logo" class="fl_left">
        <h1><a href="<s:property value='identidadVO.idAction'/>">
		<img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt="">
		<s:property value='header.idEmpresa'/>
	 </a></h1>
      </div>
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
  <div id="pageintro" class="hoc clear"> 
    <div class="flexslider basicslider">
      <ul class="slides">
      <s:iterator value='header.headerSeccionArray2' var="headerSeccionArray2">
      	<li>
      	<article>
      	<div class="one_half first">
            <p><s:property value='#headerSeccionArray2.objetoVO.get(0)' /></p>
            <h3 class="heading"><s:property value='#headerSeccionArray2.objetoVO.get(1)' /></h3>
            <p><s:property value='#headerSeccionArray2.objetoVO.get(2)' /></p>
            </div>
      	<div class="one_half">
            <a aline='center' href="<s:property value='identidadVO.idAction'/>/<s:property value='#headerSeccionArray2.objetoVO.get(3)' />">
            <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='#headerSeccionArray2.objetoVO.get(4)' />" alt=""></a>
		</div><br>
           <s:if test='#headerSeccionArray2.objetoVO.get(5).startWith("Email")'>
            <footer>
              <form class="group" method="post" action="#">
                <fieldset>
                  <legend>Sign-Up:</legend>
                  <input type="email" value="" placeholder="Email Here&hellip;">
                  <button class="fa fa-sign-in" type="submit" title="Submit"><em><s:property value='#headerSeccionArray2.objetoVO.get(5)' /></em></button>
                </fieldset>
              </form>
            </footer>
            </s:if>
            <s:else>
            <footer><br><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='#headerSeccionArray2.objetoVO.get(3)' />">
            <s:property value='#headerSeccionArray2.objetoVO.get(6)' /></a></footer>
            </s:else>
         </article>
        </li>
      </s:iterator>
      </ul>
    </div>
  </div>
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
  
<div class="wrapper">
  <div class="hoc clear"> 
    <figure id="introblocks">
      <ul class="nospace group">
        <li class="one_third first"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(0)' />">
        <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion4.get(1)' />" alt=""></a></li>
        <li class="one_third"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(2)' />">
        <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion4.get(3)' />" alt=""></a></li>
        <li class="one_third"><a href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(4)' />">
        <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion4.get(5)' />" alt=""></a></li>
      </ul>
    </figure>
    <p class="center"><a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(6)' />">
    <s:property value='header.headerSeccion4.get(7)' /></a></p>
  </div>
</div>
</body>
</html>