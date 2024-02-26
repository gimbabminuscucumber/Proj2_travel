package cat1.cat11.vo;

public class TicketKindVO {
	private int no;
	private String ticket_kind;
	public TicketKindVO(int no, String ticket_kind) {
		super();
		this.no = no;
		this.ticket_kind = ticket_kind;
	}
	public TicketKindVO() {
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTicket_kind() {
		return ticket_kind;
	}
	public void setTicket_kind(String ticket_kind) {
		this.ticket_kind = ticket_kind;
	}
	
}
