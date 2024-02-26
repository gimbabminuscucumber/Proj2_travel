package cat1.cat11.vo;

public class CreditCardVO {
	private int no, resv_no, card_kind, card_installment;
	private String card_num1, card_num2, card_num3, card_num4, card_password;
	private String card_expdate, card_birth, card_instdate;
	
//	----------------------
	
	private String resv_name;
	private String resvlist_paymentdate;
	
	public CreditCardVO(int no, int resv_no, int card_kind, int card_installment, String card_num1, String card_num2,
			String card_num3, String card_num4, String card_password, String card_expdate, String card_birth,
			String card_instdate, String resv_name, String resvlist_paymentdate) {
		super();
		this.no = no;
		this.resv_no = resv_no;
		this.card_kind = card_kind;
		this.card_installment = card_installment;
		this.card_num1 = card_num1;
		this.card_num2 = card_num2;
		this.card_num3 = card_num3;
		this.card_num4 = card_num4;
		this.card_password = card_password;
		this.card_expdate = card_expdate;
		this.card_birth = card_birth;
		this.card_instdate = card_instdate;
		this.resv_name = resv_name;
		this.resvlist_paymentdate = resvlist_paymentdate;
	}
	public CreditCardVO() {
		
	}

	
	public String getResvlist_paymentdate() {
		return resvlist_paymentdate;
	}
	public void setResvlist_paymentdate(String resvlist_paymentdate) {
		this.resvlist_paymentdate = resvlist_paymentdate;
	}
	public String getResv_name() {
		return resv_name;
	}
	public void setResv_name(String resv_name) {
		this.resv_name = resv_name;
	}
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getResv_no() {
		return resv_no;
	}

	public void setResv_no(int resv_no) {
		this.resv_no = resv_no;
	}

	public int getCard_kind() {
		return card_kind;
	}

	public void setCard_kind(int card_kind) {
		this.card_kind = card_kind;
	}

	public int getCard_installment() {
		return card_installment;
	}

	public void setCard_installment(int card_installment) {
		this.card_installment = card_installment;
	}

	public String getCard_num1() {
		return card_num1;
	}

	public void setCard_num1(String card_num1) {
		this.card_num1 = card_num1;
	}

	public String getCard_num2() {
		return card_num2;
	}

	public void setCard_num2(String card_num2) {
		this.card_num2 = card_num2;
	}

	public String getCard_num3() {
		return card_num3;
	}

	public void setCard_num3(String card_num3) {
		this.card_num3 = card_num3;
	}

	public String getCard_num4() {
		return card_num4;
	}

	public void setCard_num4(String card_num4) {
		this.card_num4 = card_num4;
	}

	public String getCard_password() {
		return card_password;
	}

	public void setCard_password(String card_password) {
		this.card_password = card_password;
	}

	public String getCard_expdate() {
		return card_expdate;
	}

	public void setCard_expdate(String card_expdate) {
		this.card_expdate = card_expdate;
	}

	public String getCard_birth() {
		return card_birth;
	}

	public void setCard_birth(String card_birth) {
		this.card_birth = card_birth;
	}

	public String getCard_instdate() {
		return card_instdate;
	}

	public void setCard_instdate(String card_instdate) {
		this.card_instdate = card_instdate;
	}
	
}
