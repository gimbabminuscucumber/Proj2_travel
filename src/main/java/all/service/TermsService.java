package all.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import all.dao.MngBrdDAO;
import all.dao.TermsDAO;
import all.vo.MngBrdVO;
import all.vo.TermsVO;

public class TermsService {
	
	private TermsDAO termsDao;
	
	public TermsService(TermsDAO termsDao) {
		this.termsDao = termsDao;
	}
	
//	소라
	public List<TermsVO> TermsList(){
		return termsDao.TermsList();
	}
	
//	우형
	public List<TermsVO> selectFooter(){
		List<TermsVO> list = termsDao.selectFooter();
		
		return list;
	}
	
	public List<TermsVO> selectFooter2(){
		List<TermsVO> list = termsDao.selectFooter2();
		
		return list;
	}
	
	public List<TermsVO> selectFooter3(){
		List<TermsVO> list = termsDao.selectFooter3();
		
		return list;
	}
	
}
