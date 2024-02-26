package cat1.cat11.vo;

public class ReservationistVO {
	private int no, resv_foreign, timetable_no, sale_no, seat_no;
	private String resv_name, resv_birth, resv_gender, resv_tel, resv_emergtel, resv_addr;
	public ReservationistVO(int no, int resv_foreign, int timetable_no, int sale_no, int seat_no, String resv_name,
			String resv_birth, String resv_gender, String resv_tel, String resv_emergtel, String resv_addr) {
		super();
		this.no = no;
		this.resv_foreign = resv_foreign;
		this.timetable_no = timetable_no;
		this.sale_no = sale_no;
		this.seat_no = seat_no;
		this.resv_name = resv_name;
		this.resv_birth = resv_birth;
		this.resv_gender = resv_gender;
		this.resv_tel = resv_tel;
		this.resv_emergtel = resv_emergtel;
		this.resv_addr = resv_addr;
	}
	public ReservationistVO() {
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getResv_foreign() {
		return resv_foreign;
	}
	public void setResv_foreign(int resv_foreign) {
		this.resv_foreign = resv_foreign;
	}
	public int getTimetable_no() {
		return timetable_no;
	}
	public void setTimetable_no(int timetable_no) {
		this.timetable_no = timetable_no;
	}
	public int getSale_no() {
		return sale_no;
	}
	public void setSale_no(int sale_no) {
		this.sale_no = sale_no;
	}
	public int getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(int seat_no) {
		this.seat_no = seat_no;
	}
	public String getResv_name() {
		return resv_name;
	}
	public void setResv_name(String resv_name) {
		this.resv_name = resv_name;
	}
	public String getResv_birth() {
		return resv_birth;
	}
	public void setResv_birth(String resv_birth) {
		this.resv_birth = resv_birth;
	}
	public String getResv_gender() {
		return resv_gender;
	}
	public void setResv_gender(String resv_gender) {
		this.resv_gender = resv_gender;
	}
	public String getResv_tel() {
		return resv_tel;
	}
	public void setResv_tel(String resv_tel) {
		this.resv_tel = resv_tel;
	}
	public String getResv_emergtel() {
		return resv_emergtel;
	}
	public void setResv_emergtel(String resv_emergtel) {
		this.resv_emergtel = resv_emergtel;
	}
	public String getResv_addr() {
		return resv_addr;
	}
	public void setResv_addr(String resv_addr) {
		this.resv_addr = resv_addr;
	}
	@Override
	public String toString() {
		return "ReservationistVO [no=" + no + ", resv_foreign=" + resv_foreign + ", timetable_no=" + timetable_no
				+ ", sale_no=" + sale_no + ", seat_no=" + seat_no + ", resv_name=" + resv_name + ", resv_birth="
				+ resv_birth + ", resv_gender=" + resv_gender + ", resv_tel=" + resv_tel + ", resv_emergtel="
				+ resv_emergtel + ", resv_addr=" + resv_addr + "]";
	}
	
	
	
}
