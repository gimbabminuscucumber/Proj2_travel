package all.vo;

import org.springframework.web.multipart.MultipartFile;

public class MngBrdVO {
	
	private int no;
	
	private int island_no;
	
	private int mngbrd_ctgrno;
	private int num;
	private String mngbrd_part;
	private String mngbrd_title;
	private String mngbrd_content;
	
	private int manager_no;
	
	private int mngbrd_hit;
	private String mngbrd_date;
	private String mngbrd_attn;
	private String mngbrd_file;
	
	private MultipartFile mngbrd_upload;
	
	// -----------------------------
	
	private String manager_name;
	

	// -----------------------------
	
	private String state_name;
	private String city_name;
	private String island_name;
	private String island_info;
	private int island_area;
	private String island_addr;
	private int island_inhabited;
	private String island_longitude;
	

	public MngBrdVO() {
		super();
	}

	public MngBrdVO(int no, int island_no, int mngbrd_ctgrno, int num, String mngbrd_part, String mngbrd_title,
			String mngbrd_content, int manager_no, int mngbrd_hit, String mngbrd_date, String mngbrd_attn,
			String mngbrd_file, String state_name, String city_name, String island_name, String island_info,
			int island_area, String island_addr, int island_inhabited, String island_longitude) {
		super();
		this.no = no;
		this.island_no = island_no;
		this.mngbrd_ctgrno = mngbrd_ctgrno;
		this.num = num;
		this.mngbrd_part = mngbrd_part;
		this.mngbrd_title = mngbrd_title;
		this.mngbrd_content = mngbrd_content;
		this.manager_no = manager_no;
		this.mngbrd_hit = mngbrd_hit;
		this.mngbrd_date = mngbrd_date;
		this.mngbrd_attn = mngbrd_attn;
		this.mngbrd_file = mngbrd_file;
		this.state_name = state_name;
		this.city_name = city_name;
		this.island_name = island_name;
		this.island_info = island_info;
		this.island_area = island_area;
		this.island_addr = island_addr;
		this.island_inhabited = island_inhabited;
		this.island_longitude = island_longitude;
	}
	
	public MngBrdVO(int no, int island_no, int mngbrd_ctgrno, int num, String mngbrd_part, String mngbrd_title,
			String mngbrd_content, int manager_no, int mngbrd_hit, String mngbrd_date, String mngbrd_attn,
			String mngbrd_file) {
		super();
		this.no = no;
		this.island_no = island_no;
		this.mngbrd_ctgrno = mngbrd_ctgrno;
		this.num = num;
		this.mngbrd_part = mngbrd_part;
		this.mngbrd_title = mngbrd_title;
		this.mngbrd_content = mngbrd_content;
		this.manager_no = manager_no;
		this.mngbrd_hit = mngbrd_hit;
		this.mngbrd_date = mngbrd_date;
		this.mngbrd_attn = mngbrd_attn;
		this.mngbrd_file = mngbrd_file;
	}

	
	public MultipartFile getMngbrd_upload() {
		return mngbrd_upload;
	}

	public void setMngbrd_upload(MultipartFile mngbrd_upload) {
		this.mngbrd_upload = mngbrd_upload;
	}

	public String getManager_name() {
		return manager_name;
	}

	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getIsland_no() {
		return island_no;
	}
	public void setIsland_no(int island_no) {
		this.island_no = island_no;
	}
	public int getMngbrd_ctgrno() {
		return mngbrd_ctgrno;
	}
	public void setMngbrd_ctgrno(int mngbrd_ctgrno) {
		this.mngbrd_ctgrno = mngbrd_ctgrno;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMngbrd_part() {
		return mngbrd_part;
	}
	public void setMngbrd_part(String mngbrd_part) {
		this.mngbrd_part = mngbrd_part;
	}
	public String getMngbrd_title() {
		return mngbrd_title;
	}
	public void setMngbrd_title(String mngbrd_title) {
		this.mngbrd_title = mngbrd_title;
	}
	public String getMngbrd_content() {
		return mngbrd_content;
	}
	public void setMngbrd_content(String mngbrd_content) {
		this.mngbrd_content = mngbrd_content;
	}
	public int getManager_no() {
		return manager_no;
	}
	public void setManager_no(int manager_no) {
		this.manager_no = manager_no;
	}
	public int getMngbrd_hit() {
		return mngbrd_hit;
	}
	public void setMngbrd_hit(int mngbrd_hit) {
		this.mngbrd_hit = mngbrd_hit;
	}
	public String getMngbrd_date() {
		return mngbrd_date;
	}
	public void setMngbrd_date(String mngbrd_date) {
		this.mngbrd_date = mngbrd_date;
	}
	public String getMngbrd_attn() {
		return mngbrd_attn;
	}
	public void setMngbrd_attn(String mngbrd_attn) {
		this.mngbrd_attn = mngbrd_attn;
	}
	public String getMngbrd_file() {
		return mngbrd_file;
	}
	public void setMngbrd_file(String mngbrd_file) {
		this.mngbrd_file = mngbrd_file;
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

}
