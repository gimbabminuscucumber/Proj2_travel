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
import all.vo.CityVO;
import all.vo.IslandVO;
import all.vo.StateVO;
import cat3.service.IslandService;
import common.Paging;
import common.ViewPath;

@Controller
public class Cat31Controller {
	
	private IslandService islandService;
	
	
	public Cat31Controller(IslandService islandService) {
		this.islandService = islandService;
	}


	@RequestMapping("/cat31/list")
	public String list(Model model, String type, String word) {
		
		List<IslandVO> list = islandService.IslandList();
		List<StateVO> slist = islandService.StateList();
		
		if(list.isEmpty()) {
			list = null;
		}
		
		if(type !=null && type.equals("")) {
			type = null;
			word = null;
		}
		
		model.addAttribute("list", list);
		model.addAttribute("slist", slist);

		return ViewPath.CAT31 + "list.jsp";
	}
	
	@RequestMapping("/cat31/slist")
	public String slist(Model model, String type, String word, int sno) {
		
		List<IslandVO> list = islandService.SearchList(sno);
		
		List<StateVO> slist = islandService.StateList();
		
		if(type !=null && type.equals("")) {
			type = null;
			word = null;
		}
		
		model.addAttribute("list", list);
		model.addAttribute("slist", slist);
		
		return ViewPath.CAT31 + "list.jsp";
	}
	
	
	@RequestMapping("/cat31/content")
	public String content(Model model, int no) {
		
		IslandVO vo = islandService.IslandGetContent(no);
		
		model.addAttribute("vo", vo);		
		
		return ViewPath.CAT31 + "content.jsp";
	}

	/*
	
	@RequestMapping("/cat31/writeform")
	public String insertForm() {
		return ViewPath.CAT31 + "write.jsp";
	}
	
	@Autowired
	private ServletContext application;
	
	@RequestMapping("/cat31/write")
	public String insert(Model model, HttpSession session, MngBrdVO vo, HttpServletRequest request) {
		
		Integer mngcheck = (Integer)request.getSession().getAttribute("mngcheck");
		vo.setManager_no(mngcheck);
		
		int num = mngbrdService.MngBrdGetNum31();
		vo.setNum(num);
		
		// 첨�??��?��
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
		model.addAttribute("url", "/kisland/cat31/list");
		
		model.addAttribute("vo", vo);

		return ViewPath.CAT31 + "result.jsp";
	}
	
	
	
	@RequestMapping("/cat31/updateform")
	public String updateForm(Model model, int no) {
		
		MngBrdVO vo = mngbrdService.MngBrdOne(no);
		
		model.addAttribute("vo", vo);
		
		return ViewPath.CAT31 + "update.jsp";
	}
	
	@RequestMapping("/cat31/update")
	public String update(Model model, MngBrdVO vo) {
	
		int su = mngbrdService.MngBrdUpdate(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "update");
		model.addAttribute("url", "/kisland/cat31/content?no=" + vo.getNo());
				
		return ViewPath.CAT31 + "result.jsp";
	}
	
	@RequestMapping("/cat31/delete")
	public String delete(Model model, int no) {
		
		int su = mngbrdService.MngBrdDelete(no);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "delete");
		model.addAttribute("url", "/kisland/cat31/list");
		
		return ViewPath.CAT31 + "result.jsp";
	}

	*/

}








