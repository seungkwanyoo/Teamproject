package org.zerock.boardController;

import java.lang.ProcessBuilder.Redirect;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.dto.EvenNotiReplyDTO;
import org.zerock.dto.PageDTO;
import org.zerock.repository.EvenNotiReplyRepository;
import org.zerock.service.EvenNotiReplyService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/noticeEventBoard")
@RequiredArgsConstructor
public class NoticsReplyController {
	
	private final EvenNotiReplyService evenNotiReplyService;
	
	
	// 댓글 list 불러오기
	@GetMapping("/nReplyList")
	@ResponseBody
	public List<EvenNotiReplyDTO> nReplyList (@RequestParam("NTid") Long noticeId, @RequestParam(value="nPage", required = false, defaultValue = "1") int page) {

		return evenNotiReplyService.noticeReplyRead(noticeId);
		
	}
	

	
	// 댓글등록 POST 방식					
	@PostMapping("/notiReplySave")
	@ResponseBody
	public int eventReplySaveP(@RequestParam("NTid") Long noticeId,
	                           @RequestParam String commentNContents,
	                           @RequestParam String commentNWriter) {
	    EvenNotiReplyDTO NReplySave = new EvenNotiReplyDTO();
	    NReplySave.setNoticeId(noticeId);
	    NReplySave.setCommentNContents(commentNContents);
	    NReplySave.setCommentNWriter(commentNWriter);
	    return evenNotiReplyService.ReplyRegiN(NReplySave);
	}

	
}
