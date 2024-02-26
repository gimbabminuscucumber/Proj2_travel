package all.vo;

public class UserInfoVO { // 회원정보
	private int no;
	private String user_name;
	private String user_birth;
	private String user_tel;
	private String user_id;
	private String user_password;
	private String user_gender;
	private String user_email;
	private String user_status;
	private String user_terms;
	
	public UserInfoVO(String user_name, String user_birth, String user_tel, String user_id, String user_password,
			String user_gender, String user_email, String user_status, String user_terms) {
		super();
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_tel = user_tel;
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_gender = user_gender;
		this.user_email = user_email;
		this.user_status = user_status;
		this.user_terms = user_terms;
	}
	public UserInfoVO(int no, String user_name, String user_birth, String user_tel, String user_id,
			String user_password, String user_gender, String user_email, String user_status, String user_terms) {
		super();
		this.no = no;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_tel = user_tel;
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_gender = user_gender;
		this.user_email = user_email;
		this.user_status = user_status;
		this.user_terms = user_terms;
	}
	public UserInfoVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_status() {
		return user_status;
	}
	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}
	public String getUser_terms() {
		return user_terms;
	}
	public void setUser_terms(String user_terms) {
		this.user_terms = user_terms;
	}
	
	
	

}
