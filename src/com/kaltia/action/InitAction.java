package com.kaltia.action;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.json.simple.JSONObject;

import com.kaltia.service.Identidad;
import com.kaltia.vo.BodyVO;
import com.kaltia.vo.FooterVO;
import com.kaltia.vo.HeaderVO;
import com.kaltia.vo.IdentidadVO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class InitAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2401346264010667638L;
	protected HeaderVO header;
	protected BodyVO body;
	protected FooterVO footer;
	protected JSONObject productos;
	protected List<JSONObject> videos;
	protected String numeroChat;
	protected JSONObject tarjetaProductos;
	
	
	protected IdentidadVO identidadVO; // = new IdentidadVO();
	
	private InetAddress address;
	
	static final Logger logger = LogManager.getLogger(InitAction.class.getName());

//	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws UnknownHostException {

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
			
			HashMap<String, Object> identidadHash = identidad.identidadEmpresaPagina(actionName);
			 identidadVO = (IdentidadVO) identidadHash.get("identidadVO");
			if (identidadVO.getCodigoVO().equals("00")) {
				
					header = (HeaderVO) identidadHash.get("header");
					body = (BodyVO) identidadHash.get("body");
					footer = (FooterVO) identidadHash.get("footer");
					productos = (JSONObject) identidadHash.get("productos");
					videos =  (List<JSONObject>) identidadHash.get("videos");
					numeroChat=  (String) identidadHash.get("numeroChat");
					tarjetaProductos = (JSONObject) identidadHash.get("tarjetaProductos");
					logger.info("Termina ejecutar action:"+actionName);		
					
					if(identidadVO.getActionPrincipal().equals("1") || identidadVO.getActionPrincipal().equals("2")) {
						if(identidadVO.getActionPrincipal().equals("1")) {
							logger.info("modelo:"+identidadVO.getActionEstilo());
							logger.info("modelo con action:"+identidadVO.getAction());
						}else {
							logger.info("Nueva Empresa Estandar con modelo:"+identidadVO.getActionEstilo());
							logger.info("Nueva Empresa Estandar con action:"+identidadVO.getAction());
						}
						logger.info("---------------------------------------------------------------------------------------");
						return identidadVO.getActionEstilo().toString();
					}else {
						logger.info("Empresa con modificaciones para TILES");
						logger.info("---------------------------------------------------------------------------------------");
					return identidadVO.getAction().toString();
					}
			} else {
				return ERROR;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return ERROR;
		}
		
	}

	public HeaderVO getHeader() {
		return header;
	}

	public void setHeader(HeaderVO header) {
		this.header = header;
	}

	public IdentidadVO getIdentidadVO() {
		return identidadVO;
	}

	public void setIdentidadVO(IdentidadVO identidadVO) {
		this.identidadVO = identidadVO;
	}

	public BodyVO getBody() {
		return body;
	}

	public void setBody(BodyVO body) {
		this.body = body;
	}

	public FooterVO getFooter() {
		return footer;
	}

	public void setFooter(FooterVO footer) {
		this.footer = footer;
	}
	
	public JSONObject getProductos() {
		return productos;
	}

	public void setProductos(JSONObject productos) {
		this.productos = productos;
	}
	
	public List<JSONObject> getVideos() {
		return videos;
	}

	public void setVideos(List<JSONObject> videos) {
		this.videos = videos;
	}

	public String getNumeroChat() {
		return numeroChat;
	}

	public void setNumeroChat(String numeroChat) {
		this.numeroChat = numeroChat;
	}

	public JSONObject getTarjetaProductos() {
		return tarjetaProductos;
	}

	public void setTarjetaProductos(JSONObject tarjetaProductos) {
		this.tarjetaProductos = tarjetaProductos;
	}

}
