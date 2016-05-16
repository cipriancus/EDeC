package ro.oho.rest.dao;

import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.OracleTypes;
import oracle.jdbc.oracore.OracleType;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import ro.oho.rest.model.ConnectionHelperClass;
import ro.oho.rest.model.User;

public class UserDAO {

	private static final String GET_USER_BY_ID = "SELECT * FROM usersoho where idUser=?";

	private static final String GET_USER_BY_USERNAME = "SELECT * FROM usersoho where username=?";

	private static final String INSERT_USER = "{call userskills.addUser(?,?,?,?,?,?)}";

	private static final String DELETE_USER = "{call adminskills.deleteUser(?)}";

	private static final String ADMIN_USER = "{call adminskills.setGrade(?,'Administrator')}";

	private static final String LOGIN_USER = "{call userSkills.loginUser(?)}";

	private static final String UPDATE_USER = "{call userSkills.updateUser(?, ?, ?, ?, ?)}";

	private static final String GET_USER = "{call paginare(?, ?)}";
	
	private static final String GENERATE_CVS="{call generate()}";

	public boolean generateCVS()throws SQLException{
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(GENERATE_CVS);
		cstmt.execute();
		return true;
	}
	
	public boolean createUser(User user) throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(INSERT_USER);
		cstmt.setString(1, user.getNume());
		cstmt.setString(2, user.getPrenume());
		cstmt.setString(3, user.getDataNasterii());
		cstmt.setString(4, user.getEmail());
		cstmt.execute();
		return true;
	}

	public List<String> getUserPage(int page) throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(GET_USER);
		cstmt.setInt(1, page);
		cstmt.registerOutParameter(2,OracleTypes.CURSOR);
		cstmt.execute();

		ResultSet rs = (ResultSet) cstmt.getObject(2);
		List<String> list = new ArrayList<String>();
		while (rs.next()) {
			String user = rs.getInt("idUser") + " " + rs.getString("nameuser") + " " + rs.getString("surnameuser") + " "
					+ rs.getDate("date_of_birth") + " " + rs.getString("email") + " " + rs.getString("username")+" "+rs.getInt("idgrad");
			list.add(user);
		}
		return list;
	}

	public boolean adminUser(String username) throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(ADMIN_USER);
		cstmt.setString(1, username);
		cstmt.execute();
		return true;
	}

	public boolean login(String username) throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(LOGIN_USER);
		cstmt.setString(1, username);
		cstmt.execute();
		return true;
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
			user.setDataNasterii(resultSet.getString("date_of_birth"));
			user.setNume(resultSet.getString("nameuser"));
			user.setPrenume(resultSet.getString("surnameuser"));
			user.setEmail(resultSet.getString("email"));
			user.setGrad(resultSet.getInt("idgrad"));

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
			user.setDataNasterii(resultSet.getString("date_of_birth"));
			user.setNume(resultSet.getString("nameuser"));
			user.setPrenume(resultSet.getString("surnameuser"));
			user.setEmail(resultSet.getString("email"));
			user.setGrad(resultSet.getInt("idgrad"));

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public boolean updateUser(User userEntity) throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(UPDATE_USER);
		cstmt.setString(2, userEntity.getNume());
		cstmt.setString(3, userEntity.getPrenume());
		cstmt.setString(4, userEntity.getDataNasterii().substring(0, 10));
		cstmt.setString(5, userEntity.getEmail());
		cstmt.execute();
		return true;
	}

	public boolean deleteUser(String username) throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(DELETE_USER);
		cstmt.setString(1, username);
		cstmt.execute();
		return true;
	}

}
