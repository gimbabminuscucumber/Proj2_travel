package cat6.vo;

public class TravelDateVO {

	private int no;
	private String tdate_date;
	
	public TravelDateVO() {
		
	}
	
	public TravelDateVO(int no, String tdate_date) {
		this.no = no;
		this.tdate_date = tdate_date;
	}
	
	public TravelDateVO(String tdate_date) {
		this.tdate_date = tdate_date;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTdate_date() {
		return tdate_date;
	}

	public void setTdate_date(String tdate_date) {
		this.tdate_date = tdate_date;
	}
	
	
	
}
