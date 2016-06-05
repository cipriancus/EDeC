package ro.oho.rest.utils;

import java.io.*;
import java.sql.*;
 
public class CSVReport {
 
    public CSVReport(Connection connection) {
        generateCsvFile("C:/Users/Ciprian/workspace/onlinehobby/src/main/webapp/reports/report1.csv", connection);
    }
 
    private static void generateCsvFile(String filename, Connection connection) {
        try {
            connection.setAutoCommit(false);
            Statement stmt = connection.createStatement();
            ResultSet rset = stmt
                    .executeQuery("SELECT hobbyname, COUNT(userhobby.idhobby) AS Nr_de_membri "
          				  + "FROM userhobby JOIN hobby ON userhobby.idhobby = hobby.idhobby "
        				  + "GROUP BY userhobby.idhobby, hobbyname "
        				  + "ORDER  BY COUNT(userhobby.idhobby) DESC");
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