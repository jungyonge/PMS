package entity;

public class LostEntity {
	private int eno;
	private String item;
	private String getday;
	private String place;
	private String getp;

	
	public LostEntity(){
		super();
	}

	public LostEntity(int eno, String item, String getday, String place, String getp){
		super();
		this.eno = eno;
		this.item = item;
		this.getday = getday;
		this.place = place;
		this.getp = getp;
	}
	
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getGetday() {
		return getday;
	}
	public void setGetday(String getday) {
		this.getday = getday;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getGetp() {
		return getp;
	}
	public void setGetp(String getp) {
		this.getp = getp;
	}
}
