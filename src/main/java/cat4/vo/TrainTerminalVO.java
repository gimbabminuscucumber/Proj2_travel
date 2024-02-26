package cat4.vo;

public class TrainTerminalVO {

	private int no;
	private int port_no;
	private String train_name;
	private String train_tel;
	private String train_info1;
	private String train_info2;
	
	public TrainTerminalVO() {
		
	}
	
	public TrainTerminalVO(int no, int port_no, String train_name, String train_tel, String train_info1, String train_info2) {
		this.no = no;
		this.port_no = port_no;
		this.train_name = train_name;
		this.train_tel = train_tel;
		this.train_info1 = train_info1;
		this.train_info2 = train_info2;
	}
	
	public TrainTerminalVO(int port_no, String train_name, String train_tel, String train_info1, String train_info2) {
		this.port_no = port_no;
		this.train_name = train_name;
		this.train_tel = train_tel;
		this.train_info1 = train_info1;
		this.train_info2 = train_info2;
	}
	
	public TrainTerminalVO(String train_name, String train_tel, String train_info1, String train_info2) {
		this.train_name = train_name;
		this.train_tel = train_tel;
		this.train_info1 = train_info1;
		this.train_info2 = train_info2;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPort_no() {
		return port_no;
	}

	public void setPort_no(int port_no) {
		this.port_no = port_no;
	}

	public String getTrain_name() {
		return train_name;
	}

	public void setTrain_name(String train_name) {
		this.train_name = train_name;
	}

	public String getTrain_tel() {
		return train_tel;
	}

	public void setTrain_tel(String train_tel) {
		this.train_tel = train_tel;
	}

	public String getTrain_info1() {
		return train_info1;
	}

	public void setTrain_info1(String train_info1) {
		this.train_info1 = train_info1;
	}

	public String getTrain_info2() {
		return train_info2;
	}

	public void setTrain_info2(String train_info2) {
		this.train_info2 = train_info2;
	}
	
	
	
}
