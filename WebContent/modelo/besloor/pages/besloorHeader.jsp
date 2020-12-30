<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<html lang="es">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"> -->
</head>
<body id="top">
<!-- Top Background Image Wrapper -->
<div class="bgded overlay parallax" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(3)'/>?v=1');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row0">
    <div id="topbar" class="hoc clear"> 
      <div class="fl_left headerSeccion2 aniview reallyslow" data-av-animation="slideInRight"> 
        <ul class="nospace">
          <li><i class="fas fa-phone"></i><s:property value='header.headerSeccion2.get(0)' /></li>
          <li><i class="far fa-envelope"></i> <s:property value='header.headerSeccion2.get(1)' /></li>
        </ul>
      </div>
      <div class="fl_right"> 
        <ul class="nospace">
          <li><a href="index.html"><i class="fas fa-home"></i></a></li>
          <li><a href="#" title="Help Centre"><i class="fas fa-life-ring"></i></a></li>
          <li><a href="#" title="Login"><i class="fas fa-sign-in-alt"></i></a></li>
          <li><a href="#" title="Sign Up"><i class="fas fa-edit"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- ################################################################################################ -->
  <div class="wrapper row1 headerSeccionArray5" id="headerSeccionArray5">
    <header id="header" class="hoc clear">
	    <nav class="navbar  navbar-expand-md navbar-dark" style="font-size:1.0em;text-transform:uppercase;">
            <h1><a class="navbar-brand" style="font-size:1.3em;" href="<s:property value='identidadVO.idAction'/>">
<%-- 					   <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt="">  --%>
						<img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)'/>?v=1" alt="" style="max-width: 3.0em; max-height: 3.0em">
			           <s:property value='identidadVO.nombreCorto'/>
			      	</a></h1>
			      	
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse"><span class="navbar-toggler-icon"></span></button> 
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav ml-auto">
                         <s:set var="seccion" value="1" />
				           <s:subset source="header.headerSeccionArray5" start="1">  
		    			<s:iterator  var ="headerSeccionArray5">
		    			<s:iterator  value ="#headerSeccionArray5.objetoVO">
					       	<li class="nav-item" ><a class="nav-link" style="color:white" href="#seccion<s:property value="#seccion"/>"><s:property/></a></li>
				       	 <s:set var="seccion" value="#seccion+1" />
				       	 </s:iterator>
				           </s:iterator>
		           		</s:subset>

<!--                     <li class="nav-item dropdown"> -->
<!--                         <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a> -->
<!--                         <div class="dropdown-menu dropdown-menu-right"> -->
<!--                             <a class="dropdown-item" href="#">Action</a> -->
<!--                             <a class="dropdown-item" href="#">Another action</a> -->
<!--                             <a class="dropdown-item" href="#">Something else here</a> -->
<!--                             <div class="dropdown-divider"></div> -->
<!--                             <a class="dropdown-item" href="#">Separated link</a> -->
<!--                         </div> -->
<!--                     </li> -->
                </ul>
            </div>
        </nav>
	    
	</header>		
  </div>
  <!-- ################################################################################################ -->
  <a  id="seccion1"></a>
	<div id="pageintro" class="hoc clear headerSeccion4 aniview reallyslow" data-av-animation="slideInDown"> 
    <article class="center">
      <h3 class="heading underline"><s:property value='header.headerSeccion4.get(0)'/></h3>
      <p><s:property value='header.headerSeccion4.get(1)'/></p>
      <footer><a class="btn" href="<s:property value='header.headerSeccion4.get(2)'/>"><s:property value='header.headerSeccion4.get(3)'/></a></footer>
    </article>
  </div>
  
  <!-- End Top Background Image Wrapper -->
</div>


</body>
</html>