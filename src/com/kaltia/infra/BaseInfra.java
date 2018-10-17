package com.kaltia.infra;


import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


public class BaseInfra {
    
	public static final Logger log = LogManager.getLogger();
	
	public void logMensaje(){
		    log.trace("trace message");
	        log.debug("debug message");
	        log.warn("warn message");
	        log.info("info message");
	        log.error("error message");
	        log.fatal("fatal message");
	}
	
	
    public static Properties PROPS = loadProperties();
    public static Properties jsonSeccion = loadBronea();
    
    public BaseInfra() {
        super();
    }
    
    public static Properties loadProperties() {
        Properties props = new Properties();
        //FileInputStream fis=null;
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        InputStream fis = classLoader.getResourceAsStream("../../props/error.properties");
        
        try {
          //fis = new FileInputStream("../../props/error.properties");
          //  fis = new FileInputStream("/opt/vun/tect2/properties/globals.properties");// properties QA
            props.load(fis);
        } catch (FileNotFoundException fnfException) {
            fnfException.printStackTrace();
        } catch (IOException iOException) {
            iOException.printStackTrace();
        } finally {
            try {
                fis.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return props;
    }
    
    public static Properties loadBronea() {
        Properties props = new Properties();
        //FileInputStream fis=null;
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        InputStream fis = classLoader.getResourceAsStream("../../props/jsonSeccion.properties");
        
        try {
          //fis = new FileInputStream("../../props/error.properties");
          //  fis = new FileInputStream("/opt/vun/tect2/properties/globals.properties");// properties QA
            props.load(fis);
        } catch (FileNotFoundException fnfException) {
            fnfException.printStackTrace();
        } catch (IOException iOException) {
            iOException.printStackTrace();
        } finally {
            try {
                fis.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return props;
    }
}