package cat4.vo;

public class PublicTerminalVO {

	private int no;
	private int port_no;
	private String public_name;
	private String public_tel;
	private String public_info1;
	private String public_info2;
	private String public_info3;
	
	public PublicTerminalVO() {
		
	}
	
	public PublicTerminalVO(int no, int port_no, String public_name, String public_tel, String public_info1, String public_info2, String public_info3) {
		this.no = no;
		this.port_no = port_no;
		this.public_name = public_name;
		this.public_tel = public_tel;
		this.public_info1 = public_info1;
		this.public_info2 = public_info2;
		this.public_info3 = public_info3;
	}
	
	public PublicTerminalVO(int port_no, String public_name, String public_tel, String public_info1, String public_info2, String public_info3) {
		this.port_no = port_no;
		this.public_name = public_name;
		this.public_tel = public_tel;
		this.public_info1 = public_info1;
		this.public_info2 = public_info2;
		this.public_info3 = public_info3;
	}
	
	public PublicTerminalVO(String public_name, String public_tel, String public_info1, String public_info2, String public_info3) {
		this.public_name = public_name;
		this.public_tel = public_tel;
		this.public_info1 = public_info1;
		this.public_info2 = public_info2;
		this.public_info3 = public_info3;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPort_no() {
		return port_no;
	}

	public void setPort_no(int port_no) {
		this.port_no = port_no;
	}

	public String getPublic_name() {
		return public_name;
	}

	public void setPublic_name(String public_name) {
		this.public_name = public_name;
	}

	public String getPublic_tel() {
		return public_tel;
	}

	public void setPublic_tel(String public_tel) {
		this.public_tel = public_tel;
	}

	public String getPublic_info1() {
		return public_info1;
	}

	public void setPublic_info1(String public_info1) {
		this.public_info1 = public_info1;
	}

	public String getPublic_info2() {
		return public_info2;
	}

	public void setPublic_info2(String public_info2) {
		this.public_info2 = public_info2;
	}

	public String getPublic_info3() {
		return public_info3;
	}

	public void setPublic_info3(String public_info3) {
		this.public_info3 = public_info3;
	}
	
	
	
}
