<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<!--**********************************************************************************-->
<!-- modalRegistro -->
<div class="modal fade" id="modalContacto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content"
			style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<label class="sizeEtiqueta colorLabel"><s:property value='identidadVO.nombreCorto'/> - Contacto Cliente</label>
				<br>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="modal_btnClose">
					<span aria-hidden="true">&times;</span>
				</button>
					<div class="alerta">
						<hiden class="alerta_in"></hiden>
				</div>
			</div>
			<!--**********************************************************************************-->
			<div class="modal-body">
		              	<br>
		                <form class="form-horizontal" id="modalFormContacto" method="post">
		                	<fieldset>
		                    <div class="form-group row">
		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-user bigicon"></i></span>
		                      <div class="col-7">
		                        <input id="nombreRegistro"  name="nombreRegistro" type="text" placeholder="Nombre(s) Apellido" class="form-control" maxlength="50" required>
		                      </div>
		                    </div>
		
		                    <div class="form-group row">
		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-envelope bigicon"></i></span>
		                      <div class="col-7">
		                        <input id="emailRegistro" name="emailRegistro" type="email" placeholder="Email" class="form-control" maxlength="40" required>
		                      </div>
		                    </div>
		
		                    <div class="form-group row">
		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-phone-square bigicon"></i></span>
		                      <div class="col-7">
		                        <input id="telefonoRegistro" name="telefonoRegistro" type="tel" placeholder="Num Telefono 55-12345678" class="form-control"  maxlength="10" pattern="[0-9]{2}-[0-9]{8}" required>
		                      </div>
		                    </div>
		                
		                    <div class="form-group row">
		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-edit bigicon"></i></span>
		                      <div class="col-7">
		                        <textarea class="form-control" id="messageRegistro" name="messageRegistro" placeholder="Captura tu mensaje, en breve un asesor se pondrá en contacto. Gracias" rows="4"></textarea>
		                      </div>
		                    </div>		
		                </fieldset>
<!-- 		                <input type="submit"> -->
		              </form>
		            
		      </div>
		      <!--**********************************************************************************-->
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="modal_btnClose">Cerrar</a>
				<a href="#" class="btn btn-primary" id="btnSaveRegistro">Guardar</a>
			</div>
		</div>
	</div>
</div>
<!-- FIN modalREGISTRO -->
<!--**********************************************************************************-->




</body>
</html>