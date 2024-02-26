package cat6.vo;

import java.sql.Date;

public class IslandBoardVO {

	private int no;
	private int user_no;
	private int islboard_hit;
	private String islboard_title;
	private int tdate_no;
	private int tpurpose_no;
	private int trans_no;
	private int accom_no;
	private int city_no;
	private String islboard_startregion;
	private int tschedule_no;
	private String islboard_password;
	private String islboard_hope;
	private int islboard_follower;
	private String islboard_content;
	private int manager_no;
	private Date islboard_date;
	private String islboard_comment;
	
	private String user_id;
	private String user_name;
	
	private String accom_room;
	private String trans_vehicle;
	private String tdate_date;
	private String tpurpose_purpose;
	private String tschedule_month;
	
	public IslandBoardVO() {
		
	}
	
	public IslandBoardVO(int no, int user_no, int islboard_hit, String islboard_title, int tdate_no, int tpurpose_no, int trans_no, int accom_no, int city_no, String islboard_startregion, int tschedule_no, String islboard_password, String islboard_hope, int islboard_follower, String islboard_content, int manager_no, Date islboard_date, String islboard_comment, String accom_room, String trans_vehicle, String tdate_date, String tschedule_month, String tpurpose_purpose, String user_name, String user_id) {
		this.no = no;
		this.user_no = user_no;
		this.islboard_hit = islboard_hit;
		this.islboard_title = islboard_title;
		this.tdate_no = tdate_no;
		this.tpurpose_no = tpurpose_no;
		this.trans_no = trans_no;
		this.accom_no = accom_no;
		this.city_no = city_no;
		this.islboard_startregion = islboard_startregion;
		this.tschedule_no = tschedule_no;
		this.islboard_password = islboard_password;
		this.islboard_hope = islboard_hope;
		this.islboard_follower = islboard_follower;
		this.islboard_content = islboard_content;
		this.manager_no = manager_no;
		this.islboard_date = islboard_date;
		this.islboard_comment = islboard_comment;
		this.accom_room = accom_room;
		this.trans_vehicle = trans_vehicle;
		this.tdate_date = tdate_date;
		this.tpurpose_purpose = tpurpose_purpose;
		this.tschedule_month = tschedule_month;
		this.user_name = user_name;
		this.user_id = user_id;
	}

	public IslandBoardVO(int user_no, int islboard_hit, String islboard_title, int tdate_no, int tpurpose_no, int trans_no, int accom_no, int city_no, String islboard_startregion, int tschedule_no, String islboard_password, String islboard_hope, int islboard_follower, String islboard_content, int manager_no, Date islboard_date, String islboard_comment, String accom_room, String trans_vehicle, String tdate_date, String tschedule_month, String tpurpose_purpose) {
		this.user_no = user_no;
		this.islboard_hit = islboard_hit;
		this.islboard_title = islboard_title;
		this.tdate_no = tdate_no;
		this.tpurpose_no = tpurpose_no;
		this.trans_no = trans_no;
		this.accom_no = accom_no;
		this.city_no = city_no;
		this.islboard_startregion = islboard_startregion;
		this.tschedule_no = tschedule_no;
		this.islboard_password = islboard_password;
		this.islboard_hope = islboard_hope;
		this.islboard_follower = islboard_follower;
		this.islboard_content = islboard_content;
		this.manager_no = manager_no;
		this.islboard_date = islboard_date;
		this.islboard_comment = islboard_comment;
		this.accom_room = accom_room;
		this.trans_vehicle = trans_vehicle;
		this.tdate_date = tdate_date;
		this.tpurpose_purpose = tpurpose_purpose;
		this.tschedule_month = tschedule_month;
	}
	
