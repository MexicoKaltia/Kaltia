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
import com.kaltia.vo.UserPrimarioVO;



public class Loggin {
	
	static final Logger logger = LogManager.getLogger(Loggin.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;
	
	public UserPrimarioVO loginPrimario(String user, String pass){
		
		PerfilAdminDao perfilAdminDao = new PerfilAdminDao();
		UserPrimarioVO userPrimarioVO = perfilAdminDao.qryLoginPrimario(user, pass);
		if(!userPrimarioVO.getUserPrimarioPass().equals(pass)) {
			logger.info("Perfil:"+userPrimarioVO.getUserPrimarioPerfil()+"\tNombre:"+userPrimarioVO.getUserPrimarioNombre());
			userPrimarioVO.setUserPrimarioPerfil("error");
		}
		
		return userPrimarioVO;
		
	}
	
	
}
