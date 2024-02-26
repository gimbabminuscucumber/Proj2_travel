package all.vo;

public class InfoBoardVO {

	private int no;
	private String infobrd_title;
	private String infobrd_content;
	private String infobrd_url;
	private int infobrd_ctgrno;
	
	public InfoBoardVO() {
		
	}
	
	public InfoBoardVO(int no, String infobrd_title, String infobrd_content, String infobrd_url, int infobrd_ctgrno) {
		this.no = no;
		this.infobrd_title = infobrd_title;
		this.infobrd_content = infobrd_content;
		this.infobrd_url = infobrd_url;
		this.infobrd_ctgrno = infobrd_ctgrno;
	}
	
	public InfoBoardVO(String infobrd_title, String infobrd_content, String infobrd_url, int infobrd_ctgrno) {
		this.infobrd_title = infobrd_title;
		this.infobrd_content = infobrd_content;
		this.infobrd_url = infobrd_url;
		this.infobrd_ctgrno = infobrd_ctgrno;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getInfobrd_title() {
		return infobrd_title;
	}

	public void setInfobrd_title(String infobrd_title) {
		this.infobrd_title = infobrd_title;
	}

	public String getInfobrd_content() {
		return infobrd_content;
	}

	public void setInfobrd_content(String infobrd_content) {
		this.infobrd_content = infobrd_content;
	}

	public String getInfobrd_url() {
		return infobrd_url;
	}

	public void setInfobrd_url(String infobrd_url) {
		this.infobrd_url = infobrd_url;
	}

	public int getInfobrd_ctgrno() {
		return infobrd_ctgrno;
	}

	public void setInfobrd_ctgrno(int infobrd_ctgrno) {
		this.infobrd_ctgrno = infobrd_ctgrno;
	}
	
	
	
}