	public IslandBoardVO(int islboard_hit, String islboard_title, int tdate_no, int tpurpose_no, int trans_no, int accom_no, int city_no, String islboard_startregion, int tschedule_no, String islboard_password, String islboard_hope, int islboard_follower, String islboard_content, int manager_no, Date islboard_date, String islboard_comment, String accom_room, String trans_vehicle, String tdate_date, String tschedule_month, String tpurpose_purpose) {
		this.islboard_hit = islboard_hit;
		this.islboard_title = islboard_title;
		this.tdate_no = tdate_no;
		this.tpurpose_no = tpurpose_no;
		this.trans_no = trans_no;
		this.accom_no = accom_no;
		this.city_no = city_no;
		this.islboard_startregion = islboard_startregion;
		this.tschedule_no = tschedule_no;
		this.islboard_password = islboard_password;
		this.islboard_hope = islboard_hope;
		this.islboard_follower = islboard_follower;
		this.islboard_content = islboard_content;
		this.manager_no = manager_no;
		this.islboard_date = islboard_date;
		this.islboard_comment = islboard_comment;
		this.accom_room = accom_room;
		this.trans_vehicle = trans_vehicle;
		this.tdate_date = tdate_date;
		this.tpurpose_purpose = tpurpose_purpose;
		this.tschedule_month = tschedule_month;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	
	public int getIslboard_hit() {
		return islboard_hit;
	}

	public void setIslboard_hit(int islboard_hit) {
		this.islboard_hit = islboard_hit;
	}

	public String getIslboard_title() {
		return islboard_title;
	}

	public void setIslboard_title(String islboard_title) {
		this.islboard_title = islboard_title;
	}

	public int getTdate_no() {
		return tdate_no;
	}

	public void setTdate_no(int tdate_no) {
		this.tdate_no = tdate_no;
	}

	public int getTpurpose_no() {
		return tpurpose_no;
	}

	public void setTpurpose_no(int tpurpose_no) {
		this.tpurpose_no = tpurpose_no;
	}

	public int getTrans_no() {
		return trans_no;
	}

	public void setTrans_no(int trans_no) {
		this.trans_no = trans_no;
	}

	public int getAccom_no() {
		return accom_no;
	}

	public void setAccom_no(int accom_no) {
		this.accom_no = accom_no;
	}

	public int getCity_no() {
		return city_no;
	}

	public void setCity_no(int city_no) {
		this.city_no = city_no;
	}

	public String getIslboard_startregion() {
		return islboard_startregion;
	}

	public void setIslboard_startregion(String islboard_startregion) {
		this.islboard_startregion = islboard_startregion;
	}

	public int getTschedule_no() {
		return tschedule_no;
	}

	public void setTschedule_no(int tschedule_no) {
		this.tschedule_no = tschedule_no;
	}

	public String getIslboard_password() {
		return islboard_password;
	}

	public void setIslboard_password(String islboard_password) {
		this.islboard_password = islboard_password;
	}

	public String getIslboard_hope() {
		return islboard_hope;
	}

	public void setIslboard_hope(String islboard_hope) {
		this.islboard_hope = islboard_hope;
	}

	public int getIslboard_follower() {
		return islboard_follower;
	}

	public void setIslboard_follower(int islboard_follower) {
		this.islboard_follower = islboard_follower;
	}

	public String getIslboard_content() {
		return islboard_content;
	}

	public void setIslboard_content(String islboard_content) {
		this.islboard_content = islboard_content;
	}

	public int getManager_no() {
		return manager_no;
	}

	public void setManager_no(int manager_no) {
		this.manager_no = manager_no;
	}

	public Date getIslboard_date() {
		return islboard_date;
	}

	public void setIslboard_date(Date islboard_date) {
		this.islboard_date = islboard_date;
	}

	public String getIslboard_comment() {
		return islboard_comment;
	}

	public void setIslboard_comment(String islboard_comment) {
		this.islboard_comment = islboard_comment;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getAccom_room() {
		return accom_room;
	}

	public void setAccom_room(String accom_room) {
		this.accom_room = accom_room;
	}

	public String getTrans_vehicle() {
		return trans_vehicle;
	}

	public void setTrans_vehicle(String trans_vehicle) {
		this.trans_vehicle = trans_vehicle;
	}

	public String getTdate_date() {
		return tdate_date;
	}

	public void setTdate_date(String tdate_date) {
		this.tdate_date = tdate_date;
	}

	public String getTpurpose_purpose() {
		return tpurpose_purpose;
	}

	public void setTpurpose_purpose(String tpurpose_purpose) {
		this.tpurpose_purpose = tpurpose_purpose;
	}

	public String getTschedule_month() {
		return tschedule_month;
	}

	public void setTschedule_month(String tschedule_month) {
		this.tschedule_month = tschedule_month;
	}
	
	
	
}
