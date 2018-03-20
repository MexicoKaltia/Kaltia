package com.kaltia.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.infra.BaseInfra;
import com.kaltia.vo.BaseVO;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;
import com.kaltia.vo.UserPrimarioVO;

public class PerfilAdminDao {

	public PerfilAdminDao() {
		// TODO Auto-generated constructor stub
	}
	
	
	private static ArrayList<Object> returnDAO = new ArrayList<Object>();
	
	private ArrayList<Object> arrReturnDAO = new ArrayList<Object>();
	static final Logger logger = LogManager.getLogger(PerfilAdminDao.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;
	
	
	public static UserPrimarioVO qryLoginPrimario(String user , String pass) {
		
		List<String> complemento = new ArrayList<String>();
		complemento.add(user);
		//complemento.add(actionVO.getIdEmpresa());
		
		String sql = "SELECT idUserPrimarioUser, userPrimarioUser, userPrimarioPass, userPrimarioDescr, userPrimarioPerfil, userPrimarioNombre "
				+" FROM tc_userprimario "
				+ "WHERE userPrimarioUser = ?";
		
		UserPrimarioVO userPrimarioVO = new UserPrimarioVO();
		
		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);
			
			if(returnDAO.size() != 0 && returnDAO!= null){
			userPrimarioVO.setIdUserPrimario(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "");
			userPrimarioVO.setUserPrimarioUser(returnDAO.get(1) != null ? returnDAO.get(1).toString() : "");
			userPrimarioVO.setUserPrimarioPass(returnDAO.get(2) != null ? returnDAO.get(2).toString() : "");
			userPrimarioVO.setUserPrimarioDescrpicion(returnDAO.get(3) != null ? returnDAO.get(3).toString() : "");
			userPrimarioVO.setUserPrimarioPerfil(returnDAO.get(4) != null ? returnDAO.get(4).toString() : "");
			userPrimarioVO.setUserPrimarioNombre(returnDAO.get(5) != null ? returnDAO.get(5).toString() : "");
			}else {
				userPrimarioVO.setCodigoVO("02");
				userPrimarioVO.setMensajeVO("identidad:"+PROPS.getProperty("error.02"));
				userPrimarioVO.setIdAction("");
				userPrimarioVO.setUserPrimarioPass("");
			}

		} catch (Exception e) {
			userPrimarioVO.setCodigoVO("03");
			userPrimarioVO.setMensajeVO("identidad:"+PROPS.getProperty("error.03"));
			userPrimarioVO.setIdAction("");

			e.printStackTrace();
		}
		logger.info("Codigo:"+userPrimarioVO.getCodigoVO().toString());
		return userPrimarioVO;
	}
	
	
	public static BaseVO qryAltaElementoAction(IdentidadVO identidadVO){
	
		//IdentidadVO identidadVO = new IdentidadVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(identidadVO.getAction());
		complemento.add(identidadVO.getEmpresa());
		complemento.add(identidadVO.getActionEstilo());
		complemento.add(identidadVO.getHeaderRequerido() != null ? "1" : "0");
		complemento.add(identidadVO.getBodyRequerido() != null ? "1" : "0");
		complemento.add(identidadVO.getFooterRequerido() != null ? "1" : "0");
		complemento.add(identidadVO.getLeftRequerido() != null ? "1" : "0");
		complemento.add(identidadVO.getRigthRequerido() != null ? "1" : "0");
		complemento.add(identidadVO.getActionPrincipal() != null ? "1" : "0");
		complemento.add(identidadVO.getActionSeccion1().get(0).toString());
		complemento.add(identidadVO.getActionSeccion2().get(0).toString());

		String sql = "INSERT INTO tc_action "
				+ " ( idAction, idEmpresa, actionEstilo, headerRequerido, bodyRequerido, footerRequerido, leftRequerido, rigthRequerido, actionPrincipal, actionSeccion1, actionSeccion2)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?)";

		/*preparedStatement.setString(1,actionVO.getIdAction());
		preparedStatement.setString(2,actionVO.getIdEmpresa());
		preparedStatement.setString(3,actionVO.getDescAction());
		preparedStatement.setBoolean(4,actionVO.getHeaderRequerido());
		preparedStatement.setBoolean(5,actionVO.getBodyRequerido());
		preparedStatement.setBoolean(6,actionVO.getFooterRequerido());
		preparedStatement.setBoolean(7,actionVO.getLeftRequerido());
		preparedStatement.setBoolean(8,actionVO.getRigthRequerido());
		preparedStatement.setBoolean(9,actionVO.getActionPrincipal());
*/
		BaseVO baseVO = new BaseVO();

		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);
			baseVO.setCodigoVO(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "02");
			baseVO.setMensajeVO(returnDAO.get(0) != null ? "Exito Insert " : "Error Insert");
			

		} catch (Exception e) {
			baseVO.setCodigoVO("03");
			baseVO.setMensajeVO("identidad:"+PROPS.getProperty("error.03"));
			baseVO.setIdAction("");

			e.printStackTrace();
		}
		logger.info("Codigo:"+baseVO.getCodigoVO().toString());
		return baseVO;
	}
	
	public static BaseVO qryAltaElementoHeader(HeaderVO headerVO){
		
		IdentidadVO identidadVO = new IdentidadVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(headerVO.getIdHeader());
		complemento.add(headerVO.getIdEmpresa());
		
		String sql = "INSERT INTO tw_header "
				+ " (tw_header.idHeader, tw_header.idEmpresa, tw_header.idPagina, tw_header.headerContacto,"
				+ " tw_header.headerCorreo, tw_header.headerLogo, tw_header.headerFondo, tw_header.headerEstilo,"
				+ " tw_header.headerJs, tw_header.headerMenu, tw_header.headerVarios, tw_header.headerTitulo,"
				+ " tw_header.headerIcono, tw_header.headerSlogan, tw_header.headerMenu2,  tw_header.headerButton)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		
		BaseVO baseVO = new BaseVO();

		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);
			baseVO.setCodigoVO(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "02");
			baseVO.setMensajeVO(returnDAO.get(0) != null ? "Exito Insert " : "Error Insert");
			

		} catch (Exception e) {
			baseVO.setCodigoVO("03");
			baseVO.setMensajeVO("identidad:"+PROPS.getProperty("error.03"));
			baseVO.setIdAction("");

			e.printStackTrace();
		}
		//logger.info("Codigo:"+baseVO.getCodigoVO().toString());
		return baseVO;
	}

