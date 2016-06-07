package ro.oho.rest.facadeDataBase;

import java.util.List;

import ro.oho.rest.dao.GroupDAO;
import ro.oho.rest.model.Group;
import ro.oho.rest.model.User;

public class GroupFacade {
	private GroupDAO groupDAO = new GroupDAO();
	
	public List<Group> getAllUserGroups(long id) {
		return groupDAO.getAllUserGroups(id);
	}
	
	public boolean generateGroups(long id) {
		return groupDAO.generateGroups(id);
	}
	
	public List<User> getAllUsersForGroup(int groupId){
		return groupDAO.getAllUsersForGroup(groupId);
	}
	

	public Group getGroupForID(int groupId){
		return groupDAO.getGroupForID(groupId);
	}
}
