<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left headerSeccion2" id="headerSeccion2">
      <ul class="nospace">
        <li><i class="fa fa-phone"></i> <s:property value='header.headerSeccion2.get(0)' /></li>
		<li><i class="fa fa-envelope-o"></i> <s:property value='header.headerSeccion2.get(1)' /></li>
      </ul>
    </div>
    <div class="fl_right headerSeccion1" id="headerArraySeccion1"><!-- reconfigurar seccion para ser ejecutada por headerArraySeccion1 -->
      <ul class="nospace">
        <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
        <s:iterator value='header.headerSeccion1' var="menu2Value">
				<li><a class="validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>">
						<s:property value='#menu2Value.substring(0,#menu2Value.indexOf("."))' />
						<%--    Identificando secciones
 				    	href="<s:property value='identidadVO.idAction'/>/<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>"> --%>
				</a></li>		</s:iterator>
      </ul>
    </div>
  </div>
</div>
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<!-- **RECONFIGURAR EL MENU EN BASE A headerSeccionArray5 -->
<div class="bgded overlay" style="background-image:url('<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(4)' />?v=1');" > 
  <div class="wrapper row1">
	  <div class="headerArraySeccion5" id="headerArraySeccion5">
	    <header id="header" class="hoc clear">
					<div id="logo" class="fl_left ">
						<h1>
							<a href="<s:property value='identidadVO.idAction'/>"> 
	<%-- 					   <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt="">  --%>
								<img
								src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)'/>?v=1"
								alt="" style="max-width: 3.0em; max-height: 3.0em"> <s:property
									value='header.idEmpresa' />
							</a>
						</h1>
						<div class="collapse navbar-collapse menuInterno"
							style="color: white" id="collapsibleNavbar">
							<ul class="list-group">
								<!-- 						<li><a href="#">Home</a></li> -->
								<s:set var="seccion" value="1" />
								<s:subset source="header.headerSeccionArray5" start="1">
									<s:iterator var="headerSeccionArray5">
										<s:iterator value="#headerSeccionArray5.objetoVO">
											<li class="navbar"><a
												href="#seccion<s:property value="#seccion"/>"><s:property /></a></li>
											<s:set var="seccion" value="#seccion+1" />
										</s:iterator>
									</s:iterator>
								</s:subset>
							</ul>
						</div>
					</div>
	
					<div>
						<nav id="mainav" class="fl_right">
							<ul class="clear">
								<li class="active"><a href="#">Home</a></li>
								<s:set var="seccion" value="1" />
								<s:subset source="header.headerSeccionArray5" start="1">
									<s:iterator var="headerSeccionArray5">
										<s:iterator value="#headerSeccionArray5.objetoVO">
											<li><a href="#seccion<s:property value="#seccion"/>"><s:property /></a></li>
											<s:set var="seccion" value="#seccion+1" />
										</s:iterator>
									</s:iterator>
								</s:subset>
							</ul>
						</nav>
					</div>
					<div id="navInterno" class="fl_right">
						<nav class="navbar-inverse">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#collapsibleNavbar">
								<span class="fa fa-3x fa-angle-double-down"></span>
							</button>
						</nav>
					</div>

			</header>
		</div>	
    <!-- ################################################################################################ -->
	    <div class="headerSeccion4"> 
	    <div id="pageintro" class="hoc clear">
	      <article>
	        <h2 class="heading"><s:property value='header.headerSeccion4.get(0)'/></h2>
	        <p><s:property value='header.headerSeccion4.get(1)'/></p>
	        <footer>
	        	<a class="btn inverse validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='header.headerSeccion4.get(2)'/>">
	        		<s:property value='header.headerSeccion4.get(3)'/>
	        	</a>
	        </footer>
	      </article>
	    </div>
	    </div>
    </div>
    <!-- ################################################################################################ -->
  
</div>
</body>
</html>