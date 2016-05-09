package ro.oho.rest.dao;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ro.oho.rest.model.ConnectionHelperClass;
import ro.oho.rest.model.User;

public class UserDAO {

	//private static final String GET_ALL_USER = "SELECT * FROM usersoho ";
	
	private static final String GET_ALL_USER = "SELECT * FROM usersoho";

	private static final String GET_USER_BY_ID = "SELECT * FROM usersoho where idUser=?";

	private static final String GET_USER_BY_USERNAME = "SELECT * FROM usersoho where username=?";

	private static final String INSERT_USER = "INSERT INTO usersoho(idUser,nameuser, surnameuser, date_of_birth, "
			+ "email, username,parola) VALUES (1, ?, ?,  to_date(?,'yyyy-mm-dd'), ?, ? ,?)";

	private static final String DELETE_USER = "DELETE FROM user where id=?";

	public List<User> getAllUsers() {
		Connection con = ConnectionHelperClass.getOracleConnection();
		List<User> list = new ArrayList<User>();

		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_ALL_USER);
			ResultSet resultSet = prepareStatement.executeQuery();
			while (resultSet.next()) {
				User user = new User();
				user.setIdUser(resultSet.getInt("idUser"));
				user.setUsername(resultSet.getString("username"));
				user.setDataNasterii(resultSet.getString("date_of_birth"));
				user.setPassword(resultSet.getString("parola"));
				user.setNume(resultSet.getString("nameuser"));
				user.setPrenume(resultSet.getString("surnameuser"));
				user.setEmail(resultSet.getString("email"));
				user.setGrad(resultSet.getInt("grade"));

				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public User getUserById(int id) {
		Connection con = ConnectionHelperClass.getOracleConnection();

		User user = new User();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_USER_BY_ID);
			prepareStatement.setInt(1, id);
			ResultSet resultSet = prepareStatement.executeQuery();
			resultSet.next();
			user.setIdUser(resultSet.getInt("idUser"));
			user.setUsername(resultSet.getString("username"));
			user.setDataNasterii(resultSet.getString("date_of_birth"));
			user.setPassword(resultSet.getString("parola"));
			user.setNume(resultSet.getString("nameuser"));
			user.setPrenume(resultSet.getString("surnameuser"));
			user.setEmail(resultSet.getString("email"));
			user.setGrad(resultSet.getInt("grade"));

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public User getUserByUserName(String username) {
		Connection con = ConnectionHelperClass.getOracleConnection();

		User user = new User();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_USER_BY_USERNAME);
			prepareStatement.setString(1, username);
			ResultSet resultSet = prepareStatement.executeQuery();
			resultSet.next();
			user.setIdUser(resultSet.getInt("idUser"));
			user.setUsername(resultSet.getString("username"));
			user.setDataNasterii(resultSet.getString("date_of_birth"));
			user.setPassword(resultSet.getString("parola"));
			user.setNume(resultSet.getString("nameuser"));
			user.setPrenume(resultSet.getString("surnameuser"));
			user.setEmail(resultSet.getString("email"));
			user.setGrad(resultSet.getInt("grade"));

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public User updateUser(User userEntity) {

		return userEntity;
	}

	public void deleteUser(int userId) {
		Connection con = ConnectionHelperClass.getOracleConnection();

		try {
			PreparedStatement prepareStatement = con.prepareStatement(DELETE_USER);
			prepareStatement.setInt(1, userId);
			prepareStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean createUser(User user) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		try {
			
			PreparedStatement prepareStatement = con.prepareStatement(INSERT_USER);
			prepareStatement.setString(1, user.getNume());
			prepareStatement.setString(2, user.getPrenume());
			prepareStatement.setString(3, user.getDataNasterii());
			prepareStatement.setString(4, user.getEmail());
			prepareStatement.setString(5, user.getUsername());
			prepareStatement.setString(6, user.getPassword());
			prepareStatement.execute();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
