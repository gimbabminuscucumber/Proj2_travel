package cat6.vo;

public class TravelScheduleVO {

	private int no;
	private String tschedule_month;
	
	public TravelScheduleVO() {
	
	}
	
	public TravelScheduleVO(int no, String tschedule_month) {
		this.no = no;
		this.tschedule_month = tschedule_month;
	}
	
	public TravelScheduleVO(String tschedule_month) {
		this.tschedule_month = tschedule_month;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTschedule_month() {
		return tschedule_month;
	}

	public void setTschedule_month(String tschedule_month) {
		this.tschedule_month = tschedule_month;
	}
	
	
	
}
