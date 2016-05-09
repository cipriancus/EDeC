package ro.oho.rest.model;

import ro.oho.rest.dao.UserDAO;
import ro.oho.rest.facadeDataBase.HobbyFacade;

public class Postare {
	private HobbyFacade hobbyFacade=new HobbyFacade();
	
	private int idHobby;
	private int idUser;
	private int idPost;
	private String Date_of_post;
	private String Mesaj;

	public int getIdPost() {
		return idPost;
	}

	public void setIdPost(int idPost) {
		this.idPost = idPost;
	}

	public String getDate_of_post() {
		return Date_of_post;
	}

	public void setDate_of_post(String date_of_post) {
		Date_of_post = date_of_post;
	}

	public int getIdHobby() {
		return idHobby;
	}

	public void setIdHobby(int idHobby) {
		this.idHobby = idHobby;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getMesaj() {
		return Mesaj;
	}

	public void setMesaj(String mesaj) {
		Mesaj = mesaj;
	}

	@Override
	public String toString() {
		UserDAO userDAO = new UserDAO();
		return userDAO.getUserById(this.idUser).getNume() + " " + userDAO.getUserById(this.idUser).getPrenume()
				+ " a postat in grupul " + hobbyFacade.getHobbyNameForId(idHobby) + " " + Mesaj + " la data de " + Date_of_post;
	}
}
