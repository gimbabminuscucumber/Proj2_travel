package cat6.vo;

public class AccommoVO {

	private int no;
	private String accom_room;
	
	public AccommoVO() {
		
	}
	
	public AccommoVO(int no, String accom_room) {
		this.no = no;
		this.accom_room = accom_room;
	}
	
	public AccommoVO(String accom_room) {
		this.accom_room = accom_room;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getAccom_room() {
		return accom_room;
	}

	public void setAccom_room(String accom_room) {
		this.accom_room = accom_room;
	}
	
	
	
}
