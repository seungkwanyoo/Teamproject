package org.zerock.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.dto.EvenNotiReplyDTO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class EvenNotiReplyRepository {

	private final SqlSession sql;
	
	// 댓글 조회 (공지사항)
    public List<EvenNotiReplyDTO> noticeReplyRead(Long noticeId) {
        return sql.selectList("Reply.noticeReplyRead", noticeId);
    }
	
    // 댓글 등록(공지사항)
    public int ReplyRegiN(EvenNotiReplyDTO evenNotiReplyDTO) {
        return sql.insert("Reply.noticeReply", evenNotiReplyDTO);
    }
	
	
	
	// =============================================================
	
	
	// 댓글 조회(이벤트)
	public List<EvenNotiReplyDTO> eventReplyRead(Long eventid) {
		return sql.selectList("Reply.eventReplyRead", eventid);
		
	}
	
	// 댓글 등록 (이벤트)
	public void ReplyRegiE(EvenNotiReplyDTO evenNotiReplyDTO) {
		sql.insert("Reply.eventReply", evenNotiReplyDTO);
	}

	
}
