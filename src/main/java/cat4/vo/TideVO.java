package cat4.vo;

public class TideVO {

	private int no;
	private int port_no;
	private String sunrise;
	private String sunset;
	private String lowTide;
	private String highTide;
	private String lowWaterLevel;
	private String highWaterLevel;
	
	public TideVO() {
		
	}
	
	public TideVO(int no, int port_no, String sunrise, String sunset, String lowTide, String highTide, String lowWaterLevel, String highWaterLevel) {
		this.no = no;
		this.port_no = port_no;
		this.sunrise = sunrise;
		this.sunset = sunset;
		this.lowTide = lowTide;
		this.highTide = highTide;
		this.lowWaterLevel = lowWaterLevel;
		this.highWaterLevel = highWaterLevel;
	}
	
	public TideVO(int port_no, String sunrise, String sunset, String lowTide, String highTide, String lowWaterLevel, String highWaterLevel) {
		this.port_no = port_no;
		this.sunrise = sunrise;
		this.sunset = sunset;
		this.lowTide = lowTide;
		this.highTide = highTide;
		this.lowWaterLevel = lowWaterLevel;
		this.highWaterLevel = highWaterLevel;
	}
	
	public TideVO(String sunrise, String sunset, String lowTide, String highTide, String lowWaterLevel, String highWaterLevel) {
		this.sunrise = sunrise;
		this.sunset = sunset;
		this.lowTide = lowTide;
		this.highTide = highTide;
		this.lowWaterLevel = lowWaterLevel;
		this.highWaterLevel = highWaterLevel;
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

	public String getSunrise() {
		return sunrise;
	}

	public void setSunrise(String sunrise) {
		this.sunrise = sunrise;
	}

	public String getSunset() {
		return sunset;
	}

	public void setSunset(String sunset) {
		this.sunset = sunset;
	}

	public String getLowTide() {
		return lowTide;
	}

	public void setLowTide(String lowTide) {
		this.lowTide = lowTide;
	}

	public String getHighTide() {
		return highTide;
	}

	public void setHighTide(String highTide) {
		this.highTide = highTide;
	}

	public String getLowWaterLevel() {
		return lowWaterLevel;
	}

	public void setLowWaterLevel(String lowWaterLevel) {
		this.lowWaterLevel = lowWaterLevel;
	}

	public String getHighWaterLevel() {
		return highWaterLevel;
	}

	public void setHighWaterLevel(String highWaterLevel) {
		this.highWaterLevel = highWaterLevel;
	}
	
	
	
}
