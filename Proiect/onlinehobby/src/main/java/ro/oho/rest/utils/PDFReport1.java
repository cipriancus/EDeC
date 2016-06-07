package ro.oho.rest.utils;
import static net.sf.dynamicreports.report.builder.DynamicReports.*;
	 
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.sf.dynamicreports.examples.Templates;
import net.sf.dynamicreports.jasper.builder.export.JasperPdfExporterBuilder;
import net.sf.dynamicreports.report.builder.column.TextColumnBuilder;
import net.sf.dynamicreports.report.builder.style.FontBuilder;
import net.sf.dynamicreports.report.exception.DRException;
	 /**
	  * rarest
	  * @author Ciprian
	  *
	  */
	public class PDFReport1 {
		
	    public PDFReport1(Connection connection) {
		  //interogarea care imi da statistica: cele mai populare/rarisime pasiuni
		  String selectHobbySQL = 
				  "SELECT hobbyname, COUNT(userhobby.idhobby) AS Nr_de_membri "
				  + "FROM userhobby JOIN hobby ON userhobby.idhobby = hobby.idhobby "
				  + "GROUP BY userhobby.idhobby, hobbyname "
				  + "ORDER  BY COUNT(userhobby.idhobby) DESC";
		  JasperPdfExporterBuilder pdfExporter = export.
					pdfExporter("C:/Users/Ciprian/workspace/onlinehobby/src/main/webapp/reports" + "/report1.pdf");
		  
	      FontBuilder boldFont = stl.fontArialBold().setFontSize(12);
	      //coloanele tabelului
	      TextColumnBuilder<String> hobbynameColumn = col.column("Nume Hobby", "hobbyname", type.stringType());
	      TextColumnBuilder<Integer> nrmembriColumn = col.column("Nr de membri", "Nr_de_membri", type.integerType());
	 
	      try {
	         report()
	            .setTemplate(Templates.reportTemplate)
	            .columns(hobbynameColumn, nrmembriColumn)
	            .title(Templates.createTitleComponent("Top pasiuni"))
	            .summary(
	               cht.pie3DChart()
	                  .setTitle("Cele mai populare/rarisime pasiuni")
	                  .setTitleFont(boldFont)
	                  .setKey(hobbynameColumn)
	                  .series(
	                     cht.serie(nrmembriColumn)))
	            .pageFooter(Templates.footerComponent)
	            .setDataSource(selectHobbySQL, connection)
	            .toPdf(pdfExporter);
	      } catch (DRException e) {
	         e.printStackTrace();
	      }
	   }
	 
	}