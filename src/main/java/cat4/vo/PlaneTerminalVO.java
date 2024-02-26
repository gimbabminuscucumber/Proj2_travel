package cat4.vo;

public class PlaneTerminalVO {

	private int no;
	private int port_no;
	private String plane_name;
	private String plane_tel;
	
	public PlaneTerminalVO() {
		
	}
	
	public PlaneTerminalVO(int no, int port_no, String plane_name, String plane_tel) {
		this.no = no;
		this.port_no = port_no;
		this.plane_name = plane_name;
		this.plane_tel = plane_tel;
	}
	
	public PlaneTerminalVO(int port_no, String plane_name, String plane_tel) {
		this.port_no = port_no;
		this.plane_name = plane_name;
		this.plane_tel = plane_tel;
	}
	
	public PlaneTerminalVO(String plane_name, String plane_tel) {
		this.plane_name = plane_name;
		this.plane_tel = plane_tel;
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

	public String getPlane_name() {
		return plane_name;
	}

	public void setPlane_name(String plane_name) {
		this.plane_name = plane_name;
	}

	public String getPlane_tel() {
		return plane_tel;
	}

	public void setPlane_tel(String plane_tel) {
		this.plane_tel = plane_tel;
	}
	
	
	
}
