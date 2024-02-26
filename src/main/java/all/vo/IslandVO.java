package all.vo;

public class IslandVO {
	
private int no;
	
	private int state_no;
	private int city_no;
	private int manager_no;
	
	private String island_name;
	private String island_info;
	private int island_area;
	private String island_addr;
	private int island_inhabited;
	private String island_longitude;
	
	// --------------------------------
	
	private String state_name;
	private String city_name;

	
	public IslandVO() {
		super();
	}

	public IslandVO(int no, int state_no, int city_no, String island_name, String island_info, int island_area,
			String island_addr, int island_inhabited, String island_longitude, String state_name, String city_name) {
		super();
		this.no = no;
		this.state_no = state_no;
		this.city_no = city_no;
		this.island_name = island_name;
		this.island_info = island_info;
		this.island_area = island_area;
		this.island_addr = island_addr;
		this.island_inhabited = island_inhabited;
		this.island_longitude = island_longitude;
		this.state_name = state_name;
		this.city_name = city_name;
	}

	public IslandVO(int no, int state_no, int city_no, String island_name, String island_info, int island_area,
			String island_addr, int island_inhabited, String island_longitude) {
		super();
		this.no = no;
		this.state_no = state_no;
		this.city_no = city_no;
		this.island_name = island_name;
		this.island_info = island_info;
		this.island_area = island_area;
		this.island_addr = island_addr;
		this.island_inhabited = island_inhabited;
		this.island_longitude = island_longitude;
	}

	

	public IslandVO(int no, int state_no, int city_no, int manager_no, String island_name, String island_info,
			int island_area, String island_addr, int island_inhabited, String island_longitude, String state_name,
			String city_name) {
		super();
		this.no = no;
		this.state_no = state_no;
		this.city_no = city_no;
		this.manager_no = manager_no;
		this.island_name = island_name;
		this.island_info = island_info;
		this.island_area = island_area;
		this.island_addr = island_addr;
		this.island_inhabited = island_inhabited;
		this.island_longitude = island_longitude;
		this.state_name = state_name;
		this.city_name = city_name;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getState_no() {
		return state_no;
	}
	public void setState_no(int state_no) {
		this.state_no = state_no;
	}
	public int getCity_no() {
		return city_no;
	}
	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}
	public String getIsland_name() {
		return island_name;
	}
	public void setIsland_name(String island_name) {
		this.island_name = island_name;
	}
	public String getIsland_info() {
		return island_info;
	}
	public void setIsland_info(String island_info) {
		this.island_info = island_info;
	}
	public int getIsland_area() {
		return island_area;
	}
	public void setIsland_area(int island_area) {
		this.island_area = island_area;
	}
	public String getIsland_addr() {
		return island_addr;
	}
	public void setIsland_addr(String island_addr) {
		this.island_addr = island_addr;
	}
	public int getIsland_inhabited() {
		return island_inhabited;
	}
	public void setIsland_inhabited(int island_inhabited) {
		this.island_inhabited = island_inhabited;
	}
	public String getIsland_longitude() {
		return island_longitude;
	}
	public void setIsland_longitude(String island_longitude) {
		this.island_longitude = island_longitude;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public int getManager_no() {
		return manager_no;
	}

	public void setManager_no(int manager_no) {
		this.manager_no = manager_no;
	}

}