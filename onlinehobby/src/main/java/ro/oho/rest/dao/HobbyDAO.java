package ro.oho.rest.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.OracleTypes;
import ro.oho.rest.model.ConnectionHelperClass;
import ro.oho.rest.model.Hobby;
import ro.oho.rest.model.User;

public class HobbyDAO {
	private static final String GET_ALL_USER_HOBBY = "select * from hobby h join userhobby u on h.idhobby=u.idhobby where u.iduser=? and approved=1";
	private static final String GET_HOBBY_NAME = "select * from hobby where idhobby=? and approved=1";
	private static final String GET_HOBBY_ID = "select * from hobby where hobbyname=? and approved=1";
	private static final String GET_HOBBY_ID_UNAPROVED = "select * from hobby where hobbyname=? ";
	private static final String ADD_USER = "{call userskills.joinToNewHobby(?,?)}";
	private static final String ADD_HOBBY = "{call userskills.newHobby(?,?,?,?)}";
	private static final String GET_RECOMMENDED_HOBBY = "{call paginare_hobby_recomandat(?, ?, ?)}";
	private static final String GET_ALL_HOBBY="select hobbyname from Hobby where approved=1";
	private static final String GET_ALL_USERS_HOBBY="select * from UsersOho u join UserHobby h on h.idUser=u.idUser join Hobby hob on hob.idHobby=h.idHobby where h.idHobby=? and hob.approved=1";
	
