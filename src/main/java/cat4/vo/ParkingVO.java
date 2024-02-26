package cat4.vo;

public class ParkingVO {

	private int no;
	private int port_no;
	private String park_name;
	private String park_tel;
	private String park_info;
	private String park_addr;
	private String park_price;
	private String park_ctgr;
	private int park_halfprice;
	private int park_tenprice;
	private int park_dayprice;
	private int park_monthprice;
	
	public ParkingVO() {
		
	}
	
	public ParkingVO(int no, int port_no, String park_name, String park_tel, String park_info, String park_addr, String park_price, String park_ctgr, int park_halfprice, int park_tenprice, int park_dayprice, int park_monthprice) {
		this.no = no;
		this.port_no = port_no;
		this.park_name = park_name;
		this.park_tel = park_tel;
		this.park_info = park_info;
		this.park_addr = park_addr;
		this.park_price = park_price;
		this.park_ctgr = park_ctgr;
		this.park_halfprice = park_halfprice;
		this.park_tenprice = park_tenprice;
		this.park_dayprice = park_dayprice;
		this.park_monthprice = park_monthprice;
	}
	
	public ParkingVO(int port_no, String park_name, String park_tel, String park_info, String park_addr, String park_price, String park_ctgr, int park_halfprice, int park_tenprice, int park_dayprice, int park_monthprice) {
		this.port_no = port_no;
		this.park_name = park_name;
		this.park_tel = park_tel;
		this.park_info = park_info;
		this.park_addr = park_addr;
		this.park_price = park_price;
		this.park_ctgr = park_ctgr;
		this.park_halfprice = park_halfprice;
		this.park_tenprice = park_tenprice;
		this.park_dayprice = park_dayprice;
		this.park_monthprice = park_monthprice;
	}
	
	public ParkingVO(String park_name, String park_tel, String park_info, String park_addr, String park_price, String park_ctgr, int park_halfprice, int park_tenprice, int park_dayprice, int park_monthprice) {
		this.park_name = park_name;
		this.park_tel = park_tel;
		this.park_info = park_info;
		this.park_addr = park_addr;
		this.park_price = park_price;
		this.park_ctgr = park_ctgr;
		this.park_halfprice = park_halfprice;
		this.park_tenprice = park_tenprice;
		this.park_dayprice = park_dayprice;
		this.park_monthprice = park_monthprice;
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

	public String getPark_name() {
		return park_name;
	}

	public void setPark_name(String park_name) {
		this.park_name = park_name;
	}

	public String getPark_tel() {
		return park_tel;
	}

	public void setPark_tel(String park_tel) {
		this.park_tel = park_tel;
	}

	public String getPark_info() {
		return park_info;
	}

	public void setPark_info(String park_info) {
		this.park_info = park_info;
	}

	public String getPark_addr() {
		return park_addr;
	}

	public void setPark_addr(String park_addr) {
		this.park_addr = park_addr;
	}

	public String getPark_price() {
		return park_price;
	}

	public void setPark_price(String park_price) {
		this.park_price = park_price;
	}

	public String getPark_ctgr() {
		return park_ctgr;
	}

	public void setPark_ctgr(String park_ctgr) {
		this.park_ctgr = park_ctgr;
	}

	public int getPark_halfprice() {
		return park_halfprice;
	}

	public void setPark_halfprice(int park_halfprice) {
		this.park_halfprice = park_halfprice;
	}

	public int getPark_tenprice() {
		return park_tenprice;
	}

	public void setPark_tenprice(int park_tenprice) {
		this.park_tenprice = park_tenprice;
	}

	public int getPark_dayprice() {
		return park_dayprice;
	}

	public void setPark_dayprice(int park_dayprice) {
		this.park_dayprice = park_dayprice;
	}

	public int getPark_monthprice() {
		return park_monthprice;
	}

	public void setPark_monthprice(int park_monthprice) {
		this.park_monthprice = park_monthprice;
	}
	
	
	
}
