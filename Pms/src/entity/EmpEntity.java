package entity;

//Entity, VO(Value Object), DTO(Data Transfer Object), Bean
//  : 관련성있는 데이타들을 하나로 묶는 객체
//디폴트생성자, 인자4개받는 생성자,getter&setter
public class EmpEntity {
	private int eno;
	private String ename;
	private String inday;
	private String adr;
	private String phone;
	private int times;
	private int alltimes;


	public EmpEntity() {
		super();
	}
	
	public EmpEntity(int eno, String ename, String inday, String adr, String phone, int times, int alltimes) {
		super();
		this.eno = eno;
		this.ename = ename;
		this.inday = inday;
		this.adr = adr;
		this.phone = phone;
		this.times = times;
		this.alltimes = alltimes;
	}
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getInday() {
		return inday;
	}
	public void setInday(String inday) {
		this.inday = inday;
	}
	public String getAdr() {
		return adr;
	}
	public void setAdr(String adr) {
		this.adr = adr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone){
		this.phone = phone;
	}
	public int getTimes() {
		return times;
	}
	public void setTimes(int times) {
		this.times = times;
	}
	public int getAlltimes() {
		return alltimes;
	}
	public void setAlltimes(int alltimes) {
		this.alltimes = alltimes;
	}


}
