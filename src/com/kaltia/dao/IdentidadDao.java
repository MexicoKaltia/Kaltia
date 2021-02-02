package com.kaltia.dao;

import java.util.ArrayList;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.JSONObject;

import com.kaltia.infra.BaseInfra;
import com.kaltia.infra.ComunResolution;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.EmpresaVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;
import com.kaltia.vo.MenuVO;
import com.kaltia.vo.ModulosVO;
import com.kaltia.vo.QRRVO;
import com.kaltia.vo.resource.ArrayObjetoVO;
import com.kaltia.vo.resource.ObjetoVO;

public class IdentidadDao {

	public IdentidadDao() {

		// ArrayList<String> returnDAO = new ArrayList<String>();

	}
	
	//private IdentidadVO identidadVO ;
//	private static ArrayList<Object> returnDAO = new ArrayList<Object>();
	
	//private ArrayList<Object> arrReturnDAO = new ArrayList<Object>();
	static final Logger logger = LogManager.getLogger(IdentidadDao.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;
	

	public EmpresaVO qryEmpresa(String action) throws SQLException {
		
		/*
		 * Implementar un StoreProcedure, que verifique el status de la empresa
		 * 
		 * Metodo valida empresa con los siguientes atributos: 
		 * 0.-exista la empresa
		 * 1.-sincronia de datos generales 
		 * 2.-licencia activa
		 * 
		 * public String inicioEm(String action) {
		 * 
		 * String codigoInicioEm = validaEmpresa(action);
		 * 
		 * return codigoInicioEm; }
		 */
		ArrayList<Object> returnDAO = new ArrayList<Object>();
		EmpresaVO empresaVO = new EmpresaVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(action);

		String sql = "SELECT empresaNombreCorto, empresaStatus"
				+ "  FROM tc_empresa  " 
				+ " WHERE idAction = ? ";

		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);
			
			if(returnDAO.size() != 0 && returnDAO!= null){
				empresaVO.setEmpresaNombreCorto(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "");
				empresaVO.setEmpresaStatus(returnDAO.get(1) != null ? returnDAO.get(1).toString() : PROPS.getProperty("error.01"));
				
			}else{
				empresaVO.setEmpresaNombreCorto("");
				empresaVO.setEmpresaStatus(PROPS.getProperty("error.01"));
			}

		} catch (Exception e) {
			empresaVO.setEmpresaNombreCorto("");
			empresaVO.setEmpresaStatus(PROPS.getProperty("error.01"));

			e.printStackTrace();
		}
		logger.info("qryEmpresa.getStatus:"+ empresaVO.getEmpresaStatus());
		return empresaVO;
	}
	
	public IdentidadVO qryAction(String action) throws SQLException {
		
		ArrayList<Object> returnDAO = new ArrayList<Object>();
		IdentidadVO identidadVO = new IdentidadVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(action);

		String sql = "SELECT idAction, idEmpresa, actionEstilo,"
				+ "headerRequerido, bodyRequerido, leftRequerido, rigthRequerido, footerRequerido, "
				+ "actionPrincipal , actionSeccion1, actionSeccion2, actionPrincipal, ambiente, actionModulos" +
				"  FROM tc_action  " +
				" WHERE idAction = ? ";

		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);
			
			if(returnDAO.size() != 0 && returnDAO!= null){
				identidadVO.setAction(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "01");
				identidadVO.setEmpresa(returnDAO.get(1) != null ? returnDAO.get(1).toString() : PROPS.getProperty("error.01"));
				identidadVO.setActionEstilo(returnDAO.get(2) != null ? returnDAO.get(2).toString() : "");
				identidadVO.setHeaderRequerido(returnDAO.get(3) != null ? returnDAO.get(3).toString() : "");
				identidadVO.setBodyRequerido(returnDAO.get(4) != null ? returnDAO.get(4).toString() : ".");
				identidadVO.setLeftRequerido(returnDAO.get(5) != null ? returnDAO.get(5).toString() : ".");
				identidadVO.setRigthRequerido(returnDAO.get(6) != null ? returnDAO.get(6).toString() : ".");
				identidadVO.setFooterRequerido(returnDAO.get(7) != null ? returnDAO.get(7).toString() : ".");
				identidadVO.setActionSeccion1(returnDAO.get(9) != null ? ComunResolution.arrayUno(returnDAO.get(9).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				identidadVO.setActionSeccion2(returnDAO.get(10) != null ? ComunResolution.arrayUno(returnDAO.get(9).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				identidadVO.setActionPrincipal(returnDAO.get(11) != null ? returnDAO.get(11).toString() : "01");
				identidadVO.setAmbiente(returnDAO.get(12) != null ? returnDAO.get(12).toString() : "NA");
				identidadVO.setModulo(returnDAO.get(13) != null ? returnDAO.get(13).toString() : "");
				identidadVO.setIdAction(action);
				identidadVO.setCodigoVO("00");
				//instIdentidadDao.setIdAction(instIdentidadDao.getAction());
				
			}else{
				identidadVO.setCodigoVO("01");
				identidadVO.setMensajeVO("identidad:"+PROPS.getProperty("error.01"));
				identidadVO.setIdAction(action);
			}

		} catch (Exception e) {
			identidadVO.setCodigoVO("03");
			identidadVO.setMensajeVO("identidad:"+PROPS.getProperty("error.03"));
			identidadVO.setIdAction(action);

			e.printStackTrace();
		}
		logger.info("qryAction.getCodigo:"+ identidadVO.getCodigoVO());
		return identidadVO;
	}


	public HeaderVO qryElementoHeader(String action) throws SQLException {
		
		ArrayList<Object> returnDAO = new ArrayList<Object>();
		HeaderVO headerVO = new HeaderVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(action);
		
		
		String sql = "SELECT tw_header.idHeader, tw_header.idEmpresa, "
				+ "tw_header.headerSeccionArray1, tw_header.headerSeccionArray2, tw_header.headerSeccionArray3, tw_header.headerSeccionArray4, tw_header.headerSeccionArray5, "
				+ "tw_header.headerSeccion1, tw_header.headerSeccion2, tw_header.headerSeccion3, tw_header.headerSeccion4, tw_header.headerSeccion5, "
				+ "tw_header.headerAux1, tw_header.headerAux2, tw_header.headerAux3, tw_header.headerAux4, tw_header.headerAux5, "
				+ "tw_header.headerVarios " 
				+ " from tw_header "// LEFT JOIN tc_action "
//				+ "ON tw_header.idEmpresa = tc_action.idEmpresa" 
				+ " WHERE tw_header.idAction = ?";

		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);

			if (returnDAO != null && returnDAO.size() > 0) {
				 
				headerVO.setIdHeader((returnDAO.get(0) != null ? returnDAO.get(0).toString() : "")); 
				headerVO.setIdEmpresa((returnDAO.get(1) != null ? returnDAO.get(1).toString() : "")); 
				headerVO.setHeaderMenu(returnDAO.get(2) != null ? ComunResolution.comunMenu(returnDAO.get(2).toString()): new MenuVO() );
				headerVO.setHeaderSeccionArray2(returnDAO.get(3) != null ? ComunResolution.seccionArray(returnDAO.get(3).toString()): new ArrayList<ObjetoVO>());
				headerVO.setHeaderSeccionArray3(returnDAO.get(4) != null ? ComunResolution.seccionArray(returnDAO.get(4).toString()): new ArrayList<ObjetoVO>());
				headerVO.setHeaderSeccionArray4(returnDAO.get(5) != null ? ComunResolution.seccionArray(returnDAO.get(5).toString()): new ArrayList<ObjetoVO>());
				headerVO.setHeaderSeccionArray5(returnDAO.get(6) != null ? ComunResolution.seccionArray(returnDAO.get(6).toString()): new ArrayList<ObjetoVO>());
				headerVO.setHeaderSeccion1(returnDAO.get(7) != null ? ComunResolution.arrayUno(returnDAO.get(7).toString(), ComunResolution.tokenUno) : new ArrayList<String>()); 
				headerVO.setHeaderSeccion2(returnDAO.get(8) != null ? ComunResolution.arrayUno(returnDAO.get(8).toString(), ComunResolution.tokenUno) : new ArrayList<String>());  
				headerVO.setHeaderSeccion3(returnDAO.get(9) != null ? ComunResolution.arrayUno(returnDAO.get(9).toString(), ComunResolution.tokenUno) : new ArrayList<String>());  
				headerVO.setHeaderSeccion4(returnDAO.get(10) != null ? ComunResolution.arrayUno(returnDAO.get(10).toString(), ComunResolution.tokenUno) : new ArrayList<String>());  
				headerVO.setHeaderSeccion5(returnDAO.get(11) != null ? ComunResolution.arrayUno(returnDAO.get(11).toString(), ComunResolution.tokenUno) : new ArrayList<String>());  
				headerVO.setHeaderAux1((returnDAO.get(12) != null ? ComunResolution.arrayUno(returnDAO.get(12).toString(), ComunResolution.tokenUno) : new ArrayList<String>())); 
				headerVO.setHeaderAux2((returnDAO.get(13) != null ? ComunResolution.arrayUno(returnDAO.get(13).toString(), ComunResolution.tokenUno) : new ArrayList<String>()));
				headerVO.setHeaderAux3((returnDAO.get(14) != null ? ComunResolution.arrayUno(returnDAO.get(14).toString(), ComunResolution.tokenUno) : new ArrayList<String>()));
				headerVO.setHeaderAux4((returnDAO.get(15) != null ? ComunResolution.arrayUno(returnDAO.get(15).toString(), ComunResolution.tokenUno) : new ArrayList<String>()));
				headerVO.setHeaderAux5(returnDAO.get(16) != null ? ComunResolution.arrayUno(returnDAO.get(16).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				headerVO.setHeaderVarios(returnDAO.get(17) != null ? returnDAO.get(17).toString() : "");

				//headerVO.setHeaderRequerido((returnDAO.get(16) != null ? Integer.valueOf((String) returnDAO.get(16)) : 0));
				//ins.log.info("valorJson1:"+headerVO.getHeaderMenu2());
				headerVO.setCodigoVO("00");		
			} else {
				headerVO.setCodigoVO("02");
				headerVO.setMensajeVO(PROPS.getProperty("error.02")+"\theader:"+action);
				headerVO.setIdAction(action);
			}
		} catch (Exception e) {
			headerVO.setCodigoVO("03");
			headerVO.setMensajeVO(PROPS.getProperty("error.03"));
			headerVO.setIdAction(action);
			logger.error("elemento mal recuperado de base de datos"+ PROPS.getProperty("error.02")+"\theader:"+action);
			e.printStackTrace();
		}
		logger.info("qryHeader.getCodigo:"+ headerVO.getCodigoVO());
		return headerVO;
	}


	public BodyVO qryElementoBody(String action, String elementoPagina) throws SQLException {

		ArrayList<Object> returnDAO = new ArrayList<Object>();
		BodyVO bodyVO = new BodyVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(action);
		
		


		String sql = "SELECT tw_body.idBody, tw_body.idEmpresa, tw_body.bodyFondo, "
				+ " tw_body.bodySeccion1, tw_body.bodySeccion2, tw_body.bodySeccion3, tw_body.bodySeccion4, tw_body.bodySeccion5, tw_body.bodySeccion6, tw_body.bodySeccion7, tw_body.bodySeccion8, tw_body.bodyQRE, tw_body.bodyQRD, "
				+ " tw_body.bodySeccionArray1, tw_body.bodySeccionArray2, tw_body.bodySeccionArray3, tw_body.bodySeccionArray4, tw_body.bodySeccionArray5, tw_body.bodySeccionArray6, tw_body.bodySeccionArray7" 
				+ " from tw_body "//LEFT JOIN tc_action "
//				+ "ON tw_body.idEmpresa = tc_action.idEmpresa" 
				+ " WHERE tw_body.idAction = ?";
		try {
			
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);

			if (returnDAO != null && returnDAO.size() > 0) {			
			/*
			 * 	for (int x = 0; x < returnDAO.size(); x++) {
					logger.info("Body:"+returnDAO.get(x));
				}
			*/	
				bodyVO.setIdBody(returnDAO.get(0).toString());
				bodyVO.setIdEmpresa(returnDAO.get(1).toString());
				bodyVO.setBodyFondo(returnDAO.get(2) != null ? returnDAO.get(2).toString() : "");
				bodyVO.setBodySeccion1(returnDAO.get(3)!= null ? ComunResolution.arrayUno(returnDAO.get(3).toString(), ComunResolution.tokenUno) : new ArrayList<String>());				
				bodyVO.setBodySeccion2(returnDAO.get(4)!= null ? ComunResolution.arrayUno(returnDAO.get(4).toString(),ComunResolution.tokenUno) : new ArrayList<String>());
				bodyVO.setBodySeccion3(returnDAO.get(5)!= null ? ComunResolution.arrayUno(returnDAO.get(5).toString(),ComunResolution.tokenUno) : new ArrayList<String>());
				bodyVO.setBodySeccion4(returnDAO.get(6)!= null ? ComunResolution.arrayUno(returnDAO.get(6).toString(),ComunResolution.tokenUno) : new ArrayList<String>());
				bodyVO.setBodySeccion5(returnDAO.get(7)!= null ? ComunResolution.arrayUno(returnDAO.get(7).toString(),ComunResolution.tokenUno) : new ArrayList<String>());
				bodyVO.setBodySeccion6(returnDAO.get(8)!= null ? ComunResolution.arrayUno(returnDAO.get(8).toString(),ComunResolution.tokenUno) : new ArrayList<String>());
				bodyVO.setBodySeccion7(returnDAO.get(9)!= null ? ComunResolution.arrayUno(returnDAO.get(9).toString(),ComunResolution.tokenUno) : new ArrayList<String>());
				bodyVO.setBodySeccion8(returnDAO.get(10)!= null ? ComunResolution.arrayUno(returnDAO.get(10).toString(),ComunResolution.tokenUno) : new ArrayList<String>());
				bodyVO.setBodyQRE(returnDAO.get(11)!= null ? ComunResolution.seccionArray(returnDAO.get(11).toString()): new ArrayList<ObjetoVO>());
				bodyVO.setBodyQRD(returnDAO.get(12)!= null ? ComunResolution.seccionArrayObjecto(returnDAO.get(12).toString()): new ArrayList<ArrayObjetoVO>());
				bodyVO.setBodyQRDJson(returnDAO.get(12)!= null ? ComunResolution.seccionArrayJSON(returnDAO.get(12).toString()): new JSONObject());
				bodyVO.setBodyQRDString(returnDAO.get(12)!= null ? ComunResolution.seccionArrayString(returnDAO.get(12).toString()): new String());
				bodyVO.setBodySeccionArray1(returnDAO.get(13) != null ? ComunResolution.seccionArray(returnDAO.get(13).toString()): new ArrayList<ObjetoVO>()); 
				bodyVO.setBodySeccionArray2(returnDAO.get(14) != null ? ComunResolution.seccionArray(returnDAO.get(14).toString()): new ArrayList<ObjetoVO>()); 
				bodyVO.setBodySeccionArray3(returnDAO.get(15) != null ? ComunResolution.seccionArray(returnDAO.get(15).toString()): new ArrayList<ObjetoVO>()); 
				bodyVO.setBodySeccionArray4(returnDAO.get(16) != null ? ComunResolution.seccionArray(returnDAO.get(16).toString()): new ArrayList<ObjetoVO>()); 
				bodyVO.setBodySeccionArray5(returnDAO.get(17) != null ? ComunResolution.seccionArray(returnDAO.get(17).toString()): new ArrayList<ObjetoVO>()); 
				bodyVO.setBodySeccionArray6(returnDAO.get(18) != null ? ComunResolution.seccionArray(returnDAO.get(18).toString()): new ArrayList<ObjetoVO>()); 
				bodyVO.setBodySeccionArray7(returnDAO.get(19) != null ? ComunResolution.seccionArray(returnDAO.get(19).toString()): new ArrayList<ObjetoVO>());

				bodyVO.setCodigoVO("00");
				}else {
					bodyVO.setCodigoVO("02");
					bodyVO.setMensajeVO("body:"+PROPS.getProperty("error.02"));
					bodyVO.setIdAction(action);
				}
		} catch (Exception e) {
			logger.error("elemento mal recuperado de base de datos"+ PROPS.getProperty("error.03")+"\tbody:"+action);
			bodyVO.setCodigoVO("03");
			bodyVO.setMensajeVO("body:"+PROPS.getProperty("error.03"));
			bodyVO.setIdAction(action);
			e.printStackTrace();
		}
		logger.info("qryBody.getCodigo:"+ bodyVO.getCodigoVO());
		return bodyVO;
	}

	public FooterVO qryElementoFooter(String action) throws SQLException {

		ArrayList<Object> returnDAO = new ArrayList<Object>();
		FooterVO footerVO = new FooterVO();
		
		List<String> complemento = new ArrayList<String>();
		complemento.add(action);

		String sql = "SELECT tw_footer.idFooter, tw_footer.idEmpresa, "
				+ " tw_footer.footerSeccion1, tw_footer.footerSeccion2, tw_footer.footerSeccion3, tw_footer.footerSeccion4, tw_footer.footerSeccion5, "
				+ " tw_footer.footerSeccionArray1, tw_footer.footerSeccionArray2,"
				+ " tw_footer.footerAux1, tw_footer.footerAux2, tw_footer.footerVarios,"
				+ " tw_footer.footerSecciones, tw_footer.footerSeccionUbicacion , tw_footer.footerSeccionRedes, tw_footer.footerSeccionFoot"
				+ " from tw_footer"// LEFT JOIN tc_action "
//				+ "ON tw_footer.idEmpresa = tc_action.idEmpresa" 
				+ " WHERE tw_footer.idAction = ?";

		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);

			if (returnDAO != null && returnDAO.size() > 0) {			
			/*
			 * 	for (int x = 0; x < returnDAO.size(); x++) {
					logger.info("Body:"+returnDAO.get(x));
				}
			*/	

				footerVO.setIdFooter(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "");
				footerVO.setIdEmpresa(returnDAO.get(1) != null ? returnDAO.get(1).toString() : "");
				footerVO.setFooterSeccion1(returnDAO.get(2) != null ? ComunResolution.arrayUno(returnDAO.get(2).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterSeccion2(returnDAO.get(3) != null ? ComunResolution.arrayUno(returnDAO.get(3).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterSeccion3(returnDAO.get(4) != null ? ComunResolution.arrayUno(returnDAO.get(4).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterSeccion4(returnDAO.get(5) != null ? ComunResolution.arrayUno(returnDAO.get(5).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterSeccion5(returnDAO.get(6) != null ? ComunResolution.arrayUno(returnDAO.get(6).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterSeccionArray1(returnDAO.get(7) != null ? ComunResolution.seccionArray(returnDAO.get(7).toString()): new ArrayList<ObjetoVO>()); 
				footerVO.setFooterSeccionArray2(returnDAO.get(8) != null ? ComunResolution.seccionArray(returnDAO.get(8).toString()): new ArrayList<ObjetoVO>());
				footerVO.setFooterAux1(returnDAO.get(9) != null ? ComunResolution.arrayUno(returnDAO.get(8).toString(), ComunResolution.tokenUno) : new ArrayList<String>()); 
				footerVO.setFooterAux2(returnDAO.get(10) != null ? ComunResolution.arrayUno(returnDAO.get(9).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterVarios(returnDAO.get(11) != null ? returnDAO.get(11).toString() : "");
				footerVO.setFooterSecciones(returnDAO.get(12) != null ? ComunResolution.arrayUno(returnDAO.get(12).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterSeccionUbicacion(returnDAO.get(13) != null ? ComunResolution.arrayUno(returnDAO.get(13).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterSeccionRedes(returnDAO.get(14) != null ? ComunResolution.arrayUno(returnDAO.get(14).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				footerVO.setFooterSeccionFoot(returnDAO.get(15) != null ? ComunResolution.arrayUno(returnDAO.get(15).toString(), ComunResolution.tokenUno) : new ArrayList<String>());
				//footerVO.setFooterRequerido(returnDAO.get(9) != null ? Integer.valueOf((String)returnDAO.get(9)) : 0);
//				logger.info(footerVO.getFooterSeccionFoot());
				footerVO.setCodigoVO("00");
				}else {
					footerVO.setCodigoVO("02");
					footerVO.setMensajeVO("footer:"+PROPS.getProperty("error.02"));
					footerVO.setIdAction(action);
				}
		} catch (Exception e) {
			footerVO.setCodigoVO("03");
			footerVO.setMensajeVO("footer:"+PROPS.getProperty("error.03"));
			footerVO.setIdAction(action);
			logger.error("elemento mal recuperado de base de datos"+ PROPS.getProperty("error.03")+"\tfooter:"+action);
			e.printStackTrace();
		}
		logger.info("qryFooter.getCodigo:"+ footerVO.getCodigoVO());
		return footerVO;
	}
	
	public ArrayList<ModulosVO>  qryModulos() {
		
		ArrayList<ModulosVO> modulosVOArray = new ArrayList<ModulosVO>();
		String sql = "SELECT tc_modulos.idModulo, tc_modulos.moduloNombre"+
					" from tc_modulos";
		
		try {	
			ArrayList<Object> arrReturnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, null);
			
			if (arrReturnDAO != null && arrReturnDAO.size() > 0) {		
				for(int i = 0; i < arrReturnDAO.size(); i++) {
					ModulosVO moduloVO = new ModulosVO() ;
					moduloVO.setIdModulo(arrReturnDAO.get(i) != null ? arrReturnDAO.get(i).toString() : "");
					moduloVO.setModuloNombre(arrReturnDAO.get(i+1) != null ? arrReturnDAO.get(i+1).toString() : "");
					i++;
					moduloVO.setCodigoVO("00");
					modulosVOArray.add(moduloVO);
//					logger.info("DAO:"+moduloVO.getIdModulo()+"-"+moduloVO.getModuloNombre());
				}	
			}else {
				ModulosVO moduloVO = new ModulosVO() ;
				moduloVO.setCodigoVO("02");
				moduloVO.setMensajeVO("Modulos Vacio:"+PROPS.getProperty("error.02"));
				modulosVOArray.add(moduloVO);
			}
		}catch (Exception e) {
			ModulosVO moduloVO = new ModulosVO() ;
			moduloVO.setCodigoVO("03");
			moduloVO.setMensajeVO("Modulos Corrupto:"+PROPS.getProperty("error.03"));
			modulosVOArray.add(moduloVO);
			logger.info("elemento mal recuperado de base de datos"+ PROPS.getProperty("error.03")+"\tarticulo:");
			e.printStackTrace();
			}
		
		return modulosVOArray;
	}

	public QRRVO readQRR(String action) {
		ArrayList<Object> returnDAO = new ArrayList<Object>();
		QRRVO qrrVO = new QRRVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(action);

		String sql = "SELECT idAction, tipoQRR" +
				"  FROM tc_qrr  " +
				" WHERE idAction = ? ";

		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);
			
			if(returnDAO.size() != 0 && returnDAO!= null){
				qrrVO.setIdAction(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "");
				qrrVO.setTipoQRR(returnDAO.get(1) != null ? returnDAO.get(1).toString() : PROPS.getProperty("error.01"));
				qrrVO.setCodigo("00");
				qrrVO.setMensaje("exito busqueda qrr");

			}else{
				qrrVO.setCodigo("01");
				qrrVO.setMensaje("identidad:"+PROPS.getProperty("error.01"));
				qrrVO.setIdAction(action);
			}

		} catch (Exception e) {
			qrrVO.setCodigo("03");
			qrrVO.setMensaje("identidad:"+PROPS.getProperty("error.03"));
			qrrVO.setIdAction(action);

			e.printStackTrace();
		}
		logger.info("qryQRR.getCodigo:"+ qrrVO.getCodigo());
		return qrrVO;
	}
	
	
	
} //fin de clase
