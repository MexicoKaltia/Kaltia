<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
<!-- ############################################################################################################################### -->
<div>
<h3>upload</h3>

<s:form action="fileUpload" method="POST" enctype="multipart/form-data"> 

<s:file name="fileUpload" label="Select a File to upload" accept="text/*" /> <!-- size="400"  -->

<s:submit value="submit" name="submit" />

</s:form>
</div>
<!-- ############################################################################################################################### -->
  <div>
    <form action="altaAction">
    <table>
      <tr>
        <td><input type="text" name="actionVO.idAction" placeholder="idAction"></td>
      </tr>
      <tr>
        <td><input type="text" name="actionVO.idEmpresa" placeholder="idEmpresa"></td>
      </tr>
      <tr>
        <td><textarea name="name" rows="8" cols="80" name="actionVO.descAction" placeholder="descAction"></textarea></td>
      </tr>
      <tr>
        <td><label for="">actionPrincipal</label></td>
        <td><input type="checkbox" name="actionVO.actionPrincipal" value="actionPrincipal" checked="false"></td>
      </tr>
      <tr>
        <td><label for="">headerRequerido</label></td>
        <td><input type="checkbox" name="actionVO.headerRequerido" checked></td>
      </tr>
      <tr>
        <td><label for="">bodyRequerido</label></td>
        <td><input type="checkbox" name="actionVO.bodyRequerido" value="actionVO.bodyRequerido" checked></td>
      </tr>
      <tr>
        <td><label for="">footerRequerido</label></td>
        <td><input type="checkbox" name="actionVO.footerRequerido" placeholder="footerRequerido"></td>
      </tr>
      <tr>
        <td><label for="">leftRequerido</label></td>
        <td><input type="checkbox" name="actionVO.leftRequerido" placeholder="leftRequerido"></td>
      </tr>
      <tr>
        <td><label for="">rigthRequerido</label></td>
        <td><input type="checkbox" name="actionVO.rigthRequerido" placeholder="rigthRequerido"></td>
      </tr>
      <td><input type="submit" value="altaAction"></td>
    </table>
    </form>
  </div>
  <!-- ####################################################################################################33 -->
    <div>
    <form action="altaHeader">
      <table>
        <tr>
          <td><input type="text" name="headerVO.idHeader" placeholder="idHeader"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.idEmpresa" placeholder="idEmpresa"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.idPagina" placeholder="idPagina"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerContacto" placeholder="headerContacto"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerCorreo" placeholder="headerCorreo"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerLogo" placeholder="headerLogo"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerFondo" placeholder="headerFondo"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerEstilo" placeholder="headerEstilo"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerJs" placeholder="headerJs"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerMenu0" placeholder="headerMenu"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerVarios" placeholder="headerVarios"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerTitulo" placeholder="headerTitulo"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerIcono" placeholder="headerIcono"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerSlogan" placeholder="headerSlogan"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerAuxiliar1" placeholder="headerMenu2"></td>
        </tr>
        <tr>
          <td><input type="text" name="headerVO.headerAuxiliar2" placeholder="headerButton"></td>
        </tr>
          <td><input type="submit"  value="altaHeader"></td>
      </table>
    </form>
  </div>
  <!-- ############################################################################################# -->
  <div>
  <form action="altaBody">
    <table>
      <tr>
        <td><input type="text" name="bodyVO.idBody" placeholder="idBody"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.idEmpresa" placeholder="idEmpresa"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyVarios" placeholder="bodyVarios"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.idPagina" placeholder="idPagina"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyEstilo" placeholder="bodyEstilo"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyJs" placeholder="bodyJs"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyFondo" placeholder="bodyFondo"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto1Aux" placeholder="bodyTexto1"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto2Aux" placeholder="bodyTexto2"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto3Aux" placeholder="bodyTexto3"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto4Aux" placeholder="bodyTexto4"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto5Aux" placeholder="bodyTexto6"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto7Aux" placeholder="bodyTexto7"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto8Aux" placeholder="bodyTexto8"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto9Aux" placeholder="bodyTexto9"></td>
      </tr>
      <tr>
        <td><input type="text" name="bodyVO.bodyTexto10Aux" placeholder="bodyTexto10"></td>
      </tr>
      <tr>
        <td><input type="submit" value="altaBody"></td>
      </tr>
    </table>
  </form>
</div>
<!-- ########################################################################################################## -->
<div>
  <form action="altaFooter">
    <table>
      <tr>
        <td><input type="text" name="footerVO.idFooter" placeholder="idFooter"></td>
      </tr>
      <tr>
        <td><input type="text" name="footerVO.idEmpresa" placeholder="idEmpresa"></td>
      </tr>
      <tr>
        <td><input type="text" name="footerVO.idPagina" placeholder="idPagina"></td>
      </tr>
      <tr>
        <td><input type="text" name="footerVO.footerLista1Aux" placeholder="footerLista1"></td>
      </tr>
      <tr>
        <td><input type="text" name="footerVO.footerLista2Aux" placeholder="footerLista2"></td>
      </tr>
      <tr>
        <td><input type="text" name="footerVO.footerLista3Aux" placeholder="footerLista3"></td>
      </tr>
      <tr>
        <td><input type="text" name="footerVO.footerVariosAux" placeholder="footerVarios"></td>
      </tr>
      <tr>
        <td><input type="text" name="footerVO.footerCopyrigthAux" placeholder="footerCopyrigth"></td>
      </tr>
      <tr>
        <td><input type="text" name="footerVO.footerRedesAux" placeholder="footerRedes"></td>
      </tr>
      <td><input type="submit" value="altaFooter"></td>
    </table>
  </form>
</div>
</body>
</html>
