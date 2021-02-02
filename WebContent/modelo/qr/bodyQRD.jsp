<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>

<body background="images/fondo11.png">
<div class="bodyQRD" id="bodyQRD">
	<h2>Menu</h2>
    <div class="container">
    	<s:subset source="body.bodyQRD" start="0">
		<s:iterator var="bodyQRD">
    	 <div class="row">
            <div class="col-12"><h1><s:property value='#bodyQRD.arrayObjetoVO.get(0).objetoVO.get(0)'/></h1>
            </div>
    		<s:subset source="#bodyQRD.arrayObjetoVO" start="1">
			<s:iterator var="bodyQRDObjeto">
				<div class="elemento  col-md-6 col-lg-4" >
                <div class="card">
                   <a href="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodyQRDObjeto.objetoVO.get(0)'/>" data-lightbox="ligthboxBodySeccionArray0" data-title="">          		
                    <img src="<s:property value='identidadVO.ambiente'/><s:property value='identidadVO.action'/>/images/<s:property value='#bodyQRDObjeto.objetoVO.get(0)'/>" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h5 class="card-title"><s:property value='#bodyQRDObjeto.objetoVO.get(1)'/></h5>
                        <p class="card-text">
                            <s:property value='#bodyQRDObjeto.objetoVO.get(2)'/>
                        </p>
                        <a href="#!" class="btn btn-primary">Ordena</a>
                    </div>
                    </a>
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
