package all.service;

import java.util.List;

import all.dao.UserInfoDAO;
import all.vo.TermsVO;
import all.vo.UserInfoVO;

public class UserInfoService {
	
private UserInfoDAO userinfoDao;
	
	public UserInfoService(UserInfoDAO userinfoDao) {
		this.userinfoDao = userinfoDao;
	}
	
	public boolean checkId(String id) {
		return userinfoDao.checkId(id) != null;
	}
	
	public int insert(UserInfoVO vo) {
		return userinfoDao.insert(vo);
	}
	
	public UserInfoVO selectOne(int no) {
		return userinfoDao.selectOne(no);
	}
	
	public int update(UserInfoVO vo) {
		return userinfoDao.update(vo);
	}
	
	public int delete(int no) {
		return userinfoDao.delete(no);
	}
	
	public List<TermsVO> selectTerms(){
		return userinfoDao.selectTerms();
	}
	
	public List<UserInfoVO> userList(){
	      return userinfoDao.userList();
	   }
	
	

}