	public boolean addUserToHobby(Long idUser, int idHobby) throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(ADD_USER);
		cstmt.setLong(1, idUser);
		cstmt.setInt (2, idHobby);
		cstmt.execute();
		cstmt.close();
		return true;
	}
	
	public List<String> getAllHobbies() throws SQLException {
		Connection con = ConnectionHelperClass.getOracleConnection();
		PreparedStatement prepareStatement = con.prepareStatement(GET_ALL_HOBBY);
		ResultSet resultSet = prepareStatement.executeQuery();
		List<String> allHobby=new ArrayList<String>();
		while(resultSet.next()){
			allHobby.add(resultSet.getString("hobbyname"));
		}
		
		prepareStatement.close();
		return allHobby;
	}
	
	
	public List<Hobby> getRecommendation(int page,long id) throws SQLException{
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(GET_RECOMMENDED_HOBBY);
		cstmt.setInt(1, page);
		cstmt.setLong(2,id);
		cstmt.registerOutParameter(3, OracleTypes.CURSOR);
		cstmt.execute();
		ResultSet rs = (ResultSet) cstmt.getObject(3);
		List<Hobby> list = new ArrayList<Hobby>();
		
		while (rs.next()) {
			Hobby hobby=new Hobby();
			hobby.setIdHobby(rs.getInt("idHobby"));
			hobby.setDescription(rs.getString("description"));
			hobby.setHobbyName(rs.getString("hobbyname"));
			hobby.setVideoURL(rs.getString("videoURL"));
			hobby.setImageURL(rs.getString("imageURL"));
			hobby.setApproved(rs.getInt("approved"));
			list.add(hobby);
		}
		
		rs.close();
		cstmt.close();
		return list;
	}

	public List<User> getAllUsersForHobby(int id) throws SQLException{
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(GET_ALL_USERS_HOBBY);
		cstmt.setInt(1, id);
		cstmt.execute();
		ResultSet resultSet = cstmt.getResultSet();
		
		List<User> list = new ArrayList<User>();
		
		while (resultSet.next()) {
			User user=new User();
			
			user.setIdUser(resultSet.getLong("idUser"));
			user.setNume(resultSet.getString("nameuser"));
			user.setPrenume(resultSet.getString("surnameuser"));
			user.setDataNasterii(resultSet.getString("date_of_birth"));
			user.setEmail(resultSet.getString("email"));
			user.setAuthToken(resultSet.getString("authtoken"));
			user.setAuthSite(resultSet.getString("authSite"));
			user.setPicture(resultSet.getString("photourl"));
			user.setGrad(resultSet.getInt("idgrad"));			
			list.add(user);
		}
		
		resultSet.close();
		cstmt.close();
		return list;
	}
	
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
			hobby.setImageURL(resultSet.getString("imageURL"));
			hobby.setVideoURL(resultSet.getString("videoURL"));
			
			resultSet.close();
			prepareStatement.close();
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
			hobby.setImageURL(resultSet.getString("imageURL"));
			hobby.setVideoURL(resultSet.getString("videoURL"));
			
			resultSet.close();
			prepareStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hobby;
	}
	
	public Hobby getHobbyForNameUnaproved(String name) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		Hobby hobby = new Hobby();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_HOBBY_ID_UNAPROVED);
			prepareStatement.setString(1, name);
			ResultSet resultSet = prepareStatement.executeQuery();
			resultSet.next();
			hobby.setIdHobby(resultSet.getInt("idHobby"));
			hobby.setDescription(resultSet.getString("description"));
			hobby.setHobbyName(resultSet.getString("hobbyname"));
			hobby.setImageURL(resultSet.getString("videoURL"));
			hobby.setVideoURL(resultSet.getString("imageURL"));
			
			resultSet.close();
			prepareStatement.close();
		} catch (SQLException e) {
			return null;
		}
		return hobby;
	}

	public List<Hobby> getAllUserHobby(long id) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		List<Hobby> list = new ArrayList<Hobby>();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_ALL_USER_HOBBY);
			prepareStatement.setLong(1, id);
			ResultSet resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {
				Hobby hobby = new Hobby();
				hobby.setIdHobby(resultSet.getInt("idHobby"));
				hobby.setDescription(resultSet.getString("description"));
				hobby.setHobbyName(resultSet.getString("hobbyname"));
				hobby.setImageURL(resultSet.getString("imageURL"));
				hobby.setVideoURL(resultSet.getString("videoURL"));
				list.add(hobby);
			}
			
			resultSet.close();
			prepareStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean addNewHobby(String HobbyName, String HobbyDescription, String HobbyVideo, String HobbyURL) throws SQLException{
		Connection con = ConnectionHelperClass.getOracleConnection();
		CallableStatement cstmt = con.prepareCall(ADD_HOBBY);
		cstmt.setString(1, HobbyName);
		cstmt.setString(2, HobbyDescription);
		cstmt.setString(3, HobbyURL);
		cstmt.setString(4,HobbyVideo );
		cstmt.execute();		
		cstmt.close();
		return true;
	}
	
	private static final String GET_ALL_NEW_HOBBY= "select * from hobby where approved=0";
	private static final String UPDATE_HOBBY= "update hobby set approved=1 , hobbyname=? ,VIDEOURL=? , description=? , imageurl=?  where idhobby=?";
	private static final String DELETE_HOBBY= "delete from  hobby where hobbyname=?";
	
	/**
	 * Unaproved
	 * @return
	 * @throws SQLException
	 */
	public List<Hobby> getAllHobby() throws SQLException
	{
		Connection con = ConnectionHelperClass.getOracleConnection();
		PreparedStatement prepareStatement = con.prepareStatement(GET_ALL_NEW_HOBBY);
		ResultSet resultSet = prepareStatement.executeQuery();
		List<Hobby> allHobby=new ArrayList<Hobby>();
		
		while (resultSet.next()) {
			Hobby hobby = new Hobby();
			hobby.setIdHobby(resultSet.getInt("idHobby"));
			hobby.setDescription(resultSet.getString("description"));
			hobby.setHobbyName(resultSet.getString("hobbyname"));
			hobby.setImageURL(resultSet.getString("imageURL"));
			hobby.setVideoURL(resultSet.getString("videoURL"));
			allHobby.add(hobby);
		}
		
		resultSet.close();
		
		return allHobby;

	}
	public boolean updateHobby(String hobbyID, String hobbyName, String hobbyDescription, String hobbyImage,String hobbyVideo)
	{
		Connection con = ConnectionHelperClass.getOracleConnection();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(UPDATE_HOBBY);
			prepareStatement.setInt(5, Integer.parseInt(hobbyID));
			prepareStatement.setString(1, hobbyName);
			prepareStatement.setString(3, hobbyDescription);
			prepareStatement.setString(4, hobbyImage);
			prepareStatement.setString(2, hobbyVideo);
			prepareStatement.executeQuery();
			
			return true;
		}
		catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	public void deleteHobby(String hobbyName)
	{
		Connection con = ConnectionHelperClass.getOracleConnection();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(DELETE_HOBBY);
			prepareStatement.setString(1, hobbyName);
			prepareStatement.executeQuery();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
