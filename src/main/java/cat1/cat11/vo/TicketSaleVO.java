package cat1.cat11.vo;

public class TicketSaleVO {
	private int no, ticket_no, sale_rate;
	private String sale_kind;
	public TicketSaleVO(int no, int ticket_no, int sale_rate, String sale_kind) {
		super();
		this.no = no;
		this.ticket_no = ticket_no;
		this.sale_rate = sale_rate;
		this.sale_kind = sale_kind;
	}
	public TicketSaleVO() {
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getTicket_no() {
		return ticket_no;
	}
	public void setTicket_no(int ticket_no) {
		this.ticket_no = ticket_no;
	}
	public int getSale_rate() {
		return sale_rate;
	}
	public void setSale_rate(int sale_rate) {
		this.sale_rate = sale_rate;
	}
	public String getSale_kind() {
		return sale_kind;
	}
	public void setSale_kind(String sale_kind) {
		this.sale_kind = sale_kind;
	}
	
}
