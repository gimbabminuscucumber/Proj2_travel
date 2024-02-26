package all.service;

import all.dao.UserInfoDAO;
import all.vo.UserInfoVO;

public class LoginService {

	private UserInfoDAO userinfoDao;
	
	public void setUserinfoDao(UserInfoDAO userinfoDao) {
		this.userinfoDao = userinfoDao;
	}
	
	public int checkLogin(UserInfoVO vo) {
		return userinfoDao.checkLogin(vo);
	}
	
	public String findId(UserInfoVO vo) {
		return userinfoDao.findId(vo);
	}
	
	public String findPw(UserInfoVO vo) {
		return userinfoDao.findPw(vo);
	}
	
	public int checkMng(UserInfoVO vo) {
		return userinfoDao.checkMng(vo);
	}
	
	public int selectStatus(UserInfoVO vo) {
		return userinfoDao.selectStatus(vo);
	}
	
	
}
