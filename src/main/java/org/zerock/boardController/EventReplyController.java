package org.zerock.boardController;

import java.lang.ProcessBuilder.Redirect;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.dto.EvenNotiReplyDTO;
import org.zerock.dto.PageDTO;
import org.zerock.service.EvenNotiReplyService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/noticeEventBoard")
@RequiredArgsConstructor
public class EventReplyController {
	
	private final EvenNotiReplyService evenNotiReplyService;
	
	

	
}
