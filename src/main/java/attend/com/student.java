package attend.com;

public class student {
	public student(String name, String date, String gender, String[] favorite, String chooseone) {
		super();
		this.name = name;
		this.date = date;
		this.gender = gender;
		this.favorite = favorite;
		this.chooseone = chooseone;
	}
	public student() {
		
	}
	private String name;
	private String date;
	private String gender;
	private String []favorite;
	private String chooseone;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getFavorite() {
		return favorite;
	}
	public void setFavorite(String[] favorite) {
		this.favorite = favorite;
	}
	public String getChooseone() {
		return chooseone;
	}
	public void setChooseone(String chooseone) {
		this.chooseone = chooseone;
	}
	
}
