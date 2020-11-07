package com.kaltia.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.action.InitAction;
import com.kaltia.dao.IdentidadDao;
import com.kaltia.infra.ComunResolution;

import com.kaltia.vo.BodyVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;
import com.kaltia.vo.MenuLeftVO;
import com.kaltia.vo.MenuRigthVO;
import com.kaltia.vo.ModulosVO;
import com.kaltia.vo.PaginaVO;


public class Identidad {


	private IdentidadDao identidadDao = new IdentidadDao();
	static final Logger logger = LogManager.getLogger(Identidad.class.getName());

	
	public HashMap<String, Object> identidadEmpresa(String action) throws SQLException {

		HashMap<String, Object> hashIdentidad = new HashMap<String, Object>();
		IdentidadVO identidadVO = (IdentidadVO)identidadDao.qryEmpresa(action);
		logger.info(identidadVO.getCodigoVO());
		if(identidadVO.getCodigoVO().equals("00")) {
			if(!identidadVO.getActionPrincipal().equals("99")) {		
				hashIdentidad = identidadElemento(action, identidadVO);
			}else {
				hashIdentidad.put("identidadVO", identidadVO);
			}
		}else {
			hashIdentidad.put("identidadVO", identidadVO);
		}
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
		//	valida(headerVO);
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
			//valida(bodyVO);
			if (!bodyVO.getCodigoVO().equals("00")) {
				// identidadVO.setCodigoVO(bodyVO.getCodigoVO());
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
//			logger.info(footerVO.getFooterSeccionFoot());
		//	valida(footerVO);
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
		if(!identidadVO.getModulo().equals("") || identidadVO.getModulo() != null) {
			ArrayList<String>modulos = consultaModulos(identidadVO.getModulo());
			identidadVO.setModuloNombre(modulos);
			hashIdentidad.put("modulos", modulos);
		}else {
			identidadVO.setMensajeVO("revisar integracion modulos");
			identidadVO.setCodigoVO("99");
		}
		
		hashIdentidad.put("identidadVO", identidadVO);

		return hashIdentidad;
	}

	private HeaderVO headerEm(String action, String estilo) {
		HeaderVO headerVOEm = null;

		try {
			headerVOEm = (HeaderVO) identidadDao.qryElementoHeader(action);
			//JsonDOM.jsonElementoHeader(headerVOEm, action, estilo);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return headerVOEm;
	}
/*
	private Object menuLeftEm(String action) {
		Object menuLeftVOEm = null;
		try {
			menuLeftVOEm = identidadDao.qryElementoMenuLeft(action, "menuLeft");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return menuLeftVOEm;
	}

	private Object menuRigthEm(String action) {
		Object menuRigthVOEm = null;

		try {
			menuRigthVOEm = identidadDao.qryElementoMenuRigth(action, "menuRigth");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return menuRigthVOEm;

	}
*/
	private BodyVO bodyEm(String action) {
		BodyVO bodyVOEm = null;

		try {
			bodyVOEm = (BodyVO) identidadDao.qryElementoBody(action, "body");
			/*
			 * for(ArticuloVO a : bodyVOEm.getBodyCuadricula()){
			 * logger.info("bodyCuadricula:"+a.getArticuloCodigo()); }
			 */
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return bodyVOEm;

	}

	private Object footerEm(String action) {
		Object footerVOEm = null;

		try {
			footerVOEm = identidadDao.qryElementoFooter(action);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return footerVOEm;
	}
	
	private ArrayList<String> consultaModulos(String modulos) {
		String[] modulosCodigo =modulos.split("\\,");
//		logger.info("0:"+modulos);
		ArrayList<String> modulosNombre = new ArrayList<String>();
		try {
			ArrayList<ModulosVO> modulosVO = identidadDao.qryModulos();
//			logger.info("1:"+modulosVO );
			for (ModulosVO a : modulosVO) {
//				logger.info("2:"+a.getModuloNombre());
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
	
	
//	private void valida(Object object) {
//		
//		//HeaderVO headerVO = (HeaderVO)object;
//		//logger.info("Slogan:"+headerVO.getHeaderSloganVO().get(0).getHeaderSlogan().get(0));
//		//logger.info("Slogan:"+headerVO.getHeaderSloganVO().get(1).getHeaderSlogan().get(1));
//		//logger.info("Slide:"+headerVO.getHeaderSlideVO().get(0).getHeaderSlide().get(0));
//		//logger.info("Slide:"+headerVO.getHeaderSlideVO().get(1).getHeaderSlide().get(1));
//		
//	
//	/*
//	BodyVO bodyVO = (BodyVO)object;
//									  //body.bodyPromocion.get(0).promocionVarios0
//	//logger.info("valida BodyPromocion: "+bodyVO.getBodyPromocion().get(0).getPromocionVarios0());
//										//<s:property value='#articulo.articuloImagen' />
//	//logger.info("valida bodyCruadricula: "+ bodyVO.getBodyCuadricula().get(0).getArticuloImagen());
//	logger.info("valida bodyCategoria: "+ bodyVO.getBodyCategoria().get(0).getCategoriaVarios().get(0));
//	*/
//	
//		FooterVO footerVO = (FooterVO)object;
//		for(int i = 0; i< footerVO.getFooterSeccion3().size(); i++)
//		logger.info("valida Footer: "+footerVO.getFooterSeccion3().get(i));
//	
//	
//	}

}
