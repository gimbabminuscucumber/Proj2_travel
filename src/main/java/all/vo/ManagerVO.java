package all.vo;

public class ManagerVO { // 매니저
	private int no;
	private int user_no;
	private String manager_name;
	
	public ManagerVO(int user_no, String manager_name) {
		super();
		this.user_no = user_no;
		this.manager_name = manager_name;
	}
	
	public ManagerVO(int no, int user_no, String manager_name) {
		super();
		this.no = no;
		this.user_no = user_no;
		this.manager_name = manager_name;
	}
	
	public ManagerVO() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	
}
