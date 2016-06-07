package ro.oho.rest.utils;
import java.io.*;
import java.sql.*;
 
public class CSVReport2 {
 
    public CSVReport2(Connection connection) {
        generateCsvFile("C:/Users/Ciprian/workspace/onlinehobby/src/main/webapp/reports" + "/report2.csv", connection);
    }
 
    private static void generateCsvFile(String filename, Connection connection) {
        try {
        	String firstDate = "05-01-2016"; //aceasta data trebuie data de user
 		    String firstDateFormat = "trunc(TO_DATE('" + firstDate + "','MM-DD-YYYY'))";
 		    String secondDate = "06-07-2016"; //aceasta data trebuie data de user
 		    String secondDateFormat = "trunc(TO_DATE('" + secondDate + "','MM-DD-YYYY'))";
            connection.setAutoCommit(false);
            Statement stmt = connection.createStatement();
            ResultSet rset = stmt
                    .executeQuery("select hobby.HOBBYNAME AS nume, count(userhobby.IDHOBBY) AS Nr_de_membri from userhobby "
         				   + "join hobby on userhobby.IDHOBBY = hobby.IDHOBBY "
        				   + "WHERE DATAJOIN " //trebuie creat campul datajoin
        				   + "BETWEEN " + firstDateFormat + " AND " + secondDateFormat
        				   + " group by hobby.HOBBYNAME");
            Statement stmtCount = connection.createStatement();
            //iau totalul userilor inscrisi in grupuri
            ResultSet rsetCount = stmtCount
                    .executeQuery("SELECT COUNT(*) FROM USERHOBBY");
            ResultSetMetaData rsmd = rset.getMetaData();
            FileWriter fname = new FileWriter(filename);
            BufferedWriter bwOutFile = new BufferedWriter(fname);
            StringBuffer sbOutput = new StringBuffer();
            //antetul tabelului
            sbOutput.append("Nume_hobby,Nr_de_membri,Procentaj");
            bwOutFile.append(sbOutput);
            bwOutFile.append(System.getProperty("line.separator"));
            System.out.println("No of columns in the table:"
                    + rsmd.getColumnCount());
            System.out.println();
            rsetCount.next();
            int nrTotalUseriInscrisi = Integer.parseInt(rsetCount.getString(1));
            while (rset.next()) {
                System.out.println(rset.getString(1) + " " + rset.getString(2) 
                		+ " " + Integer.parseInt(rset.getString(2)) * (100 / nrTotalUseriInscrisi) + "%");
                //liniile tabelului
                bwOutFile.append(rset.getString(1) 
                		+ "," + rset.getString(2) 
                		+ "," + Integer.parseInt(rset.getString(2)) * (100 / nrTotalUseriInscrisi) + "%");
                bwOutFile.append(System.getProperty("line.separator"));
                bwOutFile.flush();
                 
            }
            bwOutFile.close();
            stmt.close();
            System.out.println("Ok.");
        }
 
        catch (Exception e) {
            System.err.println("Unable to connect to database: " + e);
 
        }
 
    }
}