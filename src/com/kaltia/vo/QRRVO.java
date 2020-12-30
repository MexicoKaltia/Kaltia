package com.kaltia.vo;

public class QRRVO {
	
	
	private String idQRR;
	private String idAction;
	private String modeloQRR;
	private String tipoQRR;
	private String codigo;
	private String mensaje;
	
	
	public QRRVO() {
	}



	public QRRVO(String idQRR, String idAction, String modeloQRR, String tipoQRR) {
		this.idQRR = idQRR;
		this.idAction = idAction;
		this.modeloQRR = modeloQRR;
		this.tipoQRR = tipoQRR;
	}



	public String getIdQRR() {
		return idQRR;
	}



	public void setIdQRR(String idQRR) {
		this.idQRR = idQRR;
	}



	public String getIdAction() {
		return idAction;
	}



	public void setIdAction(String idAction) {
		this.idAction = idAction;
	}



	public String getModeloQRR() {
		return modeloQRR;
	}



	public void setModeloQRR(String modeloQRR) {
		this.modeloQRR = modeloQRR;
	}



	public String getTipoQRR() {
		return tipoQRR;
	}



	public void setTipoQRR(String tipoQRR) {
		this.tipoQRR = tipoQRR;
	}

	public String getCodigo() {
		return codigo;
	}



	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}



	public String getMensaje() {
		return mensaje;
	}



	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	
}
