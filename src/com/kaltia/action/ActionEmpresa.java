package com.kaltia.action;

import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.kaltia.service.EmpresaService;
import com.kaltia.service.Identidad;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;
import com.kaltia.vo.UserEmpresa;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ActionEmpresa extends InitAction {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	static final Logger logger = LogManager.getLogger(ActionEmpresa.class.getName());

	public ActionEmpresa() {
		// TODO Auto-generated constructor stub
	}
	
	private String user;
	private String password;
	private UserEmpresa userEmpresa;
	private String actionInicial;
	
	
	public String elemento() {
		//execute();
		String actionName = ActionContext.getContext().getName();
		ServletContext context = (ServletContext) ServletActionContext.getServletContext();
		HttpServletRequest request = ServletActionContext.getRequest(); 
		String url = ((HttpServletRequest)request).getRequestURL().toString();
		
		logger.info("elemento.actionName:"+actionName);				
		logger.info("elemento.context.getContextPath:"+context.getContextPath());
		logger.info("elemento.context.getRealPath:"+context.getRealPath(actionName));
		logger.info("elemento.context.getServletContextName:"+context.getServletContextName());
		logger.info("elemento.request.getContextPath():"+request.getContextPath());
		logger.info("elemento.request.getRequestURI():"+request.getRequestURI());
		logger.info("elemento.url:"+url);
		
//		String actionInicial = request.getRequestURI();//url.substring(url.indexOf(context.getServletContextName().toString())+context.getServletContextName().toString().length()+1, url.lastIndexOf(actionName)-1);
	//	actionInicial = actionInicial.substring(1, actionInicial.indexOf(actionName)-1); 
		
		 logger.info("actionInicial:"+actionInicial);
		 
		 String a = contexto(actionInicial);
		 
		 if(actionName.equals("ingresar")){
			 
		//	 userEmpresa = EmpresaService.userEmpresa(user, password, actionInicial);
			 logger.info("userEmpresa.getUserEmpresaPerfil:"+userEmpresa.getUserEmpresaPerfil());
			 
		 }
		
		
		return actionName;
	}
	public String contexto(String actionName) {

		Identidad identidad = new Identidad();

		try {
			
			HashMap identidadHash = identidad.identidadEmpresa(actionName);
			 identidadVO = (IdentidadVO) identidadHash.get("identidadVO");
			if (identidadVO.getCodigoVO().equals("00")) {
				
					header = (HeaderVO) identidadHash.get("header");
					body = (BodyVO) identidadHash.get("body");
					footer = (FooterVO) identidadHash.get("footer");

					return identidadVO.getAction().toString();
			} else {
				return ERROR;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return ERROR;
		}
	}
	
	
	

	
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public UserEmpresa getUserEmpresa() {
		return userEmpresa;
	}
	public void setUserEmpresa(UserEmpresa userEmpresa) {
		this.userEmpresa = userEmpresa;
	}

	
	
	public String getActionInicial() {
		return actionInicial;
	}
	public void setActionInicial(String actionInicial) {
		this.actionInicial = actionInicial;
	}


}
