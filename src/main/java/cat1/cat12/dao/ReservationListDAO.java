package cat1.cat12.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import cat1.cat11.vo.CreditCardVO;
import cat1.cat11.vo.PersonOnBoardVO;
import cat1.cat11.vo.ReservationistVO;
import cat1.cat12.vo.ReservationListVO;

public class ReservationListDAO {
	private SqlSession sqlSession;
	
	public ReservationListDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public int insert(ReservationListVO vo) {
		return sqlSession.insert("cat12.resvlistinsert", vo);
	}
	public int pobupdate(PersonOnBoardVO vo) {
		return sqlSession.update("cat12.pobupdate", vo);
	}
	public int resvupdate(ReservationistVO vo) {
		return sqlSession.update("cat12.resvupdate", vo);
	}
	
	public int pobdelete(int no) {
		return sqlSession.delete("cat12.pobdelete", no);
	}
	public int resvdelete(int no) {
		return sqlSession.delete("cat12.resvdelete", no);
	}
	public int resvlistdelete(int no) {
		return sqlSession.delete("cat12.resvlistdelete", no);
	}
	public int resvlistdeletepob(int pob_no) {
		return sqlSession.delete("cat12.resvlistdeletepob", pob_no);
	}
	
	public List<Map<String, Object>> resvlistinit(int resv_no){
		return sqlSession.selectList("cat12.resvlistinit", resv_no);
	}
	public List<Map<String, Object>> resvlistmain(Map<String, Object> map){
		return sqlSession.selectList("cat12.resvlistmain", map);
	}
	public List<Map<String, Object>> resvlistpob(Map<String, Object> map){
		return sqlSession.selectList("cat12.resvlistpob", map);
	}
	public List<Map<String, Object>> resvlistcard(Map<String, Object> map){
		return sqlSession.selectList("cat12.resvlistcard", map);
	}
	
	public List<PersonOnBoardVO> getresvno(ReservationistVO vo){
		return sqlSession.selectList("cat12.getresvno", vo);
	}
	public List<Integer> getresvnopob(PersonOnBoardVO vo) {
		return sqlSession.selectList("cat12.getresvnopob", vo);
	}
	public List<Integer> getpnoresv(int resv_no) {
		return sqlSession.selectList("cat12.getpnoresv", resv_no);
	}
	public List<ReservationistVO> getresvnocard(CreditCardVO vo){
		return sqlSession.selectList("cat12.getresvnocard", vo);
	}
	
	public ReservationistVO checkresv(int no){
		return sqlSession.selectOne("cat12.checkresv", no);
	}
	public PersonOnBoardVO checkpob(int no){
		return sqlSession.selectOne("cat12.checkpob", no);
	}
	
	public String pobsale(int no) {
		return sqlSession.selectOne("cat12.pobsale", no);
	}
	
	public PersonOnBoardVO getPob(int no) {
		return sqlSession.selectOne("cat12.getPob", no);
	}
	public CreditCardVO recipe(int no) {
		return sqlSession.selectOne("cat12.recipe", no);
	}
}
