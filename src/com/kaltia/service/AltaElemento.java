package com.kaltia.service;

import java.util.ArrayList;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.dao.PerfilAdminDao;
import com.kaltia.infra.BaseInfra;
import com.kaltia.vo.BaseVO;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;

public class AltaElemento {
	
	static final Logger logger = LogManager.getLogger(Loggin.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;
	

	public AltaElemento() {
		// TODO Auto-generated constructor stub
	}
public static BaseVO altaElementoAction(IdentidadVO identidadVO){
		
		/*
		 * Resolver el tema de ArrayString
		 */
		
		ArrayList<String> actionSeccion1 = new ArrayList<String>();
		actionSeccion1.add(0, "");
		identidadVO.setActionSeccion1(actionSeccion1);
		identidadVO.setActionSeccion2(actionSeccion1);
		//temporal inicial los ArrayList con ""
		
		BaseVO baseVO = PerfilAdminDao.qryAltaElementoAction(identidadVO);
		logger.info("altaElementoAction Codigo:"+baseVO.getCodigoVO().toString());
		
		return baseVO;
	}
	
	
	public static BaseVO altaElementoHeader(HeaderVO headerVO){
		ArrayList<String> menu2 = new ArrayList<String>(); 
		ArrayList<String> button = new ArrayList<String>();
				
		BaseVO baseVO = new BaseVO();
				baseVO.setCodigoVO("99");
			baseVO.setMensajeVO(PROPS.getProperty("error.99"));
			
	
			//baseVO = PerfilAdminDao.qryAltaElementoHeader(headerVO);
		logger.info("altaElementoHeader Codigo:"+baseVO.getCodigoVO().toString());
		
		return baseVO;
	}
	
	
	public static BaseVO altaElementoBody(BodyVO bodyVO){
		ArrayList<String> as = new ArrayList<String>(); 
		
		BaseVO baseVO = null;
		baseVO = PerfilAdminDao.qryAltaElementoBody(bodyVO);
		//logger.info("altaElementoHeader Codigo:"+baseVO.getCodigoVO().toString());
		if(true){
		
		}else{
			baseVO.setCodigoVO("99");
			baseVO.setMensajeVO(PROPS.getProperty("error.99"));
			return baseVO;
		}
		
		return baseVO;
	}
	
	public static BaseVO altaElementoFooter(FooterVO footerVO){
		ArrayList<String> as = new ArrayList<String>(); 
				
		BaseVO baseVO = null;
		baseVO = PerfilAdminDao.qryAltaElementoFooter(footerVO);
		//logger.info("altaElementoHeader Codigo:"+baseVO.getCodigoVO().toString());
		if(true){
		
		}else{
			baseVO.setCodigoVO("99");
			baseVO.setMensajeVO(PROPS.getProperty("error.99"));
			return baseVO;
		}
		
		return baseVO;
	}


}
