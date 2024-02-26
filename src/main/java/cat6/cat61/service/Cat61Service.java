package cat6.cat61.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import cat6.cat61.dao.ReserveInquireDAO;
import cat6.cat61.vo.ReserveInquireVO;

public class Cat61Service {
	private ReserveInquireDAO inquire;
	
	public Cat61Service(ReserveInquireDAO inquire) {
		this.inquire = inquire;
	}
	
public List<ReserveInquireVO> selectList(Map<String, Object> map){
		
	List<ReserveInquireVO> list = inquire.selectList(map);
		
		if(list.isEmpty()) {
			list = null;
		}
		
		return list;
	}
	
	public ReserveInquireVO selectOne(int no) {
		return inquire.selectOne(no);
	}
	
	public int getTotal(Map<String, Object> map) {
		return inquire.getTotal(map);
	}
	
	public Map<String, Object> getContent(int no){
		inquire.readCount(no);
		
		Map<String, Object> map = inquire.getContent(no);
		
		String str = "";
		
		StringBuffer buf = new StringBuffer();
		
		Clob clob = (Clob)map.get("RESVINQUIRE_CONTENT");
		
		BufferedReader br = null;
		try {
			br = new BufferedReader(clob.getCharacterStream());
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		try {
			while((str = br.readLine()) != null) {
				buf.append(str);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		map.put("RESVINQUIRE_CONTENT", buf.toString());
		
		return map;
	}
	
	public int insert(ReserveInquireVO vo) {
		int no = inquire.getSeq();
		
		vo.setNo(no);
		
		return inquire.insert(vo);
	}
	
	public int delete(int no) {
		return inquire.delete(no);
	}
	
	public int update(ReserveInquireVO vo) {
		return inquire.update(vo);
	}
	
	public int commentupdate(ReserveInquireVO vo) {
		return inquire.commentupdate(vo);
	}
	
	public String managername(int no) {
		return inquire.managername(no);
	}
}
