package ro.oho.rest.model;

import ro.oho.rest.dao.UserDAO;

public class Hobby {
	private int idHobby;
	private String hobbyName;
	private String description;
	
	public int getIdHobby() {
		return idHobby;
	}
	public void setIdHobby(int idHobby) {
		this.idHobby = idHobby;
	}
	public String getHobbyName() {
		return hobbyName;
	}
	public void setHobbyName(String hobbyName) {
		this.hobbyName = hobbyName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public String toString() {
	return hobbyName+" "+description;
	}
}
