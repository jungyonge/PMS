package entity;

//디폴트생성자, 인자4개받는 생성자, getter&setter
public class LoginEntity {
	
	private String id;
	private String pwd;
	private String name;
	private String repwd;
	private String exam;
	
	
	public LoginEntity() {
		super();
	}

	public LoginEntity(String id, String pwd, String name, String repwd, String Exam) {
		super();
		
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.repwd = repwd;
		this.exam = exam;
	}

	
	public String getExam() {
		return exam;
	}

	public void setExam(String exam) {
		this.exam = exam;
	}


	public String getRepwd() {
		return repwd;
	}

	public void setRepwd(String repwd) {
		this.repwd = repwd;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


}
