package com.kaltia.vo;

public class VideoVO {
	
	private String videoTitulo;
	private String videoContexto;
	private String codigo;
	private String mensaje;
	
	
	
	
	
	@Override
	public String toString() {
		return "VideoVO [videoTitulo=" + videoTitulo + ", videoContexto=" + videoContexto + ", codigo=" + codigo
				+ ", mensaje=" + mensaje + "]";
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





	public String getVideoTitulo() {
		return videoTitulo;
	}





	public void setVideoTitulo(String videoTitulo) {
		this.videoTitulo = videoTitulo;
	}





	public String getVideoContexto() {
		return videoContexto;
	}





	public void setVideoContexto(String videoContexto) {
		this.videoContexto = videoContexto;
	}





	public VideoVO(){
		
	}
	

}
