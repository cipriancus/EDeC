package ro.oho.rest.utils;
import java.io.*;
import java.sql.*;
 
public class HTMLReport2 {
 
    public HTMLReport2(Connection connection) {
        generateHtmlFile("C:/Users/Ciprian/workspace/onlinehobby/src/main/webapp/reports" + "/report2.html", connection);
    }
 
    private static void generateHtmlFile(String filename, Connection connection) {
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
            //inceput html + include tableStyle.css
            sbOutput.append("<html>\n"
            		+ "\t<head>\n"
            		+ "\t\t<title>Raport 1</title>\n"
            		+ "\t\t<link rel=\"stylesheet\" type=\"text/css\" href=\"tableStyle.css\">\n"
            		+ "\t</head>\n"
            		+ "\n\t<body>\n");
            bwOutFile.append(sbOutput);
            //titlu + deschiderea tabelului
            bwOutFile.append("\t\t<h2>Evolutia pasiunilor</h2>\n");
            bwOutFile.append("\t\t<table>\n");
            System.out.println("No of columns in the table:"
                    + rsmd.getColumnCount());
            System.out.println();
            //antetul tabelului
            bwOutFile.append("\t\t\t<tr>\n"
            		+ "\t\t\t\t<th>Nume hobby</th>\n"
            		+ "\t\t\t\t<th>Total membri/hobby</th>\n"
            		+ "\t\t\t\t<th>Procentaj membri/hobby</th>\n"
            		+ "\t\t\t</tr>\n");
            bwOutFile.flush();
            rsetCount.next();
            int nrTotalUseriInscrisi = Integer.parseInt(rsetCount.getString(1));
            while (rset.next()) {
                System.out.println(rset.getString(1) + " " + rset.getString(2)
                		+ " " + Integer.parseInt(rset.getString(2)) * (100 / nrTotalUseriInscrisi) + "%");
                //liniile din tabel
                bwOutFile.append("\t\t\t<tr>\n"
                		+ "\t\t\t\t<td>" + rset.getString(1) + "</td>\n"
                		+ "\t\t\t\t<td>" + rset.getString(2) + "</td>\n"
                        + "\t\t\t\t<td>" + Integer.parseInt(rset.getString(2)) * (100 / nrTotalUseriInscrisi) + "%</td>\n"
                		+ "\t\t\t</tr>\n");
                bwOutFile.flush();
                 
            }
            //inchiderea tabelului si a documentului html
            bwOutFile.append("\t\t</table>\n\t</body>\n</html>\n");
            bwOutFile.close();
            stmt.close();
            System.out.println("Ok.");
        }
 
        catch (Exception e) {
            System.err.println("Unable to connect to database: " + e);
 
        }
 
    }
}