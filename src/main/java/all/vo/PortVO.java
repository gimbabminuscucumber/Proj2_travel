package all.vo;

public class PortVO {
	
	private int no;
	
	private int state_no;
	private int city_no;
	
	private String port_name;
	private String port_info;
	private String port_tel;
	private String port_addr;
	
	// ----------------------------
	
	private String state_name;
	private String city_name;
	

	public PortVO() {
		super();
	}

	public PortVO(int no, int state_no, int city_no, String port_name, String port_info,
			String port_tel, String port_addr, String state_name, String city_name) {
		super();
		this.no = no;
		this.state_no = state_no;
		this.city_no = city_no;
		this.port_name = port_name;
		this.port_info = port_info;
		this.port_tel = port_tel;
		this.port_addr = port_addr;
		this.state_name = state_name;
		this.city_name = city_name;
	}
	
	public PortVO(int no, int state_no, int city_no, String port_name, String port_info,
			String port_tel, String port_addr) {
		super();
		this.no = no;
		this.state_no = state_no;
		this.city_no = city_no;
		this.port_name = port_name;
		this.port_info = port_info;
		this.port_tel = port_tel;
		this.port_addr = port_addr;
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
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public String getPort_name() {
		return port_name;
	}
	public void setPort_name(String port_name) {
		this.port_name = port_name;
	}
	public String getPort_info() {
		return port_info;
	}
	public void setPort_info(String port_info) {
		this.port_info = port_info;
	}
	public String getPort_tel() {
		return port_tel;
	}
	public void setPort_tel(String port_tel) {
		this.port_tel = port_tel;
	}
	public String getPort_addr() {
		return port_addr;
	}
	public void setPort_addr(String port_addr) {
		this.port_addr = port_addr;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

}
