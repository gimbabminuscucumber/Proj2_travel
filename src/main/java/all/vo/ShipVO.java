package all.vo;

public class ShipVO {
	private int no, ship_capacity, ship_length, ship_width, ship_height;
	private int ship_ton, ship_knot, ship_max;
	private String ship_name, ship_company, ship_comtel, ship_comaddr, ship_interval;
	private String ship_comurl, ship_kind, ship_initdate;
	
	public ShipVO(int no, int ship_capacity, int ship_length, int ship_width, int ship_height, int ship_ton,
			int ship_knot, int ship_max, String ship_name, String ship_company, String ship_comtel, String ship_comaddr,
			String ship_interval, String ship_comurl, String ship_kind, String ship_initdate) {
		super();
		this.no = no;
		this.ship_capacity = ship_capacity;
		this.ship_length = ship_length;
		this.ship_width = ship_width;
		this.ship_height = ship_height;
		this.ship_ton = ship_ton;
		this.ship_knot = ship_knot;
		this.ship_max = ship_max;
		this.ship_name = ship_name;
		this.ship_company = ship_company;
		this.ship_comtel = ship_comtel;
		this.ship_comaddr = ship_comaddr;
		this.ship_interval = ship_interval;
		this.ship_comurl = ship_comurl;
		this.ship_kind = ship_kind;
		this.ship_initdate = ship_initdate;
	}
	public ShipVO() {
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getShip_capacity() {
		return ship_capacity;
	}
	public void setShip_capacity(int ship_capacity) {
		this.ship_capacity = ship_capacity;
	}
	public int getShip_length() {
		return ship_length;
	}
	public void setShip_length(int ship_length) {
		this.ship_length = ship_length;
	}
	public int getShip_width() {
		return ship_width;
	}
	public void setShip_width(int ship_width) {
		this.ship_width = ship_width;
	}
	public int getShip_height() {
		return ship_height;
	}
	public void setShip_height(int ship_height) {
		this.ship_height = ship_height;
	}
	public int getShip_ton() {
		return ship_ton;
	}
	public void setShip_ton(int ship_ton) {
		this.ship_ton = ship_ton;
	}
	public int getShip_knot() {
		return ship_knot;
	}
	public void setShip_knot(int ship_knot) {
		this.ship_knot = ship_knot;
	}
	public int getShip_max() {
		return ship_max;
	}
	public void setShip_max(int ship_max) {
		this.ship_max = ship_max;
	}
	public String getShip_name() {
		return ship_name;
	}
	public void setShip_name(String ship_name) {
		this.ship_name = ship_name;
	}
	public String getShip_company() {
		return ship_company;
	}
	public void setShip_company(String ship_company) {
		this.ship_company = ship_company;
	}
	public String getShip_comtel() {
		return ship_comtel;
	}
	public void setShip_comtel(String ship_comtel) {
		this.ship_comtel = ship_comtel;
	}
	public String getShip_comaddr() {
		return ship_comaddr;
	}
	public void setShip_comaddr(String ship_comaddr) {
		this.ship_comaddr = ship_comaddr;
	}
	public String getShip_interval() {
		return ship_interval;
	}
	public void setShip_interval(String ship_interval) {
		this.ship_interval = ship_interval;
	}
	public String getShip_comurl() {
		return ship_comurl;
	}
	public void setShip_comurl(String ship_comurl) {
		this.ship_comurl = ship_comurl;
	}
	public String getShip_kind() {
		return ship_kind;
	}
	public void setShip_kind(String ship_kind) {
		this.ship_kind = ship_kind;
	}
	public String getShip_initdate() {
		return ship_initdate;
	}
	public void setShip_initdate(String ship_initdate) {
		this.ship_initdate = ship_initdate;
	}
	
}
