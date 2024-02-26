package cat1.cat11.vo;

public class PersonOnBoardVO {
	private int no, resv_no, sale_no, pob_foreign;
	private String pob_name, pob_birth, pob_gender, pob_tel, pob_emergtel, pob_addr;
	private PersonOnBoardVO[] vo;
	
	//--------------------
	private String resv_name;
	private String seat_grade;
	private String timetable_date;
	
	public PersonOnBoardVO(int no, int resv_no, int sale_no, int pob_foreign, String pob_name, String pob_birth,
			String pob_gender, String pob_tel, String pob_emergtel, String pob_addr, String resv_name, String seat_grade, String timetable_date) {
		super();
		this.no = no;
		this.resv_no = resv_no;
		this.sale_no = sale_no;
		this.pob_foreign = pob_foreign;
		this.pob_name = pob_name;
		this.pob_birth = pob_birth;
		this.pob_gender = pob_gender;
		this.pob_tel = pob_tel;
		this.pob_emergtel = pob_emergtel;
		this.pob_addr = pob_addr;
		this.resv_name = resv_name;
		this.seat_grade = seat_grade;
		this.timetable_date = timetable_date;
	}
	public PersonOnBoardVO() {
		
	}
	public PersonOnBoardVO(PersonOnBoardVO[] vo){
		this.vo = vo;
	}
	
	
	
	public String getSeat_grade() {
		return seat_grade;
	}
	public void setSeat_grade(String seat_grade) {
		this.seat_grade = seat_grade;
	}
	public String getTimetable_date() {
		return timetable_date;
	}
	public void setTimetable_date(String timetable_date) {
		this.timetable_date = timetable_date;
	}
	public String getResv_name() {
		return resv_name;
	}
	public void setResv_name(String resv_name) {
		this.resv_name = resv_name;
	}
	public PersonOnBoardVO[] getVo() {
		return vo;
	}
	public void setVo(PersonOnBoardVO[] vo) {
		this.vo = vo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getResv_no() {
		return resv_no;
	}
	public void setResv_no(int resv_no) {
		this.resv_no = resv_no;
	}
	public int getSale_no() {
		return sale_no;
	}
	public void setSale_no(int sale_no) {
		this.sale_no = sale_no;
	}
	public int getPob_foreign() {
		return pob_foreign;
	}
	public void setPob_foreign(int pob_foreign) {
		this.pob_foreign = pob_foreign;
	}
	public String getPob_name() {
		return pob_name;
	}
	public void setPob_name(String pob_name) {
		this.pob_name = pob_name;
	}
	public String getPob_birth() {
		return pob_birth;
	}
	public void setPob_birth(String pob_birth) {
		this.pob_birth = pob_birth;
	}
	public String getPob_gender() {
		return pob_gender;
	}
	public void setPob_gender(String pob_gender) {
		this.pob_gender = pob_gender;
	}
	public String getPob_tel() {
		return pob_tel;
	}
	public void setPob_tel(String pob_tel) {
		this.pob_tel = pob_tel;
	}
	public String getPob_emergtel() {
		return pob_emergtel;
	}
	public void setPob_emergtel(String pob_emergtel) {
		this.pob_emergtel = pob_emergtel;
	}
	public String getPob_addr() {
		return pob_addr;
	}
	public void setPob_addr(String pob_addr) {
		this.pob_addr = pob_addr;
	}
	
}
