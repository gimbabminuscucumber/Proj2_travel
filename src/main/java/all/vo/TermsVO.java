package all.vo;

public class TermsVO { // 약관
	private int no;
	private int terms_ctgrno;
	private int ship_no;
	private int resvterms_num;
	private String terms_title;
	private String terms_subtitle;
	private String terms_content;
	
	public TermsVO(int terms_ctgrno, int ship_no, int resvterms_num, String terms_title, String terms_subtitle,
			String terms_content) {
		super();
		this.terms_ctgrno = terms_ctgrno;
		this.ship_no = ship_no;
		this.resvterms_num = resvterms_num;
		this.terms_title = terms_title;
		this.terms_subtitle = terms_subtitle;
		this.terms_content = terms_content;
	}

	public TermsVO(int no, int terms_ctgrno, int ship_no, int resvterms_num, String terms_title, String terms_subtitle,
			String terms_content) {
		super();
		this.no = no;
		this.terms_ctgrno = terms_ctgrno;
		this.ship_no = ship_no;
		this.resvterms_num = resvterms_num;
		this.terms_title = terms_title;
		this.terms_subtitle = terms_subtitle;
		this.terms_content = terms_content;
	}


	public TermsVO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public int getTerms_ctgrno() {
		return terms_ctgrno;
	}


	public void setTerms_ctgrno(int terms_ctgrno) {
		this.terms_ctgrno = terms_ctgrno;
	}


	public int getShip_no() {
		return ship_no;
	}


	public void setShip_no(int ship_no) {
		this.ship_no = ship_no;
	}


	public int getResvterms_num() {
		return resvterms_num;
	}


	public void setResvterms_num(int resvterms_num) {
		this.resvterms_num = resvterms_num;
	}


	public String getTerms_title() {
		return terms_title;
	}


	public void setTerms_title(String terms_title) {
		this.terms_title = terms_title;
	}


	public String getTerms_subtitle() {
		return terms_subtitle;
	}


	public void setTerms_subtitle(String terms_subtitle) {
		this.terms_subtitle = terms_subtitle;
	}


	public String getTerms_content() {
		return terms_content;
	}


	public void setTerms_content(String terms_content) {
		this.terms_content = terms_content;
	}

	
	
}
