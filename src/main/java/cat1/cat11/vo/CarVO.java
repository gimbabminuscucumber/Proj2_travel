package cat1.cat11.vo;

public class CarVO {
	private int no, car_tvr, car_shcharge, car_lacharge, ship_no;
	private String car_name;
	public CarVO(int no, int car_tvr, int car_shcharge, int car_lacharge, int ship_no, String car_name) {
		super();
		this.no = no;
		this.car_tvr = car_tvr;
		this.car_shcharge = car_shcharge;
		this.car_lacharge = car_lacharge;
		this.ship_no = ship_no;
		this.car_name = car_name;
	}
	public CarVO() {
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCar_tvr() {
		return car_tvr;
	}
	public void setCar_tvr(int car_tvr) {
		this.car_tvr = car_tvr;
	}
	public int getCar_shcharge() {
		return car_shcharge;
	}
	public void setCar_shcharge(int car_shcharge) {
		this.car_shcharge = car_shcharge;
	}
	public int getCar_lacharge() {
		return car_lacharge;
	}
	public void setCar_lacharge(int car_lacharge) {
		this.car_lacharge = car_lacharge;
	}
	public int getShip_no() {
		return ship_no;
	}
	public void setShip_no(int ship_no) {
		this.ship_no = ship_no;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	
}
