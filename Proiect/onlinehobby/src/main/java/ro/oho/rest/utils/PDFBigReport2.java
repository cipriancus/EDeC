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
	 
	public class PDFBigReport2 {
	 	 
	   public PDFBigReport2(Connection connection) {
		   //interogarea care imi da statistica: evolutia pasiunilor intr-un interval de timp
		   String firstDate = "05-01-2016"; //aceasta data trebuie data de user
		   String firstDateFormat = "trunc(TO_DATE('" + firstDate + "','MM-DD-YYYY'))";
		   String secondDate = "06-06-2016"; //aceasta data trebuie data de user
		   String secondDateFormat = "trunc(TO_DATE('" + secondDate + "','MM-DD-YYYY'))";
		   String selectHobbySQL = 
				   "select hobby.HOBBYNAME AS nume, count(userhobby.IDHOBBY) AS Nr_de_membri from userhobby "
				   + "join hobby on userhobby.IDHOBBY = hobby.IDHOBBY "
				   + "WHERE DATAJOIN " //trebuie creat campul datajoin
				   + "BETWEEN " + firstDateFormat + " AND " + secondDateFormat
				   + " group by hobby.HOBBYNAME";
		   JasperPdfExporterBuilder pdfExporter = export.
						pdfExporter("C:/Users/Ciprian/workspace/onlinehobby/src/main/webapp/reports" + "/BigReport2.pdf");
		   //coloanele tabelului
		   TextColumnBuilder<String> hobbynameColumn = col.column("Nume Hobby", "nume", type.stringType());
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
	            .title(Templates.createTitleComponent("Evolutie pasiuni"))
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
