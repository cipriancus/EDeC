package ro.oho.rest.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ro.oho.rest.model.ConnectionHelperClass;
import ro.oho.rest.model.Postare;

public class PostareDAO {
	private static final String GET_ALL_POSTARI_ID = "select * from hobbypost p join userhobby	h on p.idhobby=	h.idhobby where h.iduser=? order by date_of_post desc";
	private static final String INSERT_POST = "{call userSkills.postIt(?,?,?)}";

	public List<Postare> getAllPostariForId(int id) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		List<Postare> list = new ArrayList<Postare>();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_ALL_POSTARI_ID);
			prepareStatement.setInt(1, id);
			ResultSet resultSet = prepareStatement.executeQuery();
			while (resultSet.next()) {
				Postare postare = new Postare();
				postare.setIdHobby(resultSet.getInt("idHobby"));
				postare.setIdUser(resultSet.getInt("idUser"));
				postare.setMesaj(resultSet.getString("message"));
				postare.setDate_of_post(resultSet.getString("date_of_post"));
				postare.setIdPost(resultSet.getInt("idPost"));
				list.add(postare);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean postInHobby(String username, String hobbyName, String message) throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(INSERT_POST);
		cstmt.setString(1, username);
		cstmt.setString(2, hobbyName);
		cstmt.setString(3, message);
		cstmt.execute();
		return true;

	}
}
