package org.zerock.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.dto.EvenNotiBoardDTO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class EvenNotiBoardRepository {

	private final SqlSession sql;
	
	// 공지사항 관련 repository
	// 글 등록 repository (공지사항)
	public int noticesave(EvenNotiBoardDTO boardDTO) {
		return sql.insert("Board.noticesave", boardDTO);
	}
	
	// 글 목록 repository(공지사항)
	public List<EvenNotiBoardDTO> findAllNotice() {
		return sql.selectList("Board.findAllNotice");
	}
	
	// 글 상세보기 repository(공지사항)
	public EvenNotiBoardDTO findByIdNotice(Long noticeId) {
		// 아이디가 "1"인 게시글은 무조건 한개임
		return sql.selectOne("Board.findByIdNotice",noticeId);
	}
	
	// 조회수 올라가는 리파지(공지사항)
	public void updateHitsN(Long noticeId) {
		sql.update("Board.updateHitsN", noticeId);
	}
	
	
	// 글 삭제 repository(공지사항)
	public void deleteNotice(Long noticeId) {
		sql.delete("Board.deleteNotice", noticeId);
	}
	
	// 글 업뎃 repository(공지사항)
	public void updateNotice(EvenNotiBoardDTO evenNotiBoardDTO) {
		sql.update("Board.updateNotice", evenNotiBoardDTO);
	}
	
	// 페이징리스트 가져오기 (공지사항)
	public List<EvenNotiBoardDTO> pagingNList(Map<String, Integer> pagingNParams) {
		return sql.selectList("Board.pagingNList", pagingNParams);
	}
	
	// 전체글 갯수 조회 (공지사항)
	public int noticeCount() {
		return sql.selectOne("Board.boardNCount");
	}
	
	// =============================================================================== //
	
	// 이벤트 관련 repository
	// 글 등록 repository(이벤트)
	public int eventsave(EvenNotiBoardDTO boardDTO) {
		return sql.insert("Board.eventsave", boardDTO);
	}
	
	// 글 목록 repository(이벤트)
	public List<EvenNotiBoardDTO> findAllEvent() {
		return sql.selectList("Board.findAllEvent");
	}

	// 글 상세보기 repository(이벤트)
	public EvenNotiBoardDTO findByIdEvent(Long eventId) {
		// 아이디가 "1"인 게시글은 무조건 한개임
		return sql.selectOne("Board.findByIdEvent",eventId);
	}
	
	public void updateHitsE(Long eventId) {
		sql.update("Board.updateHitsE", eventId);
	}
	
	// 글 삭제 repository(이벤트)
	public void deleteEvent(Long eventId) {
		sql.delete("Board.deleteEvent", eventId);
	}
	
	// 글 업뎃 repository(이벤트)
	public void updateEvent(EvenNotiBoardDTO evenNotiBoardDTO) {
		sql.update("Board.updateEvent", evenNotiBoardDTO);
	}
	
	// 페이징리스트 가져오기 (이벤트)
	public List<EvenNotiBoardDTO> pagingEList(Map<String, Integer> pagingEParams) {
		return sql.selectList("Board.pagingEList", pagingEParams);
	}
	
	// 전체글 갯수 조회 (이벤트)
	public int eventCount() {
		return sql.selectOne("Board.boardECount");
	}


	










}
