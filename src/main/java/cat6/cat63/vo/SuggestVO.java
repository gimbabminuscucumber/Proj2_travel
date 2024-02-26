package cat6.cat63.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class SuggestVO {

	private int no;
	private int sugg_ctgrno;
	private int sugg_num;
	private String sugg_title;
	private Date sugg_date;
	private int sugg_hit;
	private String sugg_password;
	private String sugg_content;
	private String sugg_attn;
	private String sugg_file;
	private String sugg_comment;
	
	private int user_no;
	private String user_name;
	
	private int manager_no;
	private String manager_name;

	private MultipartFile sugg_upload;
	
	public SuggestVO() {
		
	}
	
	public SuggestVO(int user_no, String user_name, int sugg_ctgrno, int sugg_num, String sugg_title, Date sugg_date, int sugg_hit, String sugg_password, String sugg_content, String sugg_attn, String sugg_file, int manager_no, String manager_name, String sugg_comment) {
		this.sugg_ctgrno = sugg_ctgrno;
		this.sugg_num = sugg_num;
		this.sugg_title = sugg_title;
		this.sugg_date = sugg_date;
		this.sugg_hit = sugg_hit;
		this.sugg_password = sugg_password;
		this.sugg_content = sugg_content;
		this.sugg_attn = sugg_attn;
		this.sugg_file = sugg_file;
		this.manager_no = manager_no;
		this.manager_name = manager_name;
		this.sugg_comment = sugg_comment;
		this.user_no = user_no;
		this.user_name = user_name;
	}
	
	public SuggestVO(int no, int user_no, String user_name, int sugg_ctgrno, int sugg_num, String sugg_title, Date sugg_date, int sugg_hit, String sugg_password, String sugg_content, String sugg_attn, String sugg_file, int manager_no, String manager_name, String sugg_comment) {
		this.no = no;
		this.sugg_ctgrno = sugg_ctgrno;
		this.sugg_num = sugg_num;
		this.sugg_title = sugg_title;
		this.sugg_date = sugg_date;
		this.sugg_hit = sugg_hit;
		this.sugg_password = sugg_password;
		this.sugg_content = sugg_content;
		this.sugg_attn = sugg_attn;
		this.sugg_file = sugg_file;
		this.manager_no = manager_no;
		this.manager_name = manager_name;
		this.sugg_comment = sugg_comment;
		this.user_no = user_no;
		this.user_name = user_name;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
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

	public int getSugg_ctgrno() {
		return sugg_ctgrno;
	}

	public void setSugg_ctgrno(int sugg_ctgrno) {
		this.sugg_ctgrno = sugg_ctgrno;
	}

	public int getSugg_num() {
		return sugg_num;
	}

	public void setSugg_num(int sugg_num) {
		this.sugg_num = sugg_num;
	}

	public String getSugg_title() {
		return sugg_title;
	}

	public void setSugg_title(String sugg_title) {
		this.sugg_title = sugg_title;
	}

	public Date getSugg_date() {
		return sugg_date;
	}

	public void setSugg_date(Date sugg_date) {
		this.sugg_date = sugg_date;
	}

	public int getSugg_hit() {
		return sugg_hit;
	}

	public void setSugg_hit(int sugg_hit) {
		this.sugg_hit = sugg_hit;
	}

	public String getSugg_password() {
		return sugg_password;
	}

	public void setSugg_password(String sugg_password) {
		this.sugg_password = sugg_password;
	}

	public String getSugg_content() {
		return sugg_content;
	}

	public void setSugg_content(String sugg_content) {
		this.sugg_content = sugg_content;
	}

	public String getSugg_attn() {
		return sugg_attn;
	}

	public void setSugg_attn(String sugg_attn) {
		this.sugg_attn = sugg_attn;
	}

	public String getSugg_file() {
		return sugg_file;
	}

	public void setSugg_file(String sugg_file) {
		this.sugg_file = sugg_file;
	}

	public int getManager_no() {
		return manager_no;
	}

	public void setManager_no(int manager_no) {
		this.manager_no = manager_no;
	}

	public String getSugg_comment() {
		return sugg_comment;
	}

	public void setSugg_comment(String sugg_comment) {
		this.sugg_comment = sugg_comment;
	}
	
	public MultipartFile getSugg_upload() {
		return sugg_upload;
	}
	public void setSugg_upload(MultipartFile sugg_upload) {
		this.sugg_upload = sugg_upload;
	}
	
}
