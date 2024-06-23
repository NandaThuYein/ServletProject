package beginnersbook.com;

public class Details {
	public Details() {
		
	}
	private String username;
	private int age;
	private String password;
	private String []favorite;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String[] getfavorite() {
		return favorite;
	}
	public void setFavorite(String []favorite) {
		this.favorite=favorite;
	}
}
