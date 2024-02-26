package cat3;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import all.service.MngBrdService;
import all.vo.MngBrdVO;
import common.Paging;
import common.ViewPath;

@Controller
public class Cat37Controller {
	
	private MngBrdService mngbrdService;
	
	public Cat37Controller(MngBrdService mngbrdService) {
		this.mngbrdService = mngbrdService;
	}

	
	@RequestMapping("/cat37/list")
	public String list(Model model, Integer page, String type, String word) {

		int ctgrno = 37;
		
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

		return ViewPath.CAT37 + "list.jsp";
	}

	
	@RequestMapping("/cat37/writeform")
	public String insertForm() {
		return ViewPath.CAT37 + "write.jsp";
	}
	
	@Autowired
	private ServletContext application;
	
	@RequestMapping("/cat37/write")
	public String insert(Model model, HttpSession session, MngBrdVO vo, HttpServletRequest request) {
		
		Integer mngcheck = (Integer)request.getSession().getAttribute("mngcheck");
		vo.setManager_no(mngcheck);
		
		int num = mngbrdService.MngBrdGetNum37();
		vo.setNum(num);
		
		// 泥⑤��뙆�씪
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
		model.addAttribute("url", "/kisland/cat37/list");
		
		model.addAttribute("vo", vo);

		return ViewPath.CAT37 + "result.jsp";
	}
	
	
	@RequestMapping("/cat37/content")
	public String content(Model model, int no) {
		
		Map<String, Object> map = mngbrdService.MngBrdGetContent(no);
		
		model.addAttribute("vo", map);
		
		return ViewPath.CAT37 + "content.jsp";
	}
	
	@RequestMapping("/cat37/updateform")
	public String updateForm(Model model, int no) {
		
		MngBrdVO vo = mngbrdService.MngBrdOne(no);
		
		model.addAttribute("vo", vo);
		
		return ViewPath.CAT37 + "update.jsp";
	}
	
	@RequestMapping("/cat37/update")
	public String update(Model model, MngBrdVO vo) {
	
		int su = mngbrdService.MngBrdUpdate(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "update");
		model.addAttribute("url", "/kisland/cat37/content?no=" + vo.getNo());
				
		return ViewPath.CAT37 + "result.jsp";
	}
	
	@RequestMapping("/cat37/delete")
	public String delete(Model model, int no) {
		
		int su = mngbrdService.MngBrdDelete(no);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "delete");
		model.addAttribute("url", "/kisland/cat37/list");
		
		return ViewPath.CAT37 + "result.jsp";
	}


}








