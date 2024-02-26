package all.vo;

public class TimeTableVO { //시간표(선박스케쥴)
	private int no;
	private int ship_no;
	private String timetable_date;
	private String timetable_dtime;
	private String timetable_ltime;
	private int port_no1;
	private int port_no2;
	
	
	public TimeTableVO(int ship_no, String timetable_date, String timetable_dtime, String timetable_ltime, int port_no1,
			int port_no2) {
		super();
		this.ship_no = ship_no;
		this.timetable_date = timetable_date;
		this.timetable_dtime = timetable_dtime;
		this.timetable_ltime = timetable_ltime;
		this.port_no1 = port_no1;
		this.port_no2 = port_no2;
	}
	
	public TimeTableVO(int no, int ship_no, String timetable_date, String timetable_dtime, String timetable_ltime,
			int port_no1, int port_no2) {
		super();
		this.no = no;
		this.ship_no = ship_no;
		this.timetable_date = timetable_date;
		this.timetable_dtime = timetable_dtime;
		this.timetable_ltime = timetable_ltime;
		this.port_no1 = port_no1;
		this.port_no2 = port_no2;
	}
	public TimeTableVO() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getTimetable_date() {
		return timetable_date;
	}
	public void setTimetable_date(String timetable_date) {
		this.timetable_date = timetable_date;
	}
	public String getTimetable_dtime() {
		return timetable_dtime;
	}
	public void setTimetable_dtime(String timetable_dtime) {
		this.timetable_dtime = timetable_dtime;
	}
	public String getTimetable_ltime() {
		return timetable_ltime;
	}
	public void setTimetable_ltime(String timetable_ltime) {
		this.timetable_ltime = timetable_ltime;
	}
	public int getPort_no1() {
		return port_no1;
	}
	public void setPort_no1(int port_no1) {
		this.port_no1 = port_no1;
	}
	public int getPort_no2() {
		return port_no2;
	}
	public void setPort_no2(int port_no2) {
		this.port_no2 = port_no2;
	}
	
	
	

}
