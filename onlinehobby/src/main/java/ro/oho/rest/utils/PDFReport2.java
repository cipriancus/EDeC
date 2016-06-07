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
	 
	public class PDFReport2 {
		
	   public PDFReport2(Connection connection) {
		   String firstDate = "05-01-2016"; 
		   String firstDateFormat = "trunc(TO_DATE('" + firstDate + "','MM-DD-YYYY'))";
		   String secondDate = "SYSDATE";
		   String secondDateFormat = secondDate;
		   String selectHobbySQL = 
				   "select hobby.HOBBYNAME AS nume, count(userhobby.IDHOBBY) AS Nr_de_membri from userhobby "
				   + "join hobby on userhobby.IDHOBBY = hobby.IDHOBBY "
				   + "WHERE DATAJOIN "
				   + "BETWEEN " + firstDateFormat + " AND " + secondDateFormat
				   + " group by hobby.HOBBYNAME";
		  JasperPdfExporterBuilder pdfExporter = export.
					pdfExporter("C:/Users/Ciprian/workspace/onlinehobby/src/main/webapp/reports/" + "/report2.pdf");
		  
	      FontBuilder boldFont = stl.fontArialBold().setFontSize(12);
	      //coloanele tabelului
	      TextColumnBuilder<String> hobbynameColumn = col.column("Nume Hobby", "nume", type.stringType());
	      TextColumnBuilder<Integer> nrmembriColumn = col.column("Nr de membri", "Nr_de_membri", type.integerType());
	 
	      try {
	         report()
	            .setTemplate(Templates.reportTemplate)
	            .columns(hobbynameColumn, nrmembriColumn)
	            .title(Templates.createTitleComponent("Evolutie pasiuni"))
	            .summary(
	               cht.pie3DChart()
	                  .setTitle("Evolutia pasiunilor intr-un interval de timp")
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