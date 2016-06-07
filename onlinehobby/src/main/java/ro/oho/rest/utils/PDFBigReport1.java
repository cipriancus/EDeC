package ro.oho.rest.utils;
import static net.sf.dynamicreports.report.builder.DynamicReports.*;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.sf.dynamicreports.examples.Templates;
import net.sf.dynamicreports.jasper.builder.export.JasperPdfExporterBuilder;
import net.sf.dynamicreports.report.builder.chart.AreaChartBuilder;
import net.sf.dynamicreports.report.builder.chart.BarChartBuilder;
import net.sf.dynamicreports.report.builder.chart.LineChartBuilder;
import net.sf.dynamicreports.report.builder.chart.PieChartBuilder;
import net.sf.dynamicreports.report.builder.chart.StackedBar3DChartBuilder;
import net.sf.dynamicreports.report.builder.chart.StackedBarChartBuilder;
import net.sf.dynamicreports.report.builder.column.TextColumnBuilder;
import net.sf.dynamicreports.report.exception.DRException;
	 /**
	  * rarest passion
	  * @author Ciprian
	  *
	  */
	public class PDFBigReport1 {
	 
	   public PDFBigReport1(Connection connection) {
		   try {
		   
			   build(connection);
	        
			   DatabaseMetaData databaseMetaData = connection.getMetaData();
			   String   catalog          = null;
			   String   schemaPattern    = null;
			   String   tableNamePattern = null;
			   String[] types            = null;

			   ResultSet result = databaseMetaData.getTables(
					   catalog, schemaPattern, tableNamePattern, types );

			   while(result.next()) {
				   String tableName = result.getString(3);
				   System.out.println(tableName);
			   }
		   }
		   		catch (SQLException e) {
		         e.printStackTrace();
		      }
	   }
	 
	   private void build(Connection connection) {
		   String selectHobbySQL = "SELECT hobbyname, COUNT(userhobby.idhobby) AS Nr_de_membri "
					  + "FROM userhobby JOIN hobby ON userhobby.idhobby = hobby.idhobby "
					  + "GROUP BY userhobby.idhobby, hobbyname "
					  + "ORDER  BY COUNT(userhobby.idhobby) DESC";
		   JasperPdfExporterBuilder pdfExporter = export.
						pdfExporter("reports" + "/BigReport1.pdf");
		   //coloanele tabelului
		   TextColumnBuilder<String> hobbynameColumn = col.column("Nume Hobby", "hobbyname", type.stringType());
		   TextColumnBuilder<Integer> nrmembriColumn = col.column("Nr de membri", "Nr_de_membri", type.integerType());
		      //diagrame dupa nrMembri / hobby
	      BarChartBuilder barChart = cht.barChart()
	         .setShowPercentages(false)
	         .setShowValues(true)
	         .setPercentValuePattern("#,##0")
	         .setCategory(hobbynameColumn)
	         .series(cht.serie(nrmembriColumn));
	      StackedBarChartBuilder stackedBarChart = cht.stackedBarChart()
	         .setShowPercentages(false)
	         .setShowValues(true)
	         .setCategory(hobbynameColumn)
	         .series(cht.serie(nrmembriColumn));
	      LineChartBuilder lineChart = cht.lineChart()
	         .setShowPercentages(false)
	         .setShowValues(true)
	         .setCategory(hobbynameColumn)
	         .series(cht.serie(nrmembriColumn));
	      AreaChartBuilder areaChart = cht.areaChart()
	         .setShowPercentages(false)
	         .setShowValues(true)
	         .setCategory(hobbynameColumn)
	         .series(cht.serie(nrmembriColumn));
	      StackedBar3DChartBuilder stackedBar3DChart = cht.stackedBar3DChart()
	         .setShowPercentages(false)
	         .setShowValues(true)
	         .setCategory(hobbynameColumn)
	         .series(cht.serie(nrmembriColumn));
	      PieChartBuilder pieChart = cht.pieChart()
	         .setShowPercentages(true)
	         .setShowValues(true)
	         .setKey(hobbynameColumn)
	         .series(cht.serie(nrmembriColumn));
	 
	      try {
	         report()
	            .setTemplate(Templates.reportTemplate)
	            .columns(hobbynameColumn, nrmembriColumn)
	            .title(Templates.createTitleComponent("Top pasiuni"))
	            .summary(
	            		//pune cate doua diagrame pe rand
	               cmp.horizontalList(barChart, stackedBarChart),
	               cmp.horizontalList(lineChart, areaChart),
	               cmp.horizontalList(stackedBar3DChart, pieChart))
	            .pageFooter(Templates.footerComponent)
	            .setDataSource(selectHobbySQL, connection)
	            .toPdf(pdfExporter);
	      } catch (DRException e) {
	         e.printStackTrace();
	      }
	   }
	   
	}
