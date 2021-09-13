<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<body style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/fondo14.png?v=1');">
<div class="bodyQRD" id="bodyQRD">
	<h1 style="font-family:verdana;color:navy;">Menu</h1>
	
	
<!-- 	<ul class=""> -->
	<span style="position:absolute; right:1px;">
	<s:subset source="body.bodyQRD" start="0">
	<s:iterator var="bodyQRD">
		<a style="padding-right:50px;  color:navy;" href="#<s:property value='#bodyQRD.arrayObjetoVO.get(0).objetoVO.get(0)'/>"><s:property value='#bodyQRD.arrayObjetoVO.get(0).objetoVO.get(0)'/></a>
	    </s:iterator>
        </s:subset>
	</span>
	
    <div class="container">
    	<s:subset source="body.bodyQRD" start="0">
		<s:iterator var="bodyQRD">
    	 <div class="row">
            <div class="col-12"><h1 style="font-family:verdana;color:navy"><s:property value='#bodyQRD.arrayObjetoVO.get(0).objetoVO.get(0)'/></h1><a  id="<s:property value='#bodyQRD.arrayObjetoVO.get(0).objetoVO.get(0)'/>"></a>
            </div>
    		<s:subset source="#bodyQRD.arrayObjetoVO" start="1">
			<s:iterator var="bodyQRDObjeto">
				<div class="elemento  col-md-3 col-lg-3" style="padding-bottom:20px">
                <div class="card">
                   <a href="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodyQRDObjeto.objetoVO.get(0)'/>" data-lightbox="ligthboxBodySeccionArray0" data-title="">          		
                    <img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodyQRDObjeto.objetoVO.get(0)'/>" class="card-img-top" alt="..." />
				  </a>
                    <div class="card-body">
                    	<a href="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodyQRDObjeto.objetoVO.get(0)'/>" data-lightbox="ligthboxBodySeccionArray0" data-title="">
                        <h4 class="card-title" style="font-family:verdana;color:navy"><s:property value='#bodyQRDObjeto.objetoVO.get(1)'/></h4>
                        </a>
                        <p class="card-text" style="font-family:verdana;color:teal"><s:property value='#bodyQRDObjeto.objetoVO.get(2)'/></p>
                        <h5 style="font-family:verdana;color:teal"><s:property value='#bodyQRDObjeto.objetoVO.get(3)'/></h5>
                    </div>

                </div>
            </div>
				
			</s:iterator>
			</s:subset>
    	</div>
    	<hr>
        </s:iterator>
        </s:subset>
    </div>
    </div>
<%--     <s:set var="bodyQRD" value="<s:property value='body.bodyQRDJson'/>" /> --%>
    <input type="hidden" id="jsonQRDHidden" value="<s:property value='body.bodyQRDJson'/>"/>
<%--     <script type="text/javascript">var jsonQRD = <s:property value='#bodyQRD'/></script> --%>
<%--     <script type="text/javascript">var contaObjetoQRE = <s:property value='#conta'/></script> --%>
</body>
</html>
