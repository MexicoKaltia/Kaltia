package com.kaltia.action;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Properties;
import com.opensymphony.xwork2.ActionContext;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.infra.BaseInfra;
import com.kaltia.service.EmpresaService;
import com.kaltia.service.Identidad;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;



public class BaseAction extends InitAction  {

	static final Logger logger = LogManager.getLogger(BaseAction.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;
	private static final long serialVersionUID = 1L;
	
//	private HeaderVO altaHeaderVO;
//	private BodyVO altaBodyVO;
//	private FooterVO altaFooterVO;

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
			HashMap identidadHash = identidad.identidadEmpresa(actionName);
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
			// TODO Auto-generated catch block
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
