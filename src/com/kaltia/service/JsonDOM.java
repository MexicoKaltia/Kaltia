package com.kaltia.service;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.action.InitAction;
import com.kaltia.infra.BaseInfra;
import com.kaltia.vo.HeaderVO;

public class JsonDOM {
	public static Properties jsonSeccion = BaseInfra.jsonSeccion;
	static final Logger logger = LogManager.getLogger(InitAction.class.getName());
	
	private static JsonObject creaJson(String seccion) {
		
		JsonReader reader = Json.createReader(new StringReader(seccion));
        JsonObject jsonObject = reader.readObject();      
        reader.close();
        return jsonObject;
	}


	public  static void jsonElementoHeader(HeaderVO headerVO, String action, String estilo) {
		
		estilo = estilo.replace(estilo.substring(0,1),estilo.substring(0,1).toUpperCase());
//		logger.info("estilo:"+estilo);
		String strSeccion1 = jsonSeccion.getProperty("headerSeccion1")!=null?jsonSeccion.getProperty("headerSeccion1"):"";
		String strSeccion2 = jsonSeccion.getProperty("headerSeccion2")!=null?jsonSeccion.getProperty("headerSeccion2"):"";
		String strSeccion3 = jsonSeccion.getProperty("headerSeccion3")!=null?jsonSeccion.getProperty("headerSeccion3"):"";
		String strSeccion4 = jsonSeccion.getProperty("headerSeccion4"+estilo)!=null?jsonSeccion.getProperty("headerSeccion4"+estilo):"";
		String strSeccion5 = jsonSeccion.getProperty("headerSeccion5"+estilo)!=null?jsonSeccion.getProperty("headerSeccion5"+estilo):"";
		String strSeccionArray1 = jsonSeccion.getProperty("headerSeccionArray1"+estilo)!=null?jsonSeccion.getProperty("headerSeccionArray1"+estilo):"";
		String strSeccionArray2 = jsonSeccion.getProperty("headerSeccionArray2"+estilo)!=null?jsonSeccion.getProperty("headerSeccionArray2"+estilo):"";
		String strSeccionArray3 = jsonSeccion.getProperty("headerSeccionArray3"+estilo)!=null?jsonSeccion.getProperty("headerSeccionArray3"+estilo):"";
		String strSeccionArray4 = jsonSeccion.getProperty("headerSeccionArray4"+estilo)!=null?jsonSeccion.getProperty("headerSeccionArray4"+estilo):"";
		String strSeccionArray5 = jsonSeccion.getProperty("headerSeccionArray5"+estilo)!=null?jsonSeccion.getProperty("headerSeccionArray5"+estilo):"";
		
		String[] jsonStrHeader = {strSeccion1, strSeccion2,strSeccion3,strSeccion4,strSeccion5,strSeccionArray1,strSeccionArray2,strSeccionArray3,strSeccionArray4,strSeccionArray5}; 
		int i=1;
		
		for (String a : jsonStrHeader) {
//			logger.info(i+".-JSON:"+a);
			if(!a.equals("")) {
		JsonObject jsonObject = creaJson(a);
		switch (i){
		case 1:
			logger.info("headerSeccion1:"+headerVO.getHeaderSeccion1());
			logger.info("valor JSON:"+jsonObject);
			//jsonObject.
			
			break;
		case 2:
			logger.info("headerSeccion2:"+headerVO.getHeaderSeccion2());
			break;
		case 3:
			logger.info("headerSeccion3:"+headerVO.getHeaderSeccion3());
			break;
		case 4:
			logger.info("headerSeccion4:"+headerVO.getHeaderSeccion4());
			break;
		case 5:
			logger.info("headerSeccion4:"+headerVO.getHeaderSeccion5());
			break;
		}
		
				
		i++;
			}
	
		}
		
	}
	

}
