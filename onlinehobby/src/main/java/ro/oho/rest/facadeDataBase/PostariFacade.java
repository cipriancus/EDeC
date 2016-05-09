package ro.oho.rest.facadeDataBase;

import java.util.List;

import ro.oho.rest.dao.PostareDAO;
import ro.oho.rest.model.Postare;

public class PostariFacade {

	private PostareDAO postareRepository=new PostareDAO();
	
	public List<Postare> getAllPostariForId(int id) {
		return postareRepository.getAllPostariForId(id);
	}
	
	public boolean postInHobby(int idUser,String hobbyName,String message){
		HobbyFacade hobbyFacade=new HobbyFacade();
		int hobbyID=hobbyFacade.getHobbyIdForName(hobbyName);
		return postareRepository.postInHobby(idUser, hobbyID, message);
	}
}
