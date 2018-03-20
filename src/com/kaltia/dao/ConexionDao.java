package com.kaltia.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.infra.BaseInfra;
import com.mysql.jdbc.Statement;

//import com.mysql.jdbc.ResultSetMetaData;
import java.sql.ResultSetMetaData;

public class ConexionDao {

	// private static BaseInfra insInfra = new BaseInfra();
	static final Logger logger = LogManager.getLogger(ConexionDao.class.getName());
	
	/*
	 *  DataSource kaltiaConexion
	 *  
	 */
	private static Context initContext;
	private static Connection conn = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	
	private static Object conResult = null;

	@SuppressWarnings("null")
	public static ArrayList<Object> doConexion(String qry, List complemento) {

		ArrayList<Object> resultSet = new ArrayList<Object>();
		try {
			
			if(qry.startsWith("SELECT") || qry.startsWith("select")){
				Object rise = (ResultSet)conectar(qry, complemento);
				rs = (ResultSet)rise;
			
			
			int columnas = rs.getMetaData().getColumnCount();
			
			if (rs != null) {
				while (rs.next()) {
					for (int i = 1; i <= columnas; i++) {
						resultSet.add(i - 1, rs.getString(i));
					}

				}
			} else
				return null;
			}else{
				Integer rise = (Integer)conectar(qry, complemento);
				logger.info("Result Insert:"+rise);
				 resultSet.add(0, rise);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally { conectarClose(); }
					
		return resultSet;
	}
	
	

	
	
	
	

	public static ArrayList<Object> doConexionSet(String qry, List complemento) {

		ArrayList<Object> arrResultSet = new ArrayList<Object>();
		ArrayList<Object> resultSet ;
		;
		try {

			rs = (ResultSet)conectar(qry, complemento);
			int columnas = rs.getMetaData().getColumnCount();
			//logger.warn("columnas2:" + columnas);
			if (rs != null) {
				//logger.warn("rs.getRow():" + rs.getRow());
				while (rs.next()) {
					//logger.warn("rs:" + rs);
					resultSet = new ArrayList<Object>();
					for (int i = 1; i <= columnas; i++) {
						resultSet.add(i - 1, rs.getString(i));
						//logger.warn("rs.getString(" + i + "):" + rs.getString(i));
					}
					arrResultSet.add(resultSet);
				}
			} else {
				logger.warn("ResulSet-nulo o Cero:" + rs);
				return null;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally { conectarClose(); }
		
		return arrResultSet;
	}
	
	private static Object conectar(String qry, List complemento){
		
		/*
		 * String URL = "jdbc:postgresql://127.0.0.1:5432/KaltiaDB";
		 * Class.forName("org.postgresql.Driver"); conn =
		 * DriverManager.getConnection(URL, "hgrc", "hgrc");
		 */
		//logger.info("complemento:"+ complemento.size());
		
		ArrayList<String> complementos = (ArrayList)complemento;
		
		try {
			
			/*  
			 * DriveManager : la diferencia de usar el pool o no esta en que si no se hace la conexión se obtiene desde DriverManager
			 *  y en este caso se hace desde el DataSource que obtenemos haciendo lookup sobre InitialContext pasándole el nombre del DataSource que hemos creado
			 *  
			 *  Class.forName("com.mysql.jdbc.Driver");
			 *  String URL = "jdbc:mysql://localhost:3306/kaltiadb"; 
			 *  
			 *  
			 *  conn = DriverManager.getConnection(URL, "root", "H00W6odR");
			 *  
			 */
			
			 	initContext = new InitialContext();
			    DataSource ds = (DataSource) initContext.lookup("java:/comp/env/jdbc/kaltiaConexion");
			    conn = ds.getConnection();
		
			    logger.warn(qry);
			
			ps = conn.prepareStatement(qry);
			int i = 1;
			for(String a : complementos){
				//logger.info("i:"+i);
				//logger.info("complementos:"+a);
			ps.setNString(i, a);
			i++;}
			
			
			if(qry.startsWith("SELECT") || qry.startsWith("select")){
			rs = ps.executeQuery();
			conResult = rs;
			}else{
				Integer rsInsert = ps.executeUpdate();
				conResult = rsInsert;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conResult;
	}
	
	
	
	private static void conectarClose(){
		if (rs != null) {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (SQLException sqlEx) {
				sqlEx.printStackTrace();
			} // ignore
		}
	}


}