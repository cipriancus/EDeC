package ro.oho.rest.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ro.oho.rest.model.ConnectionHelperClass;
import ro.oho.rest.model.Hobby;

public class HobbyDAO {
	private static final String GET_ALL_USER_HOBBY = "select * from hobby h join userhobby u on h.idhobby=u.idhobby where u.iduser=?";
	private static final String GET_HOBBY_NAME = "select * from hobby where idhobby=?";
	private static final String GET_HOBBY_ID= "select * from hobby where hobbyname=?";

	public Hobby getHobbyForId(int id) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		Hobby hobby = new Hobby();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_HOBBY_NAME);
			prepareStatement.setInt(1, id);
			ResultSet resultSet = prepareStatement.executeQuery();
			resultSet.next();
			hobby.setIdHobby(resultSet.getInt("idHobby"));
			hobby.setDescription(resultSet.getString("description"));
			hobby.setHobbyName(resultSet.getString("hobbyname"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hobby;
	}
	
	public Hobby getHobbyForName(String name) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		Hobby hobby = new Hobby();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_HOBBY_ID);
			prepareStatement.setString(1, name);
			ResultSet resultSet = prepareStatement.executeQuery();
			resultSet.next();
			hobby.setIdHobby(resultSet.getInt("idHobby"));
			hobby.setDescription(resultSet.getString("description"));
			hobby.setHobbyName(resultSet.getString("hobbyname"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hobby;
	}

	public List<Hobby> getAllUserHobby(int id) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		List<Hobby> list = new ArrayList<Hobby>();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_ALL_USER_HOBBY);
			prepareStatement.setInt(1, id);
			ResultSet resultSet = prepareStatement.executeQuery();
			while (resultSet.next()) {
				Hobby hobby = new Hobby();
				hobby.setIdHobby(resultSet.getInt("idHobby"));
				hobby.setDescription(resultSet.getString("description"));
				hobby.setHobbyName(resultSet.getString("hobbyname"));
				list.add(hobby);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
