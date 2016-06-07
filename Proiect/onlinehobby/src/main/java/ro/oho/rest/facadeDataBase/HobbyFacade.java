package ro.oho.rest.facadeDataBase;

import java.sql.SQLException;
import java.util.List;

import ro.oho.rest.dao.HobbyDAO;
import ro.oho.rest.model.Hobby;
import ro.oho.rest.model.User;

public class HobbyFacade {
	private HobbyDAO hobbyDAO = new HobbyDAO();

	public String getHobbyNameForId(int id) {
		return hobbyDAO.getHobbyForId(id).getHobbyName();
	}

	public Hobby getHobbyForId(int id) {
		return hobbyDAO.getHobbyForId(id);
	}

	public int getHobbyIdForName(String name) {
		return hobbyDAO.getHobbyForName(name).getIdHobby();
	}

	public int getHobbyForNameUnaproved(String name) {
		Hobby hobby = hobbyDAO.getHobbyForNameUnaproved(name);
		if (hobby == null)
			return -1;
		return hobby.getIdHobby();
	}

	public List<Hobby> getAllUserHobby(long id) {
		return hobbyDAO.getAllUserHobby(id);
	}

	public List<Hobby> getRecommendation(int page, User user) throws SQLException {
		return hobbyDAO.getRecommendation(page, user.getIdUser());
	}

	public boolean addUserToHobby(User user, int idHobby) {
		try {
			return hobbyDAO.addUserToHobby(user.getIdUser(), idHobby);
		} catch (SQLException e) {
			return false;
		}
	}

	public List<User> getAllUsersForHobby(int id) throws SQLException {
		return hobbyDAO.getAllUsersForHobby(id);
	}

	public List<String> getAllHobbies() throws SQLException {
		return hobbyDAO.getAllHobbies();
	}

	public boolean addNewHobby(String HobbyName, String HobbyDescription, String HobbyVideo, String HobbyURL) {
		try {
			hobbyDAO.addNewHobby(HobbyName, HobbyDescription, HobbyVideo, HobbyURL);
			return true;
		} catch (SQLException e) {
			return false;
		}
	}

	/**
	 * Unaproved/admin
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<Hobby> getAllNewHobby() throws SQLException {
		return hobbyDAO.getAllHobby();

	}

	/**
	 * Unaproved/admin
	 * 
	 * @return
	 * @throws SQLException
	 */
	public boolean updateHobby(String hobbyID, String hobbyName, String hobbyDescription, String hobbyImage,String hobbyVideo)  {
		return hobbyDAO.updateHobby( hobbyID,  hobbyName,  hobbyDescription,  hobbyImage, hobbyVideo);
	}

	/**
	 * Unaproved/admin
	 * 
	 * @return
	 * @throws SQLException
	 */
	public void deleteHobby(String hobbyName) throws SQLException {
		hobbyDAO.deleteHobby(hobbyName);

	}
}
