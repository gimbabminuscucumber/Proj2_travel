package cat1.cat12.vo;

public class ReservationListVO {
	private int no, ship_no, resv_no, pob_no, timetable_no, seat_no, resvlist_price;
	private String resvlist_paymentdate, resvlist_date;
	public ReservationListVO(int no, int ship_no, int resv_no, int pob_no, int timetable_no, int seat_no,
			int resvlist_price, String resvlist_paymentdate, String resvlist_date) {
		super();
		this.no = no;
		this.ship_no = ship_no;
		this.resv_no = resv_no;
		this.pob_no = pob_no;
		this.timetable_no = timetable_no;
		this.seat_no = seat_no;
		this.resvlist_price = resvlist_price;
		this.resvlist_paymentdate = resvlist_paymentdate;
		this.resvlist_date = resvlist_date;
	}
	public ReservationListVO() {
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getShip_no() {
		return ship_no;
	}
	public void setShip_no(int ship_no) {
		this.ship_no = ship_no;
	}
	public int getResv_no() {
		return resv_no;
	}
	public void setResv_no(int resv_no) {
		this.resv_no = resv_no;
	}
	public int getPob_no() {
		return pob_no;
	}
	public void setPob_no(int pob_no) {
		this.pob_no = pob_no;
	}
	public int getTimetable_no() {
		return timetable_no;
	}
	public void setTimetable_no(int timetable_no) {
		this.timetable_no = timetable_no;
	}
	public int getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(int seat_no) {
		this.seat_no = seat_no;
	}
	public int getResvlist_price() {
		return resvlist_price;
	}
	public void setResvlist_price(int resvlist_price) {
		this.resvlist_price = resvlist_price;
	}
	public String getResvlist_paymentdate() {
		return resvlist_paymentdate;
	}
	public void setResvlist_paymentdate(String resvlist_paymentdate) {
		this.resvlist_paymentdate = resvlist_paymentdate;
	}
	public String getResvlist_date() {
		return resvlist_date;
	}
	public void setResvlist_date(String resvlist_date) {
		this.resvlist_date = resvlist_date;
	}
	
}
