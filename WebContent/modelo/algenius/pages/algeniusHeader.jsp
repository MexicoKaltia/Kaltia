<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="">
<body>
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left headerSeccion2" id="headerSeccion2">
      <ul>
        <li><i class="fa fa-phone"></i> <s:property value='header.headerSeccion2.get(0)' /></li>
		<li><i class="fa fa-envelope-o"></i> <s:property value='header.headerSeccion2.get(1)' /></li>
      </ul>
    </div>
  <!-- ################################################################################################ -->
    <div class="fl_right headerSeccion1" id="headerSeccion1">
      <ul>
        <li><a href="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>"><i class="fa fa-lg fa-home"></i></a></li>
        <s:iterator value='header.headerSeccion1' var="menu2Value">
			<li><a class="validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>">
				<s:property value='#menu2Value.substring(0,#menu2Value.indexOf("."))' />
				<%--    Identificando secciones
 			   	href="<s:property value='identidadVO.idAction'/>/<s:property value='#menu2Value.substring(#menu2Value.lastIndexOf(".")+1,#menu2Value.length())'/>"> --%>
			</a></li>
		</s:iterator>
      </ul>
    </div>
  </div>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row1 parallax">
	  <header id="header" class="hoc clear aniview reallyslow" data-av-animation="bounceInUp" > 
	    <div id="logo" class="fl_left">
		  	  <h1><a href="<s:property value='identidadVO.idAction'/>">
<%-- 	          <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt=""> --%>
			  <img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)'/>?v=1" alt="" style="max-width: 3.0em; max-height: 3.0em">
	          <s:property value='header.idEmpresa'/>
	      	  </a></h1>    
	    </div>
	    <div id="quickinfo" class="fl_right">
	      <ul class="nospace inline">
	      <s:iterator value='header.headerSeccionArray4' var="headerSeccionArray4">
	        <li><strong><s:property value='#headerSeccionArray4.objetoVO.get(0)' /></strong></li>
	          <li><s:property value='#headerSeccionArray4.objetoVO.get(1)' /></li><br>
	          <li><s:property value='#headerSeccionArray4.objetoVO.get(2)' /></li>
	      </s:iterator>
	      </ul>
	    </div>
	   </header>
</div>
<!-- ################################################################################################ -->
<div  class="wrapper row2 headerSeccionArray5 aniview reallyslow" data-av-animation="bounceInRight"  id="headerSeccionArray5">	
        <nav class="navbar navbar-expand-md" style="font-size:1.25em;text-transform:uppercase;">       
<%--             <h1><a class="navbar-brand" href="<s:property value='identidadVO.idAction'/>"> --%>
<%-- <%-- 					   <img src="<%=request.getContextPath()%>/empresa/<s:property value='identidadVO.idAction'/>/images/<s:property value='header.headerSeccion3.get(3)'/>?v=1" alt="">  --%> 
<%-- 						<img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(2)'/>?v=1" alt="" style="max-width: 3.0em; max-height: 3.0em"> --%>
<%-- 			           <s:property value='header.idEmpresa'/> --%>
<!-- 			      	</a></h1> -->
			      	
            <button class="navbar-toggler navbar-brand navbar-dark" type="button" data-toggle="collapse" data-target="#navbar-collapse" style="text-transform:uppercase;"><span class="fa fa-2x fa-navicon" style="color:#562351;text-transform:uppercase;"></span>     <s:property value='header.idEmpresa'/></button> 
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav ml-auto">
				         <s:set var="seccion" value="1" />
				           <s:subset source="header.headerSeccionArray5" start="1">  
		    			<s:iterator  var ="headerSeccionArray5">
		    			<s:iterator  value ="#headerSeccionArray5.objetoVO">
					       	<li class="nav-item " ><a class="nav-link" href="#seccion<s:property value="#seccion"/>"><s:property/></a></li>
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
</div>		
<!-- ################################################################################################ -->	
<div class="headerSeccion4 aniview reallyslow" data-av-animation="bounceInLeft" id="headerSeccion4" >
	<div class="wrapper bgded overlay parallax" style="background-image:url('<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='header.headerSeccionArray5.get(0).objetoVO.get(3)'/>?v=1');">
		<a  id="seccion1"></a>
	  <article id="pageintro" class="hoc clear">  
	    <h3 class="heading">
	    	<s:property value='header.headerSeccion4.get(0)'/>
	    </h3>
	    <p>
	    	<s:property value='header.headerSeccion4.get(1)'/>
	    </p>
	    <footer>
	        	<a class="btn inverse validaUsuarioEmpresa" data-toggle="modal" data-target="#modal<s:property value='header.headerSeccion4.get(2)'/>">
	        		<s:property value='header.headerSeccion4.get(3)'/>
	        	</a>
<%-- referencia a nuevo link	    	<a class="btn" href="<s:property value='identidadVO.idAction'/>/<s:property value='header.headerSeccion4.get(2)'/>"><s:property value='header.headerSeccion4.get(3)'/></a> --%>
	    </footer>
	  </article>
	</div>
</div>
</body>
</html>