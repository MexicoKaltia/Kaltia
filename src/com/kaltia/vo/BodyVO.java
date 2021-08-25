package com.kaltia.vo;

import java.io.Serializable;
import java.util.ArrayList;

import org.json.simple.JSONObject;

import com.kaltia.vo.resource.ArrayObjetoVO;
import com.kaltia.vo.resource.ObjetoVO;

public class BodyVO extends BaseVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public BodyVO() {
		// TODO Auto-generated constructor stub
	}
	
	

private String idBody; 
private String idEmpresa; 
private String bodyFondo; 
private ArrayList<String> bodySeccion1; 
private ArrayList<String> bodySeccion2; 
private ArrayList<String> bodySeccion3; 
private ArrayList<String> bodySeccion4; 
private ArrayList<String> bodySeccion5; 
private ArrayList<String> bodySeccion6; 
private ArrayList<String> bodySeccion7; 
private ArrayList<String> bodySeccion8; 
private ArrayList<ObjetoVO> bodyQRE; 
private ArrayList<ArrayObjetoVO> bodyQRD;
private JSONObject bodyQRDJson;
private String bodyQRDString;
private ArrayList<ObjetoVO> bodySeccionArray1;
private ArrayList<ObjetoVO> bodySeccionArray2;
private ArrayList<ObjetoVO> bodySeccionArray3;
private ArrayList<ObjetoVO> bodySeccionArray4;
private ArrayList<ObjetoVO> bodySeccionArray5;
private ArrayList<ObjetoVO> bodySeccionArray6;
private ArrayList<ObjetoVO> bodySeccionArray7;

public String getIdBody() {
	return idBody;
}
public void setIdBody(String idBody) {
	this.idBody = idBody;
}
public String getIdEmpresa() {
	return idEmpresa;
}
public void setIdEmpresa(String idEmpresa) {
	this.idEmpresa = idEmpresa;
}
public String getBodyFondo() {
	return bodyFondo;
}
public void setBodyFondo(String bodyFondo) {
	this.bodyFondo = bodyFondo;
}
public ArrayList<String> getBodySeccion1() {
	return bodySeccion1;
}
public void setBodySeccion1(ArrayList<String> bodySeccion1) {
	this.bodySeccion1 = bodySeccion1;
}
public ArrayList<String> getBodySeccion2() {
	return bodySeccion2;
}
public void setBodySeccion2(ArrayList<String> bodySeccion2) {
	this.bodySeccion2 = bodySeccion2;
}
public ArrayList<String> getBodySeccion3() {
	return bodySeccion3;
}
public void setBodySeccion3(ArrayList<String> bodySeccion3) {
	this.bodySeccion3 = bodySeccion3;
}
public ArrayList<String> getBodySeccion4() {
	return bodySeccion4;
}
public void setBodySeccion4(ArrayList<String> bodySeccion4) {
	this.bodySeccion4 = bodySeccion4;
}
public ArrayList<String> getBodySeccion5() {
	return bodySeccion5;
}
public void setBodySeccion5(ArrayList<String> bodySeccion5) {
	this.bodySeccion5 = bodySeccion5;
}
public ArrayList<String> getBodySeccion6() {
	return bodySeccion6;
}
public void setBodySeccion6(ArrayList<String> bodySeccion6) {
	this.bodySeccion6 = bodySeccion6;
}
public ArrayList<String> getBodySeccion7() {
	return bodySeccion7;
}
public void setBodySeccion7(ArrayList<String> bodySeccion7) {
	this.bodySeccion7 = bodySeccion7;
}
public ArrayList<String> getBodySeccion8() {
	return bodySeccion8;
}
public void setBodySeccion8(ArrayList<String> bodySeccion8) {
	this.bodySeccion8 = bodySeccion8;
}


public ArrayList<ObjetoVO> getBodySeccionArray1() {
	return bodySeccionArray1;
}
public void setBodySeccionArray1(ArrayList<ObjetoVO> bodySeccionArray1) {
	this.bodySeccionArray1 = bodySeccionArray1;
}
public ArrayList<ObjetoVO> getBodySeccionArray2() {
	return bodySeccionArray2;
}
public void setBodySeccionArray2(ArrayList<ObjetoVO> bodySeccionArray2) {
	this.bodySeccionArray2 = bodySeccionArray2;
}
public ArrayList<ObjetoVO> getBodySeccionArray3() {
	return bodySeccionArray3;
}
public void setBodySeccionArray3(ArrayList<ObjetoVO> bodySeccionArray3) {
	this.bodySeccionArray3 = bodySeccionArray3;
}
public ArrayList<ObjetoVO> getBodySeccionArray4() {
	return bodySeccionArray4;
}
public void setBodySeccionArray4(ArrayList<ObjetoVO> bodySeccionArray4) {
	this.bodySeccionArray4 = bodySeccionArray4;
}
public ArrayList<ObjetoVO> getBodySeccionArray5() {
	return bodySeccionArray5;
}
public void setBodySeccionArray5(ArrayList<ObjetoVO> bodySeccionArray5) {
	this.bodySeccionArray5 = bodySeccionArray5;
}
public ArrayList<ObjetoVO> getBodySeccionArray6() {
	return bodySeccionArray6;
}
public void setBodySeccionArray6(ArrayList<ObjetoVO> bodySeccionArray6) {
	this.bodySeccionArray6 = bodySeccionArray6;
}
public ArrayList<ObjetoVO> getBodySeccionArray7() {
	return bodySeccionArray7;
}
public void setBodySeccionArray7(ArrayList<ObjetoVO> bodySeccionArray7) {
	this.bodySeccionArray7 = bodySeccionArray7;
}

public ArrayList<ObjetoVO> getBodyQRE() {
	return bodyQRE;
}
public void setBodyQRE(ArrayList<ObjetoVO> bodyQRE) {
	this.bodyQRE = bodyQRE;
}
public ArrayList<ArrayObjetoVO> getBodyQRD() {
	return bodyQRD;
}
public void setBodyQRD(ArrayList<ArrayObjetoVO> bodyQRD) {
	this.bodyQRD = bodyQRD;
}

public JSONObject getBodyQRDJson() {
	return bodyQRDJson;
}
public void setBodyQRDJson(JSONObject bodyQRDJson) {
	this.bodyQRDJson = bodyQRDJson;
}

public String getBodyQRDString() {
	return bodyQRDString;
}
public void setBodyQRDString(String bodyQRDString) {
	this.bodyQRDString = bodyQRDString;
}





@Override
public String toString() {
	return "BodyVO [idBody=" + idBody + ", idEmpresa=" + idEmpresa + ", bodyFondo=" + bodyFondo + ", bodySeccion1="
			+ bodySeccion1 + ", bodySeccion2=" + bodySeccion2 + ", bodySeccion3=" + bodySeccion3 + ", bodySeccion4="
			+ bodySeccion4 + ", bodySeccion5=" + bodySeccion5 + ", bodySeccion6=" + bodySeccion6 + ", bodySeccion7="
			+ bodySeccion7 + ", bodySeccion8=" + bodySeccion8 + ", bodyQRE=" + bodyQRE + ", bodyQRD=" + bodyQRD.toString()
			+ ", bodySeccionArray1=" + bodySeccionArray1 + ", bodySeccionArray2=" + bodySeccionArray2
			+ ", bodySeccionArray3=" + bodySeccionArray3 + ", bodySeccionArray4=" + bodySeccionArray4
			+ ", bodySeccionArray5=" + bodySeccionArray5 + ", bodySeccionArray6=" + bodySeccionArray6
			+ ", bodySeccionArray7=" + bodySeccionArray7 + "]";
}




}