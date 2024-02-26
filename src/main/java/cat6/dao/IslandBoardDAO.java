package cat6.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import all.vo.ManagerVO;
import cat6.vo.AccommoVO;
import cat6.vo.IslandBoardVO;
import cat6.vo.TransportationVO;
import cat6.vo.TravelDateVO;
import cat6.vo.TravelPurposeVO;
import cat6.vo.TravelScheduleVO;

public class IslandBoardDAO {

	private SqlSession sqlSession;
	
	public IslandBoardDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<IslandBoardVO> selectList(Map<String, Object> map){
		return sqlSession.selectList("islandbrd.selectList", map);
	}
	
	public IslandBoardVO selectOne(int no) {
		return sqlSession.selectOne("islandbrd.selectOne", no);
	}
	
	public int getTotal(Map<String, Object> map) {
		return sqlSession.selectOne("islandbrd.getTotal", map);
	}
	
	public int readCount(int no) {
		return sqlSession.update("islandbrd.readCount", no);
	}
	
	public Map<String, Object> getContent(int no){
		return sqlSession.selectOne("islandbrd.getContent", no);
	}
	
	public int insert(IslandBoardVO vo) {
		return sqlSession.insert("islandbrd.insert", vo);
	}
	
	public List<ManagerVO> selectManager(){
		return sqlSession.selectList("islandbrd.selectManager");
	}
	
	public List<AccommoVO> selectAccommo(){
		return sqlSession.selectList("islandbrd.selectAccommo");
	}
	
	public List<TransportationVO> selectTransportation(){
		return sqlSession.selectList("islandbrd.selectTransportation");
	}
	
	public List<TravelDateVO> selectTraveldate(){
		return sqlSession.selectList("islandbrd.selectTraveldate");
	}
	
	public List<TravelPurposeVO> selectTravelpurpose(){
		return sqlSession.selectList("islandbrd.selectTravelpurpose");
	}
	
	public List<TravelScheduleVO> selectTravelschedule(){
		return sqlSession.selectList("islandbrd.selectTravelschedule");
	}
	
	public int delete(int no) {
		return sqlSession.delete("islandbrd.delete", no);
	}
	
	public int update(IslandBoardVO vo) {
		return sqlSession.update("islandbrd.update", vo);
	}
	
	public int reply(IslandBoardVO vo) {
		return sqlSession.update("islandbrd.reply", vo);
	}
	
	public String contentTdate(int tdate_no) {
		return sqlSession.selectOne("islandbrd.contentTdate", tdate_no);
	}
	
	public String contentTrans(int trans_no) {
		return sqlSession.selectOne("islandbrd.contentTrans", trans_no);
	}
	
	public String contentPurpose(int tpurpose_no) {
		return sqlSession.selectOne("islandbrd.contentPurpose", tpurpose_no);
	}
	
	public String contentAccom(int accom_no) {
		return sqlSession.selectOne("islandbrd.contentAccom", accom_no);
	}
	
	public String contentSchedule(int tschedule_no) {
		return sqlSession.selectOne("islandbrd.contentSchedule", tschedule_no);
	}
	
}
