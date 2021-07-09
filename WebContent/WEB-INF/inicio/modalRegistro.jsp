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
<div class="modal fade" id="modalRegistroB" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content"
			style="background-image:url('http://kaltiaservicios.com/store/kaltia/modelo/modal/imagen.jpg?v=1');">
			<div class="modal-header">
				<label class="sizeEtiqueta colorLabel"><s:property value='identidadVO.nombreCorto'/> - Registro Cliente</label>
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
		                <form class="form-horizontal" method="post">
		                	<fieldset>
<!-- 		                    <legend class="text-center header"><label><s:property value='identidadVO.empresa'/> - Registo Cliente</label></legend> -->
		                    <div class="form-group row">
		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-user bigicon"></i></span>
		                      <div class="col-7">
		                        <input id="nombreRegistroB"  name="name" type="text" placeholder="Nombre(s) Apellido" class="form-control" maxlength="40">
		                      </div>
		                    </div>
<!-- 		                    <div class="form-group row"> -->
<%-- 		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-user bigicon"></i></span> --%>
<!-- 		                      <div class="col-7"> -->
<!-- 		                        <input id="apellidoRegistro" name="name" type="text" placeholder="Apellidos" class="form-control" maxlength="40"> -->
<!-- 		                      </div> -->
<!-- 		                    </div> -->
		
		                    <div class="form-group row">
		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-envelope bigicon"></i></span>
		                      <div class="col-7">
		                        <input id="emailRegistroB" name="email" type="email" placeholder="Email" class="form-control" maxlength="40">
		                      </div>
		                    </div>
		
		                    <div class="form-group row">
		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-phone-square bigicon"></i></span>
		                      <div class="col-7">
		                        <input id="telefonoRegistroB" name="phone" type="tel" placeholder="Num Telefono" class="form-control" maxlength="20">
		                      </div>
		                    </div>
		                    <div class="form-group row">
					          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-address-book bigicon"></i></span>
					          <div class="col-7">
								<input type="text" id="usuarioRegistroB" value="" placeholder="Digita Usuario" class="form-control" maxlength="11">
					          </div>
					        </div>
					        <div class="form-group row">
					          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-circle bigicon"></i></span>
					          <div class="col-7">
								<input type="password" id="passRegistro1B" value="" placeholder="Password" class="form-control" maxlength="20">
					          </div>
					        </div>
					        <div class="form-group row">
					          <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-circle bigicon"></i></span>
					          <div class="col-7">
								<input type="password" id="passRegistro2B" value="" placeholder="Confirma Password" class="form-control" maxlength="20">
					          </div>
					        </div>
				
		                    <div class="form-group row">
		                      <span class="col-3 col-form-label text-right colorLabel"><i class="fa fa-2x fa-pencil-square-o bigicon"></i></span>
		                      <div class="col-7">
		                        <textarea class="form-control" id="messageRegistroB" name="message" placeholder="Captura tu mensaje, en breve un asesor se pondrá en contacto. Gracias" rows="4"></textarea>
		                      </div>
		                    </div>		
		                </fieldset>
		                
		              </form>
		            
		      </div>
		      <!--**********************************************************************************-->
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn" id="modal_btnClose">Cerrar</a>
				<a href="#" class="btn btn-primary" id="btnSaveRegistroB">Guardar</a>
			</div>
		</div>
	</div>
</div>
<!-- FIN modalREGISTRO -->
<!--**********************************************************************************-->

<script>

</script>
</body>
</html>