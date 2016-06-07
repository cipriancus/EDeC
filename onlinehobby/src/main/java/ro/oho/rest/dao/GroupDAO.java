package ro.oho.rest.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ro.oho.rest.model.ConnectionHelperClass;
import ro.oho.rest.model.Group;
import ro.oho.rest.model.User;

public class GroupDAO {

	private static final String GET_ALL_USER_GROUPS = "select * from groups g join usergroup u on g.idgroup=u.idgroup where u.iduser=?";
	private static final String GENERATE_GROUPS="{call generateGroups(?)}";
	private static final String GET_ALL_GROUP_USERS="select * from UsersOho u join UserGroup h on h.idUser=u.idUser where h.idGroup=?";
	private static final String GET_GROUP_FOR_ID="select * from groups where idGroup=?";
	
	public List<Group> getAllUserGroups(long id) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		List<Group> list = new ArrayList<Group>();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_ALL_USER_GROUPS);
			prepareStatement.setLong(1, id);
			ResultSet resultSet = prepareStatement.executeQuery();

			while (resultSet.next()) {
				Group group = new Group();
				group.setIdGroup(resultSet.getInt("idGroup"));
				group.setGroupName(resultSet.getString("groupname"));
				group.setDescription(resultSet.getString("description"));

				list.add(group);
			}
			
			resultSet.close();
			prepareStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;	
		}
	
	public boolean generateGroups(long id) {
		Connection con = ConnectionHelperClass.getOracleConnection();
		try {
		CallableStatement cstmt = con.prepareCall(GENERATE_GROUPS);
		
			cstmt.setLong(1, id);
			cstmt.execute();
			cstmt.close();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public List<User> getAllUsersForGroup(int groupId){
		Connection con = ConnectionHelperClass.getOracleConnection();
		List<User> list = new ArrayList<User>();
		try {
			PreparedStatement prepareStatement = con.prepareStatement(GET_ALL_GROUP_USERS);
			prepareStatement.setInt(1, groupId);
			ResultSet resultSet = prepareStatement.executeQuery();

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
			prepareStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	

	public Group getGroupForID(int groupId){
		Group group = new Group();
		try {
		Connection con = ConnectionHelperClass.getOracleConnection();
		PreparedStatement prepareStatement = con.prepareStatement(GET_GROUP_FOR_ID);
	
			prepareStatement.setInt(1, groupId);
		
		ResultSet resultSet = prepareStatement.executeQuery();
		while(resultSet.next()){
		group.setIdGroup(resultSet.getInt("idGroup"));
		group.setGroupName(resultSet.getString("groupname"));
		group.setDescription(resultSet.getString("description"));
		}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return group;
	}
}
