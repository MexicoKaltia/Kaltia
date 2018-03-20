package com.kaltia.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.apache.logging.log4j.LogManager;

import com.kaltia.infra.FilesUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.util.ServletContextAware;


public class FileUploadAction extends ActionSupport implements ServletContextAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 634805886891556847L;

	private File fileUpload;
	private String fileUploadContentType;
	private String fileUploadFileName;
	private String filesPath;
	private ServletContext context;
	

	static final Logger logger = LogManager.getLogger(FileUploadAction.class.getName());
	
	@Override
	public String execute() throws Exception{

		logger.info("File Name is:"+getFileUploadFileName());
		logger.info("File ContentType is:"+getFileUploadContentType());
		logger.info("Files Directory is:"+filesPath);
		logger.info("context.getContextPath:"+context.getContextPath());
		//logger.info("context.getRealtPath:"+context.getRealPath());
		String actionName = ActionContext.getContext().getName();
		try {
			FilesUtil.saveFile(getFileUpload(), getFileUploadFileName(), context.getRealPath("") + File.separator + actionName);//filesPath);
		} catch (IOException e) {
			e.printStackTrace();
			return INPUT;
		}
		return SUCCESS;

	}

	
	@Override
	public void setServletContext(ServletContext ctx) {
		this.context=ctx;
	}

	
	/*
	public String getFilesPath() {
		return filesPath;
	}
	*/

	public void setFilesPath(String filesPath) {
		this.filesPath = filesPath;
	}

	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public File getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

}