package com.kaltia.vo;

public class ProductosVO {
	
	private String idEmpresa;
	private boolean checkPagina;
	private boolean checkQRR;
	private boolean checkQRE;
	
	private boolean checkPuntoVenta;
	private boolean clientePagina;
	private boolean chatPagina;
	private boolean videoPagina;
	private boolean tarjetaPagina;
	private boolean retroalimentacionPagina;
	
	private boolean citaPagina;
	private boolean carpetaPagina;
	private boolean notificacionPagina;
	
	private String codigo;
	private String mensaje;
	
	@Override
	public String toString() {
		return "ProductosVO [idEmpresa=" + idEmpresa + ", checkPagina=" + checkPagina + ", checkQRR=" + checkQRR
				+ ", checkQRE=" + checkQRE + ", checkPuntoVenta=" + checkPuntoVenta + ", clientePagina=" + clientePagina
				+ ", chatPagina=" + chatPagina + ", videoPagina=" + videoPagina + ", tarjetaPagina=" + tarjetaPagina
				+ ", retroalimentacionPagina=" + retroalimentacionPagina + ", citaPagina=" + citaPagina
				+ ", carpetaPagina=" + carpetaPagina + ", notificacionPagina=" + notificacionPagina + "]";
	}
	public String getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(String idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public boolean isCheckPagina() {
		return checkPagina;
	}
	public void setCheckPagina(boolean checkPagina) {
		this.checkPagina = checkPagina;
	}
	public boolean isCheckQRR() {
		return checkQRR;
	}
	public void setCheckQRR(boolean checkQRR) {
		this.checkQRR = checkQRR;
	}
	public boolean isCheckQRE() {
		return checkQRE;
	}
	public void setCheckQRE(boolean checkQRE) {
		this.checkQRE = checkQRE;
	}
	public boolean isCheckPuntoVenta() {
		return checkPuntoVenta;
	}
	public void setCheckPuntoVenta(boolean checkPuntoVenta) {
		this.checkPuntoVenta = checkPuntoVenta;
	}
	public boolean isClientePagina() {
		return clientePagina;
	}
	public void setClientePagina(boolean clientePagina) {
		this.clientePagina = clientePagina;
	}
	public boolean isChatPagina() {
		return chatPagina;
	}
	public void setChatPagina(boolean chatPagina) {
		this.chatPagina = chatPagina;
	}
	public boolean isVideoPagina() {
		return videoPagina;
	}
	public void setVideoPagina(boolean videoPagina) {
		this.videoPagina = videoPagina;
	}
	public boolean isTarjetaPagina() {
		return tarjetaPagina;
	}
	public void setTarjetaPagina(boolean tarjetaPagina) {
		this.tarjetaPagina = tarjetaPagina;
	}
	public boolean isRetroalimentacionPagina() {
		return retroalimentacionPagina;
	}
	public void setRetroalimentacionPagina(boolean retroalimentacionPagina) {
		this.retroalimentacionPagina = retroalimentacionPagina;
	}
	public boolean isCitaPagina() {
		return citaPagina;
	}
	public void setCitaPagina(boolean citaPagina) {
		this.citaPagina = citaPagina;
	}
	public boolean isCarpetaPagina() {
		return carpetaPagina;
	}
	public void setCarpetaPagina(boolean carpetaPagina) {
		this.carpetaPagina = carpetaPagina;
	}
	public boolean isNotificacionPagina() {
		return notificacionPagina;
	}
	public void setNotificacionPagina(boolean notificacionPagina) {
		this.notificacionPagina = notificacionPagina;
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
