package cat5.cat51.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import all.service.MngBrdService;
import all.vo.MngBrdVO;
import cat5.cat51.service.NewsService;
import common.Paging;
import common.ViewPath;

@Controller
public class NewsController {
	
	private MngBrdService mngbrdService;
	
	public NewsController(MngBrdService mngbrdService) {
		this.mngbrdService = mngbrdService;
	}

	@RequestMapping("/cat51/list")
	public String list(Model model, Integer page, String type, String word) {

		int ctgrno = 51;
		
		if(page==null) {
			page = 1;	
		}
		
		if(type !=null && type.equals("")) {
			type = null;
			word = null;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("type", type);
		map.put("word", word);
		map.put("mngbrd_ctgrno", ctgrno);
		
		int mngbrdCount = mngbrdService.MngBrdGetTotal(map);
		Paging paging = new Paging(page, mngbrdCount);
		
		map.put("first", paging.getFirst());
		map.put("last", paging.getLast());	
		
		List<MngBrdVO> list = mngbrdService.MngBrdList(map);
		
		if(list.isEmpty()) {
			list = null;
		}
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);

		return ViewPath.NEWS + "list.jsp";
	}

	
	@RequestMapping("/cat51/writeform")
	public String insertForm() {
		return ViewPath.NEWS + "write.jsp";
	}
	
	@Autowired
	private ServletContext application;
	
	@RequestMapping("/cat51/write")
	public String insert(Model model, HttpSession session, MngBrdVO vo) {
				
		Integer manager_no = (Integer)session.getAttribute("mngcheck");
		vo.setManager_no(manager_no);
		
		int num = mngbrdService.MngBrdGetNum51();
		vo.setNum(num);
		
		// 첨부파일
		String savePath = application.getRealPath("/resources/upload/");
		String filename = null;
		
		MultipartFile fileupload = vo.getMngbrd_upload();
				
		if(fileupload !=null && !fileupload.isEmpty()) {
			
			filename = fileupload.getOriginalFilename();
						
			File saveFile = new File(savePath, filename);
			
			if(!saveFile.exists()) {
				saveFile.mkdirs();
			}else {
				long time = System.currentTimeMillis();
				filename = String.format("%s%d%s", filename.substring(0, filename.lastIndexOf(".")),time,filename.substring(filename.lastIndexOf(".")));
				
				saveFile = new File(savePath, filename);
			}
			
			try {
				fileupload.transferTo(saveFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			vo.setMngbrd_file(filename);
		}else {
			vo.setMngbrd_file("no_file");
		}
		
		int su = mngbrdService.MngBrdInsert(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "write");
		model.addAttribute("url", "/kisland/cat51/list");
		model.addAttribute("vo", vo);

		return ViewPath.NEWS + "result.jsp";
	}
	
	
	@RequestMapping("/cat51/content")
	public String content(Model model, int no) {
		
		Map<String, Object> map = mngbrdService.MngBrdGetContent(no);
		
		model.addAttribute("vo", map);
		
		return ViewPath.NEWS + "content.jsp";
	}
	
	@RequestMapping("/cat51/updateform")
	public String updateForm(Model model, int no) {
		
		MngBrdVO vo = mngbrdService.MngBrdOne(no);
		
		model.addAttribute("vo", vo);
		
		return ViewPath.NEWS + "update.jsp";
	}
	
	@RequestMapping("/cat51/update")
	public String update(Model model, MngBrdVO vo) {
	
		int su = mngbrdService.MngBrdUpdate(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "update");
		model.addAttribute("url", "/kisland/cat51/content?no=" + vo.getNo());
				
		return ViewPath.NEWS + "result.jsp";
	}
	
	@RequestMapping("/cat51/delete")
	public String delete(Model model, int no) {
		
		int su = mngbrdService.MngBrdDelete(no);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "delete");
		model.addAttribute("url", "/kisland/cat51/list");
		
		return ViewPath.NEWS + "result.jsp";
	}


}