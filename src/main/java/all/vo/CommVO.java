package all.vo;

public class CommVO {
	private int no, user_no, review_ctgrno, comm_groupno, comm_orderno, comm_depth;
	private String comm_comment, comm_password;
	
	public CommVO(int no, int user_no, int review_ctgrno, int comm_groupno, int comm_orderno, int comm_depth,
			String comm_comment, String comm_password) {
		super();
		this.no = no;
		this.user_no = user_no;
		this.review_ctgrno = review_ctgrno;
		this.comm_groupno = comm_groupno;
		this.comm_orderno = comm_orderno;
		this.comm_depth = comm_depth;
		this.comm_comment = comm_comment;
		this.comm_password = comm_password;
	}
	public CommVO() {
		
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
	public int getReview_ctgrno() {
		return review_ctgrno;
	}
	public void setReview_ctgrno(int review_ctgrno) {
		this.review_ctgrno = review_ctgrno;
	}
	public int getComm_groupno() {
		return comm_groupno;
	}
	public void setComm_groupno(int comm_groupno) {
		this.comm_groupno = comm_groupno;
	}
	public int getComm_orderno() {
		return comm_orderno;
	}
	public void setComm_orderno(int comm_orderno) {
		this.comm_orderno = comm_orderno;
	}
	public int getComm_depth() {
		return comm_depth;
	}
	public void setComm_depth(int comm_depth) {
		this.comm_depth = comm_depth;
	}
	public String getComm_comment() {
		return comm_comment;
	}
	public void setComm_comment(String comm_comment) {
		this.comm_comment = comm_comment;
	}
	public String getComm_password() {
		return comm_password;
	}
	public void setComm_password(String comm_password) {
		this.comm_password = comm_password;
	}
	
}
