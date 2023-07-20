package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.zerock.dto.EvenNotiReplyDTO;
import org.zerock.repository.EvenNotiReplyRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class EvenNotiReplyService {
	
	private final EvenNotiReplyRepository evenNotiReplyRepository;
	
	//댓글 조회 (공지사항)
	public List<EvenNotiReplyDTO> noticeReplyRead(Long noticeId){
		return evenNotiReplyRepository.noticeReplyRead(noticeId);
	}
	
	// 댓글 등록 (공지사항)
	public int ReplyRegiN(EvenNotiReplyDTO evenNotiReplyDTO ) {
		return evenNotiReplyRepository.ReplyRegiN(evenNotiReplyDTO);
	}
	
	
	// 댓글 조회(이벤트)
	public List<EvenNotiReplyDTO> eventReplyRead(Long eventid){
		return evenNotiReplyRepository.eventReplyRead(eventid);
	}
	
	// 댓글 등록(이벤트)
	public void ReplyRegiE(EvenNotiReplyDTO evenNotiReplyDTO) {
		evenNotiReplyRepository.ReplyRegiE(evenNotiReplyDTO);
	}
	
}
