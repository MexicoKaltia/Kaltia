package com.kaltia.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.JSONObject;

import com.kaltia.dao.IdentidadDao;
import com.kaltia.infra.BaseInfra;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.EmpresaVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;
import com.kaltia.vo.ModulosVO;
import com.kaltia.vo.ProductosVO;
import com.kaltia.vo.QRRVO;


public class Identidad {


	private IdentidadDao identidadDao = new IdentidadDao();
	static final Logger logger = LogManager.getLogger(Identidad.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;
	private IdentidadVO identidadVO = new IdentidadVO();
	
	public HashMap<String, Object> identidadEmpresaPagina(String action) throws SQLException {

		HashMap<String, Object> hashIdentidad = new HashMap<String, Object>();
		String nombreCorto="";
		
		/*
		 * Revisa Estatus de Empresa
		 */
		EmpresaVO empresaVO = (EmpresaVO)identidadDao.qryEmpresa(action);
		if(!empresaVO.getEmpresaStatus().equals(PROPS.getProperty("error.03")) || !empresaVO.getEmpresaStatus().equals(PROPS.getProperty("error.04"))) {
			if(!empresaVO.getEmpresaStatus().equals(PROPS.getProperty("status.03"))) {
				nombreCorto = empresaVO.getEmpresaNombreCorto();
				logger.info("nombreCorto : "+nombreCorto);
			}
		}else {
			identidadVO.setCodigoVO("99");
			identidadVO.setMensajeVO("1 " + PROPS.getProperty("error.01"));
			hashIdentidad.put("identidadVO", identidadVO);
			return hashIdentidad;
		}
		
		/*
		 * Load de los datos de Action, Pagina  y Modulos
		 */
		identidadVO = (IdentidadVO)identidadDao.qryAction(action);
		if(identidadVO.getCodigoVO().equals("00")) {
			if(!identidadVO.getActionPrincipal().equals("99")) {		
				hashIdentidad = identidadElemento(action, identidadVO);
				identidadVO.setNombreCorto(empresaVO.getEmpresaNombreCorto());
			}else {
				hashIdentidad.put("identidadVO", identidadVO);
			}
		}else {
			hashIdentidad.put("identidadVO", identidadVO);
		}
		return hashIdentidad;
	}
	
	public HashMap<String, Object> identidadEmpresaQRR(String action) throws SQLException {

		HashMap<String, Object> hashIdentidad = new HashMap<String, Object>();
//		String nombreCorto="";
		EmpresaVO empresaVO = (EmpresaVO)identidadDao.qryEmpresa(action);
		
		QRRVO qrrVO = (QRRVO)identidadDao.readQRR(action);
		
		if(qrrVO.getCodigo().equals("00")) {
			identidadVO = (IdentidadVO)identidadDao.qryAction(action);
			identidadVO.setNombreCorto(empresaVO.getEmpresaNombreCorto());
			hashIdentidad = identidadElemento(action, identidadVO);
			qrrVO.setCodigo("00");
			qrrVO.setMensaje("exito busqueda qrr");	
		}else {
			qrrVO.setCodigo("99");
			qrrVO.setMensaje("1 " + PROPS.getProperty("error.01"));
		}
		hashIdentidad.put("qrrVO", qrrVO);
		
//		if(qrrVO.getTipoQRR().contains("QRD")) {
//			BodyVO bb =(BodyVO)hashIdentidad.get("body");
////			logger.info(bb.getBodyQRDJson());
//		}
		
		return hashIdentidad;
	}

	

	private HashMap<String, Object> identidadElemento(String action, IdentidadVO identidadVO) {

		HashMap<String, Object> hashIdentidad = new HashMap<String, Object>();
		
		identidadVO.setCodigoVO("00");
		identidadVO.setMensajeVO("No Requerido");
		identidadVO.setIdAction(action);
		
		if (identidadVO.getHeaderRequerido().equals("1")) {
			hashIdentidad.put("header", headerEm(action,identidadVO.getActionEstilo()));
			HeaderVO headerVO = (HeaderVO) hashIdentidad.get("header");
			identidadVO.setCodigoVO(headerVO.getCodigoVO());
			if (!headerVO.getCodigoVO().equals("00")) {
				identidadVO.setCodigoVO(headerVO.getCodigoVO());
				identidadVO.setMensajeVO(headerVO.getMensajeVO());
				hashIdentidad.put("identidadVO", identidadVO);
				return hashIdentidad;
			}
		}
		logger.info("identidadVOHeader:"+identidadVO.getCodigoVO());
		
		if (identidadVO.getBodyRequerido().equals("1")) {
			hashIdentidad.put("body", bodyEm(action));
			BodyVO bodyVO = (BodyVO) hashIdentidad.get("body");
			identidadVO.setCodigoVO(bodyVO.getCodigoVO());
//			logger.info(bodyVO.getBodyQRE().toString());
//			logger.info(bodyVO.getBodyQRD().toString());
			if (!bodyVO.getCodigoVO().equals("00")) {
				identidadVO.setMensajeVO(bodyVO.getMensajeVO());
				identidadVO.setAction(action);
				hashIdentidad.put("identidadVO", identidadVO);
				return hashIdentidad;
			}
		}
		logger.info("identidadVOBody:"+identidadVO.getCodigoVO());

		if (identidadVO.getFooterRequerido().equals("1")) {
			hashIdentidad.put("footer", footerEm(action));
			FooterVO footerVO = (FooterVO) hashIdentidad.get("footer");
			identidadVO.setCodigoVO(footerVO.getCodigoVO());
			if (!footerVO.getCodigoVO().equals("00")) {
				identidadVO.setCodigoVO(footerVO.getCodigoVO());
				identidadVO.setMensajeVO(footerVO.getMensajeVO());
				hashIdentidad.put("identidadVO", identidadVO);
				return hashIdentidad;
			}
		}
		logger.info("identidadVOFooter:"+identidadVO.getCodigoVO());
		/*
		 *  Modulos 
		 */
		if(identidadVO.getActionPrincipal().equals("2")) {
			ProductosVO productos = identidadDao.qryProductos(identidadVO.getEmpresa());
			JSONObject jsonProductos = productosToJSON(productos); 
			hashIdentidad.put("productos", jsonProductos);
			logger.info("productos:"+productos.getCodigo());
			if (!productos.getCodigo().equals("00")) {
				identidadVO.setCodigoVO(productos.getCodigo());
				identidadVO.setMensajeVO(productos.getMensaje());
				hashIdentidad.put("identidadVO", identidadVO);
				return hashIdentidad;
			}
		}
		
//		Version Anterior
//		if(!identidadVO.getModulo().equals("") || identidadVO.getModulo() != null) {
//			ArrayList<String>modulos = consultaModulos(identidadVO.getModulo());
//			identidadVO.setModuloNombre(modulos);
//			hashIdentidad.put("modulos", modulos);
//		}else {
//			identidadVO.setMensajeVO("revisar integracion modulos");
//			identidadVO.setCodigoVO("99");
//		}
		
		hashIdentidad.put("identidadVO", identidadVO);

		return hashIdentidad;
	}
	
	/*
	 * Privates
	 */

private JSONObject productosToJSON(ProductosVO productos) {
		
		JSONObject json = new JSONObject();
		//Productos
		if(productos.isCheckPagina()) {
			json.put("checkPagina", true);
		}if(productos.isCheckQRR()) {
			json.put("checkQRR", true);
		}if(productos.isCheckQRE()) {
			json.put("checkQRE", true);
		}if(productos.isCheckPuntoVenta()) {
			json.put("checkPuntoVenta", true);
		}
		//modulos sencillos
		if(productos.isClientePagina()) {
			json.put("checkClientePagina", true);
		}if(productos.isChatPagina()) {
			json.put("checkChatPagina", true);
		}if(productos.isVideoPagina()) {
			json.put("checkVideoPagina", true);
		}if(productos.isTarjetaPagina()) {
			json.put("checkTarjetaPagina", true);
		}if(productos.isRetroalimentacionPagina()) {
			json.put("checkRetroalimentacionPagina", true);
		}
		//modulos compuestos
		if(productos.isCitaPagina()) {
			json.put("checkCitaPagina", true);
		}if(productos.isCarpetaPagina()) {
			json.put("checkCarpetaPagina", true);
		}if(productos.isNotificacionPagina()) {
			json.put("checkNotificacionPagina", true);
		}
		
		json.put("idEmpresa", productos.getIdEmpresa());
		
		return json;
	}
	private HeaderVO headerEm(String action, String estilo) {
		HeaderVO headerVOEm = null;

		try {
			headerVOEm = (HeaderVO) identidadDao.qryElementoHeader(action);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return headerVOEm;
	}

	private BodyVO bodyEm(String action) {
		BodyVO bodyVOEm = null;

		try {
			bodyVOEm = (BodyVO) identidadDao.qryElementoBody(action, "body");		
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return bodyVOEm;

	}

	private Object footerEm(String action) {
		Object footerVOEm = null;

		try {
			footerVOEm = identidadDao.qryElementoFooter(action);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return footerVOEm;
	}
	
	private ArrayList<String> consultaModulos(String modulos) {
		String[] modulosCodigo =modulos.split("\\,");
		ArrayList<String> modulosNombre = new ArrayList<String>();
		try {
			ArrayList<ModulosVO> modulosVO = identidadDao.qryModulos();
			for (ModulosVO a : modulosVO) {
				for(String b : modulosCodigo) {
					if(b.equals(a.getIdModulo())) {
						modulosNombre.add(a.getModuloNombre());
						logger.info(a.getModuloNombre());
					}
				}

			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return modulosNombre;
	}
	

}
