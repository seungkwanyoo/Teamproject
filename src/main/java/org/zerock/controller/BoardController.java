package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.model.Criteria;
import org.zerock.model.PageMakeDTO;
import org.zerock.service.BoardService;

import lombok.extern.log4j.Log4j;



@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
	
	@Autowired
	private BoardService bservice;
	
	
//	/* 게시판 목록 페이지 접속*/
//	@GetMapping("/list")
//    // => @RequestMapping(value="list", method=RequestMethod.GET)
//    public void boardListGET(Model model) {
//        
//        log.info("게시판 목록 페이지 진입");
//        
//        model.addAttribute("list", bservice.getList());
//        
//    }
	
	/* 게시판 목록 페이지 접속(페이징 적용) */
    @GetMapping("/list")
    public void boardListGET(Model model, Criteria cri) {
        
        log.info("boardListGET");
        
        model.addAttribute("list", bservice.getListPaging(cri));
        
        int total = bservice.getTotal(cri);
        
        PageMakeDTO pageMake = new PageMakeDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMake);
        
        
    }
	
	/* 게시판 등록 페이지 접속*/
    @GetMapping("/enroll")
    // => @RequestMapping(value="enroll", method=RequestMethod.GET)
    public void boardEnrollGET() {
        
        log.info("게시판 등록 페이지 진입");
        
    }
    
    /* 게시판 등록 */
    @PostMapping("/enroll")
    public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
        
        log.info("BoardVO : " + board);
        
        bservice.enroll(board);
        
        rttr.addFlashAttribute("result", "enrol success");
        
        return "redirect:/board/list"; 
        // 리다이렉트(Redirect) 방식으로 목록페이지로 이동하는 이유는 '등록', '수정', '삭제' 와같은 작업이 처리가 된 후
        // "새로고침"을 통해 동일한 내용을 계속 서버에 등록할 수 없게 하기 위함입니다.
        
    }
    
    /* 게시판 조회 */
    @GetMapping("/get")
    public void boardGetPageGET(int bno, Model model, Criteria cri) throws Exception {
        
        model.addAttribute("pageInfo", bservice.getPage(bno));
        
        model.addAttribute("cri", cri);
        
    }
    
    
    /* 수정 페이지 이동 */
    @GetMapping("/modify")
    public void boardModifyGET(int bno, Model model, Criteria cri) {
        
        model.addAttribute("pageInfo", bservice.getPage(bno));
        
        model.addAttribute("cri", cri);
        
    }
    
    /* 페이지 수정 */
    @PostMapping("/modify")
    public String boardModifyPOST(BoardVO board, RedirectAttributes rttr) {
        
        bservice.modify(board);
        
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/board/list";
        
    }
    
    /* 페이지 삭제 */
    @PostMapping("/delete")
    public String boardDeletePOST(int bno, RedirectAttributes rttr) {
        
        bservice.delete(bno);
        
        rttr.addFlashAttribute("result", "delete success");
        
        return "redirect:/board/list";
    }

}
