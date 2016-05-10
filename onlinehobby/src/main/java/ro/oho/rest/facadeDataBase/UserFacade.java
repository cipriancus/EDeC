package ro.oho.rest.facadeDataBase;

import java.sql.SQLException;
import java.util.List;

import ro.oho.rest.dao.UserDAO;
import ro.oho.rest.model.User;

public class UserFacade {

	private static final UserDAO userRepository = new UserDAO();

	public List<User> getAllUsers() {
		return userRepository.getAllUsers();
	}

	public User getUserById(int id) {
		return userRepository.getUserById(id);
	}

	public User getUserByUserName(String username) {
		return userRepository.getUserByUserName(username);
	}

	public boolean adminUser(String username)throws SQLException {
		return userRepository.adminUser(username);
	}
	
	public boolean deleteUser(String username) throws SQLException{
		return userRepository.deleteUser(username);
	}

	public boolean updateUser(User user)throws SQLException{
		return userRepository.updateUser(user);
	}
	
	public boolean createUser(User user) throws SQLException{
		return userRepository.createUser(user);
	}

	public boolean loginUser(String userName, String password) throws SQLException{
		if (userRepository.login(userName,password) != false) {
			
			User user = getUserByUserName(userName);
			if (user.getUsername().equals(userName) && user.getPassword().equals(password))
				return true;
		}
		return false;
	}

}
