<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<body id="top">

<form class="form-signin" action="<%=request.getContextPath() + "/"%><s:property value='identidadVO.idAction'/>/altaAction" method="post">				
 <div id="accordion" role="tablist" class="centrar">
  <div class="card">
    <div class="card-header" role="tab" id="headingTwo">
      <h3 class="mb-0">
        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			Alta Action
        </a>
      </h3>
    </div>
    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="card-body">
        <div class="input-group input-group-sm">
          <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-sm">Action</span>
          </div>
          <input type="text" name="identidadVO.action" class="form-control" aria-label="user" aria-describedby="inputGroup-sizing-sm" required>
        </div>
        <div class="input-group input-group-sm">
          <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-sm">Empresa</span>
          </div>
          <input type="text" name="identidadVO.empresa" class="form-control" aria-label="user" aria-describedby="inputGroup-sizing-sm" required>
        </div>
        <div class="input-group input-group-sm">
          <div class="input-group-prepend">
            <span class="input-group-text" id="inputGroup-sizing-sm">Estilo</span>
          </div>
          <input type="text" name="identidadVO.actionEstilo" class="form-control" aria-label="user" aria-describedby="inputGroup-sizing-sm" required>
        </div>
        
        <button type="submit" class="btn btn-success">Ingresar</button>
        
      </div>
    </div>
  </div>
</div>
</form>


</body>
</html>