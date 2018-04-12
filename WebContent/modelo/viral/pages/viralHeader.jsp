<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="en">	
<body id="top">
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
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
	
<form class="form-signin" action="<%=request.getContextPath() + "/"%><s:property value='identidadVO.idAction'/>/ingresar" method="post">				
 <div id="accordion" role="tablist" class="centrar">
  <div class="card">
    <div class="card-header" role="tab" id="headingTwo">
      <h3 class="mb-0">
        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			<h1>
			<img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt="">
			<s:property value='header.idEmpresa'/>
	 		</h1>
        </a>
      </h3>
    </div>
    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="card-body">
        <div class="input-group input-group-sm">
          <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-sm">User</span>
          </div>
          <input type="text" name="loginVO.user" class="form-control" aria-label="user" aria-describedby="inputGroup-sizing-sm" required>
        </div>
        <div class="input-group input-group-sm">
          <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-sm">Pass</span>
          </div>
          <input type="password" name="loginVO.pass" class="form-control" aria-label="user" aria-describedby="inputGroup-sizing-sm" required>
        </div>        
        <button type="submit" class="btn btn-success">Ingresar</button>
      </div>
    </div>
  </div>
</div>
</form>
</div>
    <!-- ################################################################################################ -->
   			<s:set var="idEmpresa" value="header.idEmpresa" />
				<nav id="mainav" class="fl_right">
					<ul class="clear">
						<li class="active"><a href="<%=request.getContextPath() + "/"%><s:property value='identidadVO.idAction'/>"><s:property value="#idEmpresa" /></a></li>			
						<s:iterator value='header.headerMenu.menu' var="menuValue">
							<li><a class="drop" href="<s:property value='#menuValue.substring(#menuValue.lastIndexOf(".")+1,#menuValue.length())'/>">
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

<div class="wrapper row2 bgded" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(4)'/>?v=1');">
<a id="nosotros">
  <div class="overlay">
    <section id="pageintro" class="clear"> 
      <div class="center btmspace-80">
        <h2 class="heading xxl uppercase btmspace-30"><s:property value='header.headerSeccionArray2.get(0).objetoVO.get(0)'/></h2>
        <p class="xl nospace capitalise"><s:property value='header.headerSeccionArray2.get(0).objetoVO.get(1)'/></p>
      </div>
      <ul class="nospace group services">
          <s:subset start="1" source ="header.headerSeccionArray2">
    		<s:iterator var="headerSeccionArray2">
        <li class="<s:property value='#headerSeccionArray2.objetoVO.get(0)'/>">
          <article class="overlay"><a href="#"><i class="<s:property value='#headerSeccionArray2.objetoVO.get(1)'/>"></i></a>
            <h6 class="heading"><s:property value='#headerSeccionArray2.objetoVO.get(2)'/></h6>
            <p><s:property value='#headerSeccionArray2.objetoVO.get(3)'/>&hellip;</p>
            <footer><a href="<s:property value='#headerSeccionArray2.objetoVO.get(4)'/>"><s:property value='#headerSeccionArray2.objetoVO.get(5)'/> &raquo;</a></footer>
          </article>
        </li>
        </s:iterator>
        </s:subset>
      </ul>
    </section>
  </div>
  </a>
</div>

<!-- ################################################################################################ -->
</body>
</html>