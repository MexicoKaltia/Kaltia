package com.kaltia.action;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.ServletContext;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.kaltia.infra.BaseInfra;
import com.kaltia.service.EmpresaService;
import com.kaltia.service.Identidad;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;
import com.kaltia.vo.QRRVO;
import com.opensymphony.xwork2.ActionContext;



public class BaseAction extends InitAction  {

	static final Logger logger = LogManager.getLogger(BaseAction.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;
	private static final long serialVersionUID = 1L;
	
	public BaseAction() {

	}

	
	private String[] maquetaskaltia;
	
	public String maquetasKaltia() {
		
		EmpresaService empresaService = new EmpresaService();
		String actionName = ActionContext.getContext().getName();
		logger.info(actionName);
		contexto("kaltia");
		
		try {
			maquetaskaltia = empresaService.getMaquetas();
		}catch(Exception e) {
			logger.info(e);
		}
		return "kaltiaMaquetas";
	}
	
	private String contexto(String actionName) {

		Identidad identidad = new Identidad();
		logger.info("BaseAction.contexto: "+actionName);
		try {
			HashMap identidadHash = identidad.identidadEmpresaPagina(actionName);
			 identidadVO = (IdentidadVO) identidadHash.get("identidadVO");
			 logger.info("identidadVO.getIdAction: "+identidadVO.getIdAction());
			if (identidadVO.getCodigoVO().equals("00")) {
				
					header = (HeaderVO) identidadHash.get("header");
					body = (BodyVO) identidadHash.get("body");
					footer = (FooterVO) identidadHash.get("footer");
					
					logger.info(identidadVO.getAction().toString());

					return identidadVO.getAction().toString();
			} else {
				return ERROR;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public String modelosKaltia() {
		return "kaltiaModelos";
	}

	private InetAddress address;
	
	public String qr() throws UnknownHostException {
		String actionName = ActionContext.getContext().getName();
		ServletContext context = (ServletContext) ServletActionContext.getServletContext();
		logger.info("actionName:" + actionName);
		logger.info("context:" + context.getContextPath());
		logger.info("context:" + context);
		logger.info("context:" + context.getServletContextName());

		address = InetAddress.getLocalHost();
		String userMachine=address.getHostName();
		logger.info("hola:"+userMachine);
		logger.info("hola:"+address);
				

		Identidad identidad = new Identidad();

		try {
			HashMap identidadHash = identidad.identidadEmpresaQRR(actionName);
			 QRRVO qrrVO = (QRRVO) identidadHash.get("qrrVO");
			 identidadVO = (IdentidadVO) identidadHash.get("identidadVO");
			if (qrrVO.getCodigo().equals("00")) {
					logger.info("-------------------------QRR : "+ qrrVO.getIdAction()+"--------------------------------------------------------------");
					header = (HeaderVO) identidadHash.get("header");
//					body = (BodyVO) identidadHash.get("body");
					footer = (FooterVO) identidadHash.get("footer");
					
					return qrrVO.getTipoQRR().toString();					
			} else {
				return ERROR;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return ERROR;
		}
	}



	public String[] getMaquetaskaltia() {
		return maquetaskaltia;
	}
	
	
	public void setMaquetaskaltia(String[] maquetaskaltia) {
		this.maquetaskaltia = maquetaskaltia;
	}


}
