package ro.oho.rest.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MakeReports {

	static Connection connection;
	public static void main(String[] args) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "ciprian", "parola");
			
		      new PDFReport(connection);
		      new PDFPercentageReport(connection);
		      new HTMLReport(connection);
		      new CSVReport(connection);
		      
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
	   }
	
}
