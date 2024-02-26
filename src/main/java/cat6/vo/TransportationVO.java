package cat6.vo;

public class TransportationVO {

	private int no;
	private String trans_vehicle;
	
	public TransportationVO() {
		
	}
	
	public TransportationVO(int no, String trans_vehicle) {
		this.no = no;
		this.trans_vehicle = trans_vehicle;
	}
	
	public TransportationVO(String trans_vehicle) {
		this.trans_vehicle = trans_vehicle;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTrans_vehicle() {
		return trans_vehicle;
	}

	public void setTrans_vehicle(String trans_vehicle) {
		this.trans_vehicle = trans_vehicle;
	}
	
	
	
}
