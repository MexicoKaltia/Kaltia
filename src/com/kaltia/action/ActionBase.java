package com.kaltia.action;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.kaltia.infra.BaseInfra;
import com.kaltia.service.AltaElemento;
import com.kaltia.service.EmpresaService;
import com.kaltia.service.Identidad;
import com.kaltia.service.Loggin;
import com.kaltia.vo.BaseVO;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;
import com.kaltia.vo.LoginVO;
import com.kaltia.vo.UserPrimarioVO;
import com.opensymphony.xwork2.ActionContext;

public class ActionBase extends InitAction  {

	static final Logger logger = LogManager.getLogger(ActionBase.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;


	private static final long serialVersionUID = 1L;

	public ActionBase() {

	}

	private UserPrimarioVO userPrimarioVO;

	private LoginVO loginVO;
	
	private IdentidadVO altaIdentidadVO;
	private BaseVO altaBaseVO;
	private HeaderVO altaHeaderVO;
	private BodyVO altaBodyVO;
	private FooterVO altaFooterVO;
	
	private String[] maquetaskaltia;

	
	private String subAction;
	private String actionInicial;
	
	
	

		public String execute(){
		
		return SUCCESS;
	}
	

	public String logginUser() {

			Loggin loggin = new Loggin();
			UserPrimarioVO userPrimarioVO = new UserPrimarioVO();
			if(loginVO!= null) {
				userPrimarioVO = loggin.loginPrimario(loginVO.getUser(), loginVO.getPass());
				
				subAction = ActionContext.getContext().getName();
				logger.info("subAction:"+subAction);
				
				ServletContext context = (ServletContext) ServletActionContext.getServletContext();
				HttpServletRequest request = ServletActionContext.getRequest(); 
				String url = ((HttpServletRequest)request).getRequestURL().toString();
				//String actionInicial = url.substring(url.indexOf(context.getServletContextName().toString())+context.getServletContextName().toString().length()+1, url.lastIndexOf(subAction)-1);
				logger.info("actionInicial:"+ actionInicial); 
				
				contexto(actionInicial);
				
			}else {
				userPrimarioVO.setUserPrimarioPerfil("error");
			}
				return userPrimarioVO.getUserPrimarioPerfil().toString();
	}
	
	private String contexto(String actionName) {

		Identidad identidad = new Identidad();

		try {
			HashMap identidadHash = identidad.identidadEmpresa(actionName);
			 identidadVO = (IdentidadVO) identidadHash.get("identidadVO");
			 logger.info("identidadVO.getIdAction: "+identidadVO.getIdAction());
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


	public String altaElemento() {

		String actionName = ActionContext.getContext().getName();
		logger.info("Alta Elemento actionName:"+actionName);
		

		switch (actionName) {
		case "altaAction": {
			altaBaseVO = AltaElemento.altaElementoAction(identidadVO);
			// logger.info("bodyRequerido:"+actionVO.getBodyRequerido());
			break;
		}
		case "altaHeader":{
			altaBaseVO = AltaElemento.altaElementoHeader(altaHeaderVO);
			break;
		}
		case "altaBody":{
			altaBaseVO = AltaElemento.altaElementoBody(altaBodyVO);
			break;
		}
		case "altaFooter":{
			altaBaseVO = AltaElemento.altaElementoFooter(altaFooterVO);
			break;
		}
		default:{
			altaBaseVO.setCodigoVO("98");
			altaBaseVO.setMensajeVO(PROPS.getProperty("error.98"));
		}
	}

		logger.info("CodigoInsert:" + altaBaseVO.getCodigoVO().toString());
		if (altaBaseVO.getCodigoVO().toString().equals("1")) {
			contexto("kaltia");
			return SUCCESS;
			}
		else
			return ERROR;
	}
	
	public String maquetasKaltia() {
		
		EmpresaService empresaService = new EmpresaService();
		contexto("kaltia");
		
		try {
			maquetaskaltia = empresaService.getMaquetas();
		}catch(Exception e) {
			logger.info(e);
		}
		return "kaltiaMaquetas";
	}

	/*
	public String action(){
		String actionName = ActionContext.getContext().getName();
		//logger.info("actionName:"+actionName);
		baseVO = Loggin.altaElementoAction(actionVO);
		logger.info("CodigoInsert:" + baseVO.getCodigoVO().toString());
		if (baseVO.getCodigoVO().toString().equals("1"))
			return SUCCESS;
		else
			return ERROR;
		
		
	}
	*/

	
	
	
	public String fileUpload(){
		return SUCCESS;
	}

	
	public UserPrimarioVO getUserPrimarioVO() {
		return userPrimarioVO;
	}


	public void setUserPrimarioVO(UserPrimarioVO userPrimarioVO) {
		this.userPrimarioVO = userPrimarioVO;
	}


	public String getSubAction() {
		return subAction;
	}


	public void setSubAction(String subAction) {
		this.subAction = subAction;
	}


	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	
	public IdentidadVO getAltaIdentidadVO() {
		return altaIdentidadVO;
	}


	public void setAltaIdentidadVO(IdentidadVO altaIdentidadVO) {
		this.altaIdentidadVO = altaIdentidadVO;
	}


	public BaseVO getAltaBaseVO() {
		return altaBaseVO;
	}


	public void setAltaBaseVO(BaseVO altaBaseVO) {
		this.altaBaseVO = altaBaseVO;
	}


	public HeaderVO getAltaHeaderVO() {
		return altaHeaderVO;
	}


	public void setAltaHeaderVO(HeaderVO altaHeaderVO) {
		this.altaHeaderVO = altaHeaderVO;
	}


	public BodyVO getAltaBodyVO() {
		return altaBodyVO;
	}


	public void setAltaBodyVO(BodyVO altaBodyVO) {
		this.altaBodyVO = altaBodyVO;
	}


	public FooterVO getAltaFooterVO() {
		return altaFooterVO;
	}


	public void setAltaFooterVO(FooterVO altaFooterVO) {
		this.altaFooterVO = altaFooterVO;
	}
	
	public String getActionInicial() {
		return actionInicial;
	}


	public void setActionInicial(String actionInicial) {
		this.actionInicial = actionInicial;
	}

	public String[] getMaquetaskaltia() {
		return maquetaskaltia;
	}


	public void setMaquetaskaltia(String[] maquetaskaltia) {
		this.maquetaskaltia = maquetaskaltia;
	}





}
