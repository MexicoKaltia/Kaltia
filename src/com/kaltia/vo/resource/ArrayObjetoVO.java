package com.kaltia.vo.resource;

import java.util.ArrayList;

public class ArrayObjetoVO {

	public ArrayObjetoVO() {
	}

	
	private ArrayList<ObjetoVO> arrayObjetoVO;


	public ArrayList<ObjetoVO> getArrayObjetoVO() {
		return arrayObjetoVO;
	}


	public void setArrayObjetoVO(ArrayList<ObjetoVO> arrayObjetoVO) {
		this.arrayObjetoVO = arrayObjetoVO;
	}


	@Override
	public String toString() {
		return "ArrayObjetoVO [arrayObjetoVO=" + arrayObjetoVO.toString() + "]";
	}

	
}
