package ro.oho.rest.facadeDataBase;

import java.sql.SQLException;
import java.util.List;

import ro.oho.rest.dao.HobbyDAO;
import ro.oho.rest.model.Hobby;

public class HobbyFacade {
	private HobbyDAO hobbyDAO=new HobbyDAO();
	
	public String getHobbyNameForId(int id){
		return hobbyDAO.getHobbyForId(id).getHobbyName();
	}
	
	public int getHobbyIdForName(String name){
		return hobbyDAO.getHobbyForName(name).getIdHobby();
	}
	
	public List<Hobby> getAllUserHobby(int id){
		return hobbyDAO.getAllUserHobby(id);
	}
	
	public boolean addUserToHobby(String username,String hobbyName) throws SQLException{
		return hobbyDAO.addUserToHobby(username,hobbyName);
	}
}
