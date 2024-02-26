package cat1.cat11.vo;

public class SeatInfoVO {
	private int no, ship_no, seat_total, seat_line, seat_row, seat_person;
	private int seat_student, seat_child, seat_baby, seat_grand;
	private String seat_grade;
	public SeatInfoVO(int no, int ship_no, int seat_total, int seat_line, int seat_row, int seat_person,
			int seat_student, int seat_child, int seat_baby, int seat_grand, String seat_grade) {
		super();
		this.no = no;
		this.ship_no = ship_no;
		this.seat_total = seat_total;
		this.seat_line = seat_line;
		this.seat_row = seat_row;
		this.seat_person = seat_person;
		this.seat_student = seat_student;
		this.seat_child = seat_child;
		this.seat_baby = seat_baby;
		this.seat_grand = seat_grand;
		this.seat_grade = seat_grade;
	}
	public SeatInfoVO() {
		
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
	public int getSeat_total() {
		return seat_total;
	}
	public void setSeat_total(int seat_total) {
		this.seat_total = seat_total;
	}
	public int getSeat_line() {
		return seat_line;
	}
	public void setSeat_line(int seat_line) {
		this.seat_line = seat_line;
	}
	public int getSeat_row() {
		return seat_row;
	}
	public void setSeat_row(int seat_row) {
		this.seat_row = seat_row;
	}
	public int getSeat_person() {
		return seat_person;
	}
	public void setSeat_person(int seat_person) {
		this.seat_person = seat_person;
	}
	public int getSeat_student() {
		return seat_student;
	}
	public void setSeat_student(int seat_student) {
		this.seat_student = seat_student;
	}
	public int getSeat_child() {
		return seat_child;
	}
	public void setSeat_child(int seat_child) {
		this.seat_child = seat_child;
	}
	public int getSeat_baby() {
		return seat_baby;
	}
	public void setSeat_baby(int seat_baby) {
		this.seat_baby = seat_baby;
	}
	public int getSeat_grand() {
		return seat_grand;
	}
	public void setSeat_grand(int seat_grand) {
		this.seat_grand = seat_grand;
	}
	public String getSeat_grade() {
		return seat_grade;
	}
	public void setSeat_grade(String seat_grade) {
		this.seat_grade = seat_grade;
	}
	
}
