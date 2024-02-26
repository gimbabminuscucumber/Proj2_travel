package cat1.cat12.service;

import java.util.List;
import java.util.Map;

import cat1.cat11.dao.PersonOnBoardDAO;
import cat1.cat11.vo.CreditCardVO;
import cat1.cat11.vo.PersonOnBoardVO;
import cat1.cat11.vo.ReservationistVO;
import cat1.cat12.dao.ReservationListDAO;
import cat1.cat12.vo.ReservationListVO;

public class Cat12Service {
	private ReservationListDAO resvlist;
	private PersonOnBoardDAO pob;
	
	public Cat12Service(ReservationListDAO resvlist, PersonOnBoardDAO pob) {
		this.resvlist = resvlist;
		this.pob = pob;
	}
	
	public List<PersonOnBoardVO> poblist(int resv_no){
		return pob.poblist(resv_no);
	}
	
	public List<Integer> pobno(int resv_no) {
		return pob.pobno(resv_no);
	}
	
	public int insert(ReservationListVO vo) {
		return resvlist.insert(vo);
	}
	public int pobupdate(PersonOnBoardVO vo) {
		return resvlist.pobupdate(vo);
	}
	public int resvupdate(ReservationistVO vo) {
		return resvlist.resvupdate(vo);
	}
	public int pobdelete(int no) {
		return resvlist.pobdelete(no);
	}
	public int resvdelete(int no) {
		return resvlist.resvdelete(no);
	}
	public int resvlistdelete(int no) {
		return resvlist.resvlistdelete(no);
	}
	public int resvlistdeletepob(int pob_no) {
		return resvlist.resvlistdeletepob(pob_no);
	}
	
	public List<Map<String, Object>> resvlistinit(int resv_no){
		return resvlist.resvlistinit(resv_no);
	}
	public List<Map<String, Object>> resvlistmain(Map<String, Object> map){
		return resvlist.resvlistmain(map);
	}
	public List<Map<String, Object>> resvlistpob(Map<String, Object> map){
		return resvlist.resvlistpob(map);
	}
	public List<Map<String, Object>> resvlistcard(Map<String, Object> map){
		return resvlist.resvlistcard(map);
	}
	
	public List<PersonOnBoardVO> getresvno(ReservationistVO vo){
		return resvlist.getresvno(vo);
	}
	public List<Integer> getresvnopob(PersonOnBoardVO vo) {
		return resvlist.getresvnopob(vo);
	}
	public List<Integer> getpnoresv(int resv_no) {
		return resvlist.getpnoresv(resv_no);
	}
	public List<ReservationistVO> getresvnocard(CreditCardVO vo){
		return resvlist.getresvnocard(vo);
	}
	
	public ReservationistVO checkresv(int no){
		return resvlist.checkresv(no);
	}
	public PersonOnBoardVO checkpob(int no) {
		return resvlist.checkpob(no);
	}
	
	public String pobsale(int no) {
		return resvlist.pobsale(no);
	}
	
	public PersonOnBoardVO getPob(int no) {
		return resvlist.getPob(no);
	}
	public CreditCardVO recipe(int no) {
		return resvlist.recipe(no);
	}
}
