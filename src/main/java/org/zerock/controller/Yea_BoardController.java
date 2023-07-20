package org.zerock.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.model.Yea_BoardVO;
import org.zerock.model.Yea_Criteria;
import org.zerock.model.Yea_PageMakerDTO;
import org.zerock.service.Yea_BoardService;

@Controller
@RequestMapping("/board/*")
public class Yea_BoardController {
	private static final Logger log = LoggerFactory.getLogger(Yea_BoardController.class);
	
	
	@Autowired
	private Yea_BoardService bservice;
	
	//게시판 목록 페이지 들어가기
   // @GetMapping("/list")
    //@RequestMapping(value="list", method=RequestMethod.GET)
    public void boardListGET(Model model) {
        log.info("게시판 목록 페이지 입니다");
        model.addAttribute("yea_list", bservice.getList());
    }
    
    //게시판 등록 페이지들어가기
    @GetMapping("/yea_enroll")
    //@RequestMapping(value="enroll", method=RequestMethod.GET)
    public void boardEnrollGET() {
        log.info("게시판 등록 페이지 들어가기입니다");
    }
    
    //게시글 등록
    @PostMapping("/yea_enroll")
    public String boardEnrollPOST(Yea_BoardVO board, RedirectAttributes rttr) {
    	log.info("Yea_BoardVO : " + board);
    	bservice.enroll(board);
    	rttr.addFlashAttribute("result", "enroll success");
    	return "redirect:/board/yea_list";
    }
    
    //게시판 조회
    @GetMapping("/yea_get")
    public void boardGetPageGET(int bno, Model model, Yea_Criteria cri) {
    	model.addAttribute("pageInfo", bservice.getPage(bno));
    	//addAttribute 메소드를 호출하여 cri속성명에 속성값으로 뷰(view)로부터 
    	//전달받은 Yea_Criteria 인스턴스를 저장합니다
    	model.addAttribute("cri", cri);
    }
    
    
    //게시판 수정으로 이동
    @GetMapping("/yea_modify")
    public void boardModifyGET(int bno, Model model, Yea_Criteria cri) {
    	model.addAttribute("pageInfo", bservice.getPage(bno));
    	model.addAttribute("cri", cri);
    }
    
    //게시글 수정
    @PostMapping("/yea_modify")
    public String boardModifyPOST(Yea_BoardVO board, RedirectAttributes rttr) {
    	log.info("Yea_BoardVO : " + board);
    	bservice.modify(board);
    	rttr.addFlashAttribute("result", "modify success");
    	return "redirect:/board/yea_list";
    }
    
    
    //게시글 삭제
    @PostMapping("/yea_delete")
    public String boardDeletePOST(int bno, RedirectAttributes rttr) {
    	bservice.delete(bno);
    	rttr.addFlashAttribute("result","delete success");
    	return "redirect:/board/yea_list";
    }
    
    //게시판 목록페이지 접속(페이징 적용)
    @GetMapping("/yea_list")
    public void boardListGET(Model model, Yea_Criteria cri) {
        log.info("boardListGET");
        model.addAttribute("yea_list", bservice.getListPaging(cri));
        int total = bservice.getTotal(cri);
        Yea_PageMakerDTO pageMake = new Yea_PageMakerDTO(cri, total);
        model.addAttribute("yea_pageMaker", pageMake);
        
    }
    


    
}









