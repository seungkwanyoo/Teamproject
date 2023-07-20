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
@RequestMapping("/noticeEventBoard/*")
@RequiredArgsConstructor
public class EventBoardController {
	
	private final EvenNotiBoardService evenNotiBoardService;
	private final EvenNotiReplyService evenNotiReplyService;

	// 이벤트 글작성 페이지 이동
	@GetMapping("/noticeEventsave2")
	public String save2() {
		return null;
	}
	
	
	// 공지사항,이벤트 글작성 페이지에서 글작성 시 이동 (공지사항관련)
	@PostMapping("/noticeEventsave2")
	public String eventsave(@ModelAttribute EvenNotiBoardDTO boardDTO) {
		int result =  evenNotiBoardService.eventsave(boardDTO);
		
		if(result > 0 ) {
			return "redirect:/noticeEventBoard/noticeEvent2";
		} else {
			return "/noticeEventBoard/noticeEventsave2";
		}
	}
	
//	// 공지사항 게시판 페이지로 리스트값 넘겨주고 페이지이동
//	@GetMapping("/noticeEvent2")
//	public String findAllEvent(Model model) {
//		List<EvenNotiBoardDTO> boardDTO = evenNotiBoardService.findAllEvent();
//		model.addAttribute("eventList", boardDTO);
//		return "/noticeEventBoard/noticeEvent2";
//	}
	
	// 글 상세보기
	@GetMapping("/eventBoard")
	public String findByIdEvent(@RequestParam("NTid") Long eventId,@RequestParam(value="ePage", required = false, defaultValue = "1") int page, Model model) {
		evenNotiBoardService.updateHitsE(eventId);
		EvenNotiBoardDTO evenNotiBoardDTO = evenNotiBoardService.findByIdEvent(eventId);
		model.addAttribute("EventB", evenNotiBoardDTO);
		model.addAttribute("pageE", page);
		
		
		return "/noticeEventBoard/eventDetail";
	}
	
	// 글 삭제하기
	@GetMapping("/eventDelete")
	public String DeleteNotice(@RequestParam("NTid") Long eventId) {
		evenNotiBoardService.deleteEventId(eventId);
		return "redirect:/noticeEventBoard/noticeEvent2";
	}
	
	// 글 수정 form 으로 이동
	@GetMapping("/eventUpdate")
	public String UpdateEvent(@RequestParam("NTid") Long eventId, Model model) {
		EvenNotiBoardDTO evenNotiBoardDTO = evenNotiBoardService.findByIdEvent(eventId); 
		model.addAttribute("EventUp", evenNotiBoardDTO);
		
		return "/noticeEventBoard/eventUpdate";
	}
	
	// 글 수정한것을 post로 보내기
	@PostMapping("/eventUpdate")
	public String UpdateEventP(@ModelAttribute EvenNotiBoardDTO evenNotiBoardDTO, Model model) {
		evenNotiBoardService.updateEvent(evenNotiBoardDTO);
		EvenNotiBoardDTO enDTO = evenNotiBoardService.findByIdEvent(evenNotiBoardDTO.getEventId());
		model.addAttribute("EventUp", enDTO);
		return "redirect:/noticeEventBoard/eventBoard?NTid="+evenNotiBoardDTO.getEventId();
	}
	
	// /noticeEventBoard/noticeEvent2?page=2 이런식으로 페이지가 넘어감
	// 처음 페이지 요청은 1페이지를 보여줌
	// 페이징 컨트롤러
	@GetMapping("/noticeEvent2")
	public String paging(Model model,
			@RequestParam(value="ePage", required = false, defaultValue = "1") int page) {
		// 해당페이지에서 보여줄 글 목록
		List<EvenNotiBoardDTO> pagingEList = evenNotiBoardService.pagingEList(page);
		PageDTO pageDTO = evenNotiBoardService.pagingEParam(page);
		model.addAttribute("eventList", pagingEList);
		model.addAttribute("eventPaging", pageDTO);
		return "/noticeEventBoard/noticeEvent2";
	}
	
	
}	








































