package com.kaltia.service;

import java.io.StringReader;
import java.util.Properties;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;

import com.kaltia.infra.BaseInfra;
import com.kaltia.vo.HeaderVO;

public class JsonDOM {
	public static Properties _bronea = BaseInfra._bronea;

	public  static void jsonElementoHeader(HeaderVO headerVO, String action) {
		
		String strSeccionArray1 = _bronea.getProperty("headerSeccion1");
		String strSeccionArray2 = _bronea.getProperty("headerSeccion2");
		String strSeccionArray3 = _bronea.getProperty("headerSeccion3");
		
		JsonReader reader = Json.createReader(new StringReader(strSeccionArray1));
        
        JsonObject personObject = reader.readObject();
         
        reader.close();
          
        System.out.println("NOMBRE   : " + personObject.getString("arrayText"));
        
		
	}

}
