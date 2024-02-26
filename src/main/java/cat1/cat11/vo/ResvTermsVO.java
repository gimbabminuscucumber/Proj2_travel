package cat1.cat11.vo;

public class ResvTermsVO {
	private int no, resvterms_num;
	private String  resvterms_title, resvterms_content;
	public ResvTermsVO(int no, int resvterms_num, String resvterms_title, String resvterms_content) {
		super();
		this.no = no;
		this.resvterms_num = resvterms_num;
		this.resvterms_title = resvterms_title;
		this.resvterms_content = resvterms_content;
	}
	public ResvTermsVO() {
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getResvterms_num() {
		return resvterms_num;
	}
	public void setResvterms_num(int resvterms_num) {
		this.resvterms_num = resvterms_num;
	}
	public String getResvterms_title() {
		return resvterms_title;
	}
	public void setResvterms_title(String resvterms_title) {
		this.resvterms_title = resvterms_title;
	}
	public String getResvterms_content() {
		return resvterms_content;
	}
	public void setResvterms_content(String resvterms_content) {
		this.resvterms_content = resvterms_content;
	}
	
}
