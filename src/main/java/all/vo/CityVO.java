package all.vo;

public class CityVO {
	
	private int no;
	private int state_no;
	private String city_name;

	// ----------------------
	
	private String state_name;
	
	
	public CityVO() {
		super();
	}

	public CityVO(int no, int state_no, String city_name, String state_name) {
		super();
		this.no = no;
		this.state_no = state_no;
		this.city_name = city_name;
		this.state_name = state_name;
	}
	
	public CityVO(int no, int state_no, String city_name) {
		super();
		this.no = no;
		this.state_no = state_no;
		this.city_name = city_name;
	}
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getState_no() {
		return state_no;
	}
	public void setState_no(int state_no) {
		this.state_no = state_no;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	
}