public static BaseVO qryAltaElementoBody(BodyVO bodyVO){
		
		IdentidadVO identidadVO = new IdentidadVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(bodyVO.getIdBody());
		complemento.add(bodyVO.getIdEmpresa());
				String sql = "INSERT INTO tw_body"
				+ " (tw_body.idBody, tw_body.idEmpresa, tw_body.bodyVarios, tw_body.idPagina, tw_body.bodyEstilo,"
				+ " tw_body.bodyJs, tw_body.bodyFondo, tw_body.bodyTexto1, tw_body.bodyTexto2, tw_body.bodyTexto3,"
				+ " tw_body.bodyTexto4, tw_body.bodyTexto5, tw_body.bodyTexto6, tw_body.bodyTexto7, tw_body.bodyTexto8,"
				+ " tw_body.bodyTexto9, tw_body.bodyTexto10)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		BaseVO baseVO = new BaseVO();

		try {
			returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);
			baseVO.setCodigoVO(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "02");
			baseVO.setMensajeVO(returnDAO.get(0) != null ? "Exito Insert " : "Error Insert");
			

		} catch (Exception e) {
			baseVO.setCodigoVO("03");
			baseVO.setMensajeVO("identidad:"+PROPS.getProperty("error.03"));
			baseVO.setIdAction("");

			e.printStackTrace();
		}
		//logger.info("Codigo:"+baseVO.getCodigoVO().toString());
		return baseVO;
	}

public static BaseVO qryAltaElementoFooter(FooterVO footerVO){
	
	IdentidadVO identidadVO = new IdentidadVO();
		List<String> complemento = new ArrayList<String>();
		complemento.add(footerVO.getIdFooter());
		complemento.add(footerVO.getIdEmpresa());
		
		//logger.info("lista1:"+footerVO.getFooterLista1Aux());


	String sql = "INSERT INTO tw_footer "
			+ " (tw_footer.idFooter, tw_footer.idEmpresa, tw_footer.idPagina, tw_footer.footerLista1,"
			+ " tw_footer.footerLista2, tw_footer.footerLista3, tw_footer.footerVarios, tw_footer.footerCopyrigth,"
			+ " tw_footer.footerRedes)"
			+ " VALUES(?,?,?,?,?,?,?,?,?)";
	
	BaseVO baseVO = new BaseVO();

	try {
		returnDAO = (ArrayList<Object>)ConexionDao.doConexion(sql, complemento);
		baseVO.setCodigoVO(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "02");
		baseVO.setMensajeVO(returnDAO.get(0) != null ? "Exito Insert " : "Error Insert");
		

	} catch (Exception e) {
		baseVO.setCodigoVO("03");
		baseVO.setMensajeVO("identidad:"+PROPS.getProperty("error.03"));
		baseVO.setIdAction("");

		e.printStackTrace();
	}
	//logger.info("Codigo:"+baseVO.getCodigoVO().toString());
	return baseVO;
}

}
