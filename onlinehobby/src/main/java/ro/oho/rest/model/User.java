package ro.oho.rest.model;

public class User {

	private int idUser;
	private String password;
	private String username;
	private String nume;
	private String prenume;
	private String dataNasterii;
	private String email;
	private int grad;

	public int getGrad(){
		return grad;
	}
	
	public void setGrad(int grad){
		this.grad=grad;
	}
	
	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public void setPassword(String password){
		this.password=password;
	}
	
	public String getPassword(){
		return password;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getNume() {
		return nume;
	}

	public void setNume(String nume) {
		this.nume = nume;
	}

	public String getPrenume() {
		return prenume;
	}

	public void setPrenume(String prenume) {
		this.prenume = prenume;
	}

	public String getDataNasterii() {
		return dataNasterii;
	}

	public void setDataNasterii(String dataNasterii) {				
	    this.dataNasterii=dataNasterii;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
