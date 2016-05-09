package ro.oho.rest.facadeDataBase;

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

	public void deleteAccount(int id) {
		userRepository.deleteUser(id);
	}

	public boolean createUser(User user) {
		return userRepository.createUser(user);
	}

	public boolean loginUser(String userName, String password) {

		User user = getUserByUserName(userName);

		if (user != null) {

			if (user.getUsername().equals(userName) && user.getPassword().equals(password))
				return true;
		}
		return false;
	}

}
