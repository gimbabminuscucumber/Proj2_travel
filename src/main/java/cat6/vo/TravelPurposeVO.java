package cat6.vo;

public class TravelPurposeVO {

	private int no;
	private String tpurpose_purpose;
	
	public TravelPurposeVO() {
		
	}
	
	public TravelPurposeVO(int no, String tpurpose_purpose) {
		this.no = no;
		this.tpurpose_purpose = tpurpose_purpose;
	}
	
	public TravelPurposeVO(String tpurpose_purpose) {
		this.tpurpose_purpose = tpurpose_purpose;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTpurpose_purpose() {
		return tpurpose_purpose;
	}

	public void setTpurpose_purpose(String tpurpose_purpose) {
		this.tpurpose_purpose = tpurpose_purpose;
	}
	
	
	
}
