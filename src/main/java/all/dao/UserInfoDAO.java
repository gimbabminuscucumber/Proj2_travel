package all.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import all.vo.TermsVO;
import all.vo.UserInfoVO;

public class UserInfoDAO{
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public int checkLogin(UserInfoVO vo) {

		int no = 0;

		try {
			no = sqlSession.selectOne("userinfo.checkLogin", vo);
			System.out.println(no+": 로그인 성공");
		} catch (NullPointerException e) {
			System.out.println(no+" 로그인 실패");
			e.printStackTrace();
		}

		return no;
	}
	
	public int checkMng(UserInfoVO vo) {

		int no = 0;

		try {
			no = sqlSession.selectOne("userinfo.selectMng", vo);
			System.out.println(no+"관리자");
		} catch (NullPointerException e) {
			System.out.println(no+"일반");
			e.printStackTrace();
		}
		return no;
	}

	public List<TermsVO> selectTerms() {
		return sqlSession.selectList("userinfo.jointerms");
	}

	public String findId(UserInfoVO vo) {
		return sqlSession.selectOne("userinfo.findId", vo);
	}

	public String findPw(UserInfoVO vo) {
		return sqlSession.selectOne("userinfo.findPw", vo);
	}

	public int insert(UserInfoVO vo) {
		return sqlSession.insert("userinfo.insert", vo);
	}

	public UserInfoVO selectOne(int no) {
		return sqlSession.selectOne("userinfo.selectOne", no);
	}

	public int update(UserInfoVO vo) {
		return sqlSession.update("userinfo.update", vo);
	}

	public int delete(int no) {
		return sqlSession.delete("userinfo.delete", no);
	}

	public String checkId(String id) {
		return sqlSession.selectOne("userinfo.checkId", id);
	}
	
	public int selectStatus(UserInfoVO vo) {
	      
	      int no = 0;

	      try {
	         no = sqlSession.selectOne("userinfo.selectStatus", vo);
	         System.out.println(no+"관리자번호 부여");
	      } catch (NullPointerException e) {
	         System.out.println(no+"일반");
	         e.printStackTrace();
	      }
	      return no;
	      
	      
	   }
	
	public List<UserInfoVO> userList(){
	      return sqlSession.selectList("userinfo.userList");
	      
	   }
}