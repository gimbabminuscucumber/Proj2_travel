package all.vo;

public class ViewImgVO {
	
	private int no;
	private int viewimg_catgrno;
	private String viewimg_attn;
	
	
	public ViewImgVO() {
		super();
	}

	public ViewImgVO(int no, int viewimg_catgrno, String viewimg_attn) {
		super();
		this.no = no;
		this.viewimg_catgrno = viewimg_catgrno;
		this.viewimg_attn = viewimg_attn;
	}
	

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getViewimg_catgrno() {
		return viewimg_catgrno;
	}

	public void setViewimg_catgrno(int viewimg_catgrno) {
		this.viewimg_catgrno = viewimg_catgrno;
	}

	public String getViewimg_attn() {
		return viewimg_attn;
	}

	public void setViewimg_attn(String viewimg_attn) {
		this.viewimg_attn = viewimg_attn;
	}

}
