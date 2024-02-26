package cat5.cat52.vo;

import java.sql.Date;

public class ReviewVO {

	private int no;
	private int review_ctgrno;
	private int review_num;
	private String review_title;
	private Date review_date;
	private int review_hit;
	private String review_content;
	private int review_environ;
	private int review_lodge;
	private int review_water;
	private int review_traffic;
	private int review_stuff;
	private int review_su;
	
	private double review_score;

	private int user_no;
	private String user_name;
	
	private int island_no;
	private String island_name;
	
	private int comm_no;	// FK key 어떻게 사용하나???
	
	public ReviewVO() {
		
	}
	
	public ReviewVO(int no, int review_ctgrno, int user_no, int review_num, int island_no, String review_title, String review_content, Date review_date, int review_hit, int review_environ, int review_lodge, int review_water, int review_traffic, int review_stuff, int review_su, double review_score) {
		this.no = no;
		this.review_ctgrno = review_ctgrno;
		this.user_no = user_no;
		this.island_no = island_no;
		this.review_num = review_num;
		this.review_title = review_title;
		this.review_date = review_date;
		this.review_hit = review_hit;
		this.review_content = review_content;
		this.review_environ = review_environ;
		this.review_lodge = review_lodge;
		this.review_water = review_water;
		this.review_traffic = review_traffic;
		this.review_stuff = review_stuff;
		this.review_su = review_su;
		this.review_score = review_score;
	}

	public double getReview_score() {
		return review_score;
	}
	
	public void setReview_score(double review_score) {
		this.review_score = review_score;
	}

	public int getReview_ctgrno() {
		return review_ctgrno;
	}
	
	public void setReview_ctgrno(int review_ctgrno) {
		this.review_ctgrno = review_ctgrno;
	}

	public int getComm_no() {
		return comm_no;
	}
	
	public void setComm_no(int comm_no) {
		this.comm_no = comm_no;
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

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getIsland_name() {
		return island_name;
	}

	public void setIsland_name(String island_name) {
		this.island_name = island_name;
	}

	public int getIsland_no() {
		return island_no;
	}

	public void setIsland_no(int island_no) {
		this.island_no = island_no;
	}

	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

	public int getReview_hit() {
		return review_hit;
	}

	public void setReview_hit(int review_hit) {
		this.review_hit = review_hit;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public int getReview_environ() {
		return review_environ;
	}

	public void setReview_environ(int review_environ) {
		this.review_environ = review_environ;
	}

	public int getReview_lodge() {
		return review_lodge;
	}

	public void setReview_lodge(int review_lodge) {
		this.review_lodge = review_lodge;
	}

	public int getReview_water() {
		return review_water;
	}

	public void setReview_water(int review_water) {
		this.review_water = review_water;
	}

	public int getReview_traffic() {
		return review_traffic;
	}

	public void setReview_traffic(int review_traffic) {
		this.review_traffic = review_traffic;
	}

	public int getReview_stuff() {
		return review_stuff;
	}

	public void setReview_stuff(int review_stuff) {
		this.review_stuff = review_stuff;
	}

	public int getReview_su() {
		return review_su;
	}

	public void setReview_su(int review_su) {
		this.review_su = review_su;
	}

	
}
