package org.zerock.boardController;

import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.dto.EvenNotiBoardDTO;
import org.zerock.dto.EvenNotiReplyDTO;
import org.zerock.dto.PageDTO;
import org.zerock.service.EvenNotiBoardService;
import org.zerock.service.EvenNotiReplyService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/noticeEventBoard")
@RequiredArgsConstructor
public class NoticsBoardController {
	
	private final EvenNotiBoardService evenNotiBoardService;
	private final EvenNotiReplyService evenNotiReplyService;
	
	// 공지사항 글작성 페이지 이동
	@GetMapping("/noticeEventsave")
	public String save() {
		return null;
	}
	
	// 공지사항,이벤트 글작성 페이지에서 글작성 시 이동 (공지사항관련)
	@PostMapping("/noticeEventsave")
	public String noticesave(@ModelAttribute EvenNotiBoardDTO boardDTO) {
		int result =  evenNotiBoardService.noticesave(boardDTO);
		
		if(result > 0 ) {
			return "redirect:/noticeEventBoard/noticeEvent";
		} else {
			return "/noticeEventBoard/noticeEventsave";
		}
	}
	
	// 공지사항 게시판 페이지로 리스트값 넘겨주고 페이지이동
//	@GetMapping("/noticeEvent")
//	public String findAllNotice(Model model) {
//		List<EvenNotiBoardDTO> boardDTO = evenNotiBoardService.findAllNotice();
//		model.addAttribute("noticeList", boardDTO);
//		return "/noticeEventBoard/noticeEvent";
//	}
	
	// 글 상세보기
	@GetMapping("/noticeBoard")
	public String findByIdNotice(@RequestParam("NTid") Long noticeId, @RequestParam(value="nPage", required = false, defaultValue = "1") int page, Model model) throws Exception {
		evenNotiBoardService.updateHitsN(noticeId);
		EvenNotiBoardDTO evenNotiBoardDTO = evenNotiBoardService.findByIdNotice(noticeId);
		model.addAttribute("NoticeB", evenNotiBoardDTO);
		model.addAttribute("pageN", page);
		// List<EvenNotiReplyDTO> list = evenNotiReplyService.noticeReplyRead(noticeId);
		
		
		return "/noticeEventBoard/noticeDetail";
	}
	
	
	// 글 삭제하기
	@GetMapping("/noticeDelete")
	public String DeleteNotice(@RequestParam("NTid") Long noticeId,@RequestParam(value="nPage", required = false, defaultValue = "1") int page) {
		evenNotiBoardService.deleteNotice(noticeId);
		return "redirect:/noticeEventBoard/noticeEvent";
	}
	
	// 글 수정 form 으로 이동
	@GetMapping("/noticeUpdate")
	public String UpdateNotice(@RequestParam("NTid") Long noticeId, Model model) {
		EvenNotiBoardDTO evenNotiBoardDTO = evenNotiBoardService.findByIdNotice(noticeId); 
		model.addAttribute("NoticeUp", evenNotiBoardDTO);
		
		return "/noticeEventBoard/noticeUpdate";
	}
	
	// 글 수정한것을 post로 보내기
	@PostMapping("/noticeUpdate")
	public String UpdateNoticeP(@ModelAttribute EvenNotiBoardDTO evenNotiBoardDTO, Model model) {
		evenNotiBoardService.updateNotice(evenNotiBoardDTO);
		EvenNotiBoardDTO enDTO = evenNotiBoardService.findByIdNotice(evenNotiBoardDTO.getNoticeId());
		model.addAttribute("NoticeUp", enDTO);
		return "redirect:/noticeEventBoard/noticeBoard?NTid="+evenNotiBoardDTO.getNoticeId();
	}
	
	// /noticeEventBoard/noticeEvent?page=2 이런식으로 페이지가 넘어감
	// 처음 페이지 요청은 1페이지를 보여줌
	// 페이징 컨트롤러
	@GetMapping("/noticeEvent")
	public String paging(Model model,
			@RequestParam(value="nPage", required = false, defaultValue = "1") int page) {
		// 해당페이지에서 보여줄 글 목록
		List<EvenNotiBoardDTO> pagingList = evenNotiBoardService.pagingNList(page);
		PageDTO pageDTO = evenNotiBoardService.pagingNParam(page);
		model.addAttribute("noticeList", pagingList);
		model.addAttribute("noticePaging", pageDTO);
		return "/noticeEventBoard/noticeEvent";
	}
			
} 








































