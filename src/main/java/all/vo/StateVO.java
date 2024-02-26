package all.vo;

public class StateVO {
	
	private int no;
	private String state_name;

	public StateVO() {
		super();
	}

	public StateVO(int no, String state_name) {
		super();
		this.no = no;
		this.state_name = state_name;
	}
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}

}
