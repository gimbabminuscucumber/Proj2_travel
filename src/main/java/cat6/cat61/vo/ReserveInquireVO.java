package cat6.cat61.vo;

public class ReserveInquireVO {
	private int no, user_no, resvinquire_num, resvinquire_hit, manager_no;
	private String resvinquire_title, resvinquire_content, resvinquire_date;
	private String resvinquire_password, resvinquire_comment;
	private String user_id;
	public ReserveInquireVO(int no, int user_no, int resvinquire_num, int resvinquire_hit, int manager_no,
			String resvinquire_title, String resvinquire_content, String resvinquire_date, String resvinquire_password,
			String resvinquire_comment, String user_id) {
		super();
		this.no = no;
		this.user_no = user_no;
		this.resvinquire_num = resvinquire_num;
		this.resvinquire_hit = resvinquire_hit;
		this.manager_no = manager_no;
		this.resvinquire_title = resvinquire_title;
		this.resvinquire_content = resvinquire_content;
		this.resvinquire_date = resvinquire_date;
		this.resvinquire_password = resvinquire_password;
		this.resvinquire_comment = resvinquire_comment;
		this.user_id = user_id;
	}
	public ReserveInquireVO() {
		
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getResvinquire_num() {
		return resvinquire_num;
	}
	public void setResvinquire_num(int resvinquire_num) {
		this.resvinquire_num = resvinquire_num;
	}
	public int getResvinquire_hit() {
		return resvinquire_hit;
	}
	public void setResvinquire_hit(int resvinquire_hit) {
		this.resvinquire_hit = resvinquire_hit;
	}
	public int getManager_no() {
		return manager_no;
	}
	public void setManager_no(int manager_no) {
		this.manager_no = manager_no;
	}
	public String getResvinquire_title() {
		return resvinquire_title;
	}
	public void setResvinquire_title(String resvinquire_title) {
		this.resvinquire_title = resvinquire_title;
	}
	public String getResvinquire_content() {
		return resvinquire_content;
	}
	public void setResvinquire_content(String resvinquire_content) {
		this.resvinquire_content = resvinquire_content;
	}
	public String getResvinquire_date() {
		return resvinquire_date;
	}
	public void setResvinquire_date(String resvinquire_date) {
		this.resvinquire_date = resvinquire_date;
	}
	public String getResvinquire_password() {
		return resvinquire_password;
	}
	public void setResvinquire_password(String resvinquire_password) {
		this.resvinquire_password = resvinquire_password;
	}
	public String getResvinquire_comment() {
		return resvinquire_comment;
	}
	public void setResvinquire_comment(String resvinquire_comment) {
		this.resvinquire_comment = resvinquire_comment;
	}
	
}
