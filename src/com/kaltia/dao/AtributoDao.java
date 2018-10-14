package com.kaltia.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.action.ActionBase;
import com.kaltia.infra.BaseInfra;
import com.kaltia.infra.ComunResolution;
import com.kaltia.vo.UserEmpresa;
import com.kaltia.vo.UserPrimarioVO;

public class AtributoDao {
	
	static final Logger logger = LogManager.getLogger(ActionBase.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;

	public AtributoDao() {
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("null")
	public String[] getMaquetas() {
		
		List<String> complemento = new ArrayList<String>();
		String[] maquetas = null;
		/*
		 * actionPrincipal =1 --- MODELO PRINCIPAL
		 * actionPrincipal =2 --- EMPRESA ESTANDAR
		 * actionPrincipal =3 --- EMPRESA PERSONALIZADA
		 * 
		 */
		String sql = "SELECT tc_action.idAction from tc_action where actionPrincipal in(1,2,3)";
		
		try {	
			ArrayList<Object> arrReturnDAO = ConexionDao.doConexionSet(sql, complemento);
			
			if (arrReturnDAO != null && arrReturnDAO.size() > 0) {
				maquetas = new String[arrReturnDAO.size()] ;		
				//int i = 0;
				for(int i = 0; i < arrReturnDAO.size(); i++) {
			  		maquetas[i]= arrReturnDAO.get(i).toString().substring(1, arrReturnDAO.get(i).toString().length()-1);
			  		logger.info("action:"+arrReturnDAO.get(i).toString());
			  	
				}
			}
			}catch (Exception e) {
					logger.error("elemento mal recuperado de base de datos"+ PROPS.getProperty("error.03")+"\tarticulo:");
					e.printStackTrace();
				}
			
		return maquetas;
	}
	/*

	@SuppressWarnings("rawtypes")
	public  ArrayList<ArticuloVO> qryArticulo(String IdEmpresa) {
		
		ArticuloVO articuloVO ;
		ArrayList<ArticuloVO> arrArticuloVO = new ArrayList<ArticuloVO>();
		logger.info("qryArticulo-idEmpresa:"+IdEmpresa);
		
		List<String> complemento = new ArrayList<String>();
		complemento.add(IdEmpresa);

		String sql = "SELECT tc_articulo.idArticulo, tc_articulo.idEmpresa, tc_articulo.idProovedor, "
				+ " tc_articulo.articuloNombre, tc_articulo.articuloCaract, tc_articulo.articuloCodigo,"
				+ " tc_articulo.articuloCosto, tc_articulo.articuloVenta, tc_articulo.articuloPromocion, tc_articulo.articuloImagen, tc_articulo.categoriaNombre"
				+ " FROM tc_articulo"
				+ " WHERE tc_articulo.idEmpresa = ?"
				+ " ORDER BY tc_articulo.idArticulo";
		
		
		try {	
			arrReturnDAO = ConexionDao.doConexionSet(sql, complemento);
			
			if (arrReturnDAO != null && arrReturnDAO.size() > 0) {
				
				for (Object a : arrReturnDAO){
			  		//logger.info("arrRticulo:"+a);
			  		
			  		articuloVO = new ArticuloVO();
				
					articuloVO.setIdArticulo(((ArrayList) a).get(0) != null ? ((ArrayList) a).get(0).toString() : "" );
					articuloVO.setIdEmpresa(((ArrayList) a).get(1) != null ? ((ArrayList) a).get(1).toString() : "" );
					articuloVO.setIdProovedor(((ArrayList) a).get(2) != null ? ((ArrayList) a).get(2).toString() : "" );
					articuloVO.setArticuloNombre(((ArrayList) a).get(3) != null ? ((ArrayList) a).get(3).toString() : "" );
					articuloVO.setArticuloCaract(((ArrayList) a).get(4) != null ? ComunResolution.arrayUno(((ArrayList) a).get(4).toString(), ComunResolution.tokenUno) : new ArrayList<String>() );
					articuloVO.setArticuloCodigo(((ArrayList) a).get(5) != null ? ((ArrayList) a).get(5).toString() : "" );
					articuloVO.setArticuloCosto(((ArrayList) a).get(6) != null ? ((ArrayList) a).get(6).toString() : "" );
					articuloVO.setArticuloVenta(((ArrayList) a).get(7) != null ? ((ArrayList) a).get(7).toString() : "" );
					articuloVO.setArticuloPromocion(((ArrayList) a).get(8) != null ? ((ArrayList) a).get(8).toString() : "" );
					articuloVO.setArticuloImagen(((ArrayList) a).get(9) != null ? ((ArrayList) a).get(9).toString() : "" );
					articuloVO.setCategoriaNombre(((ArrayList) a).get(10) != null ? ((ArrayList) a).get(10).toString() : "" );
					articuloVO.setCodigoVO("00");
					//logger.info("id:"+articuloVO.getIdArticulo());
					arrArticuloVO.add(articuloVO);
				}
				
				}else {
					articuloVO = new ArticuloVO();
					articuloVO.setCodigoVO("02");
					articuloVO.setMensajeVO("articulo:"+PROPS.getProperty("error.02"));
					articuloVO.setIdAction("");
					}
			}catch (Exception e) {
				articuloVO = new ArticuloVO();
				articuloVO.setCodigoVO("03");
				articuloVO.setMensajeVO("articulo:"+PROPS.getProperty("error.03"));
				articuloVO.setIdAction("");
				logger.error("elemento mal recuperado de base de datos"+ PROPS.getProperty("error.03")+"\tarticulo:");
				e.printStackTrace();
			}
		
			return arrArticuloVO;
	}
public  ArrayList<CategoriaVO> qryCategoria(String IdEmpresa) {
		
		CategoriaVO categoriaVO ;
		ArrayList<CategoriaVO> arrCategoriaVO = new ArrayList<CategoriaVO>();
		logger.info("qryCategoria-idEmpresa:"+IdEmpresa);
		
		List<String> complemento = new ArrayList<String>();
		complemento.add(IdEmpresa);

		String sql = "SELECT tc_categoria.idCategoria, tc_categoria.idEmpresa, tc_categoria.categoriaNombre, tc_categoria.categoriaVarios, tc_categoria.categoriaImagen "
				+ " FROM tc_categoria"
				+ " WHERE tc_categoria.idEmpresa = ?";
		
		
		try {	
			arrReturnDAO = ConexionDao.doConexionSet(sql, complemento);
			
			if (arrReturnDAO != null && arrReturnDAO.size() > 0) {
				
				for (Object a : arrReturnDAO){
			  		//logger.info("arrRticulo:"+a);
			  		
					categoriaVO = new CategoriaVO();
				

					categoriaVO.setIdCategoria(((ArrayList) a).get(0) != null ? ((ArrayList) a).get(0).toString() : "" ); 
					categoriaVO.setIdEmpresa(((ArrayList) a).get(1) != null ? ((ArrayList) a).get(1).toString() : "" ); 
					categoriaVO.setCategoriaNombre(((ArrayList) a).get(2) != null ? ((ArrayList) a).get(2).toString() : "" ); 
					categoriaVO.setCategoriaVarios(((ArrayList) a).get(3) != null ? ComunResolution.arrayUno(((ArrayList) a).get(3).toString(), ComunResolution.tokenUno) : new ArrayList<String>() );
					categoriaVO.setCategoriaImagen(((ArrayList) a).get(4) != null ? ((ArrayList) a).get(4).toString() : "" );

					arrCategoriaVO.add(categoriaVO);
				}
				
				}else {
					categoriaVO = new CategoriaVO();
					categoriaVO.setCodigoVO("02");
					categoriaVO.setMensajeVO("articulo:"+PROPS.getProperty("error.02"));
					categoriaVO.setIdAction("");
					}
			}catch (Exception e) {
				categoriaVO = new CategoriaVO();
				categoriaVO.setCodigoVO("03");
				categoriaVO.setMensajeVO("articulo:"+PROPS.getProperty("error.03"));
				categoriaVO.setIdAction("");
				logger.error("elemento mal recuperado de base de datos"+ PROPS.getProperty("error.03")+"\tcategoria:");
				e.printStackTrace();
			}
		
			return arrCategoriaVO;
	}

public  ArrayList<PromocionVO> qryPromocion(String IdEmpresa) {
		
		PromocionVO promocionVO ;
		ArrayList<PromocionVO> arrPromocionVO = new ArrayList<PromocionVO>();
		logger.info("qryPromocion-idEmpresa:"+IdEmpresa);
		
		List<String> complemento = new ArrayList<String>();
		complemento.add(IdEmpresa);

		String sql = "SELECT tc_promocion.idPromocion, tc_promocion.idEmpresa, tc_promocion.idArticulos, tc_promocion.promocionVarios0, tc_promocion.promocionVarios1"
				+ " FROM tc_promocion"
				+ " WHERE tc_promocion.idEmpresa = ?";
		
		
		try {	
			arrReturnDAO = ConexionDao.doConexionSet(sql, complemento);
			
			if (arrReturnDAO != null && arrReturnDAO.size() > 0) {
				
				for (Object a : arrReturnDAO){
			  		//logger.info("arrRticulo:"+a);
			  		
					promocionVO = new PromocionVO();
				

					promocionVO.setIdPromocion(((ArrayList) a).get(0) != null ? ((ArrayList) a).get(0).toString() : "" ); 
					promocionVO.setIdEmpresa(((ArrayList) a).get(1) != null ? ((ArrayList) a).get(1).toString() : "" ); 
					promocionVO.setIdArticulos(((ArrayList) a).get(2) != null ? ((ArrayList) a).get(2).toString() : "" ); 
					promocionVO.setPromocionVarios0(((ArrayList) a).get(3) != null ? ((ArrayList) a).get(3).toString() : "" ); 
					promocionVO.setPromocionVarios1(((ArrayList) a).get(4) != null ? ((ArrayList) a).get(4).toString() : "" );

					arrPromocionVO.add(promocionVO);
				}
				
				}else {
					promocionVO = new PromocionVO();
					promocionVO.setCodigoVO("02");
					promocionVO.setMensajeVO("articulo:"+PROPS.getProperty("error.02"));
					promocionVO.setIdAction("");
					}
			}catch (Exception e) {
				promocionVO = new PromocionVO();
				promocionVO.setCodigoVO("03");
				promocionVO.setMensajeVO("articulo:"+PROPS.getProperty("error.03"));
				promocionVO.setIdAction("");
				logger.error("elemento mal recuperado de base de datos"+ PROPS.getProperty("error.03")+"\tPromocion:");
				e.printStackTrace();
			}
		
			return arrPromocionVO;
	}

	
	public UserPrimario qryLoginPrimario(String user, String pass){
		
		UserPrimario userPrimario = new UserPrimario();
		//ArrayList<UserPrimario> result = null;
		List<String> complemento = new ArrayList<String>();
		complemento.add(user);
		complemento.add(pass);
		
		String sql = "SELECT tc_userPrimario.userPrimarioDescr, tc_userPrimario.userPrimarioPerfil, tc_userPrimario.userPrimarioNombre"
				+ " from tc_userPrimario"
				+ " WHERE tc_userPrimario.userPrimarioUser = ?"
				+ " AND tc_userPrimario.userPrimarioPass = ?";

		try {
			returnDAO = ConexionDao.doConexion(sql, complemento);
			if (returnDAO != null) {
				
					userPrimario.setUserPrimarioDescrpicion(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "");
					userPrimario.setUserPrimarioPerfil(returnDAO.get(1) != null ? returnDAO.get(1).toString() : "");
					userPrimario.setUserPrimarioNombre(returnDAO.get(2) != null ? returnDAO.get(2).toString() : "");
				
				userPrimario.setCodigoVO("00");
				}else {
					userPrimario.setCodigoVO("02");
					userPrimario.setMensajeVO("userPrimario:"+PROPS.getProperty("error.02"));
				}
		} catch (Exception e) {
			
			userPrimario.setCodigoVO("03");
			userPrimario.setMensajeVO("userPrimario:"+PROPS.getProperty("error.03"));
			logger.error("elemento mal recuperado de base de datos, : "+ PROPS.getProperty("error.03")+"\tuserPrimario:");
			e.printStackTrace();
		}
		logger.info("qryLoginPrimario.getCodigo:"+ userPrimario.getCodigoVO());
		return userPrimario ;
	}
	
	public static Object qryActionEmpresa(String actionEmpresa){
		
		Object object=null;
		
		
		
		return object;
		
	}
	
	public static UserEmpresa qryUserEmpresa(String user, String pass, String idAction){
		UserEmpresa userEmpresa = new UserEmpresa();
		
		List<String> complemento = new ArrayList<String>();
		complemento.add(user);
		complemento.add(pass);
		complemento.add(idAction);
		
		String sql = "SELECT tc_userEmpresa.userEmpresaDescr, tc_userEmpresa.userEmpresaPerfil, tc_userEmpresa.userEmpresaNombre"
				+ " from tc_userEmpresa LEFT JOIN tc_action"
				+ " ON tc_userEmpresa.idEmpresa = tc_action.idEmpresa"
				+ " WHERE tc_userEmpresa.userEmpresaUser = ?"
				+ " AND tc_userEmpresa.userEmpresaPass = ?"
				+ " AND tc_action.idAction = ?";
		
		try {
			returnDAO = ConexionDao.doConexion(sql, complemento);
			if (returnDAO != null) {
				
				userEmpresa.setUserEmpresaDescr(returnDAO.get(0) != null ? returnDAO.get(0).toString() : "");
				userEmpresa.setUserEmpresaPerfil(returnDAO.get(1) != null ? returnDAO.get(1).toString() : "");
				userEmpresa.setUserEmpresaNombre(returnDAO.get(2) != null ? returnDAO.get(2).toString() : "");
			
			userEmpresa.setCodigoVO("00");
			}else {
				userEmpresa.setCodigoVO("02");
				userEmpresa.setMensajeVO("userEmpresa:"+PROPS.getProperty("error.02"));
			}
	} catch (Exception e) {
		
		userEmpresa.setCodigoVO("03");
		userEmpresa.setMensajeVO("userEmpresa:"+PROPS.getProperty("error.03"));
		logger.error("elemento mal recuperado de base de datos, : "+ PROPS.getProperty("error.03")+"\tuserEmpresa:");
		e.printStackTrace();
	}
	logger.info("qryLoginPrimario.getCodigo:"+ userEmpresa.getCodigoVO());

		
		return userEmpresa;
	}

*/
}
