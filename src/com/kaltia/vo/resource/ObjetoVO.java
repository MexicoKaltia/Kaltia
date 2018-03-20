package com.kaltia.vo.resource;

import java.io.Serializable;
import java.util.ArrayList;

public class ObjetoVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ObjetoVO() {
		// TODO Auto-generated constructor stub
	}
	
	private ArrayList<String> objetoVO;

	public ArrayList<String> getObjetoVO() {
		return objetoVO;
	}

	public void setObjetoVO(ArrayList<String> objetoVO) {
		this.objetoVO = objetoVO;
	}
	
	

}
