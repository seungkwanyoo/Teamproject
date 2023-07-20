package org.zerock.service;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import org.zerock.dto.EvenNotiBoardDTO;
import org.zerock.dto.PageDTO;
import org.zerock.repository.EvenNotiBoardRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class EvenNotiBoardService {
	
	
	private final EvenNotiBoardRepository evenNotiBoardRepository;
	
	// 공지사항 관련 서비스
	// 글 등록 서비스(공지사항)
	public int noticesave(EvenNotiBoardDTO boardDTO) {
		return evenNotiBoardRepository.noticesave(boardDTO);
	}
	
	// 글 목록 서비스(공지사항)
	public List<EvenNotiBoardDTO> findAllNotice() {
		return evenNotiBoardRepository.findAllNotice();
	}
	
	// 글 상세보기 서비스(공지사항)
	public EvenNotiBoardDTO findByIdNotice(Long noticeId) {
		return evenNotiBoardRepository.findByIdNotice(noticeId);
	}
	
	// 조회수 올라가는 서비스 (공지사항)
	public void updateHitsN(Long noticeId) {
		evenNotiBoardRepository.updateHitsN(noticeId);
	}
	
	// 글 삭제 서비스(공지사항)
	public void deleteNotice(Long noticeId) {
		evenNotiBoardRepository.deleteNotice(noticeId);
	}
	
	// 글 업뎃 서비스(공지사항)
	public void updateNotice(EvenNotiBoardDTO evenNotiBoardDTO) {
		evenNotiBoardRepository.updateNotice(evenNotiBoardDTO);
		
	}
	
	int blockNLimit = 10; // 하단에 보여줄 페이지 번호 갯수
	
	public List<EvenNotiBoardDTO> pagingNList(int page) {
		
		/*
		 	1페이지당 보여지는 글 갯수 3
		 	1page => 0
		 	2page => 3
		 	3page => 6 
		 */
		// 한페이지당 보여주는 갯수 변수 설정
		int pageNStart = 1 + (page-1)*5;
		int pageNLimit = 5 * page;
		Map<String, Integer> pagingNParams = new HashMap<>();
		pagingNParams.put("startN",pageNStart);
		pagingNParams.put("limitN", pageNLimit);
		List<EvenNotiBoardDTO> pagingNList = evenNotiBoardRepository.pagingNList(pagingNParams);
		return pagingNList;
	}

	public PageDTO pagingNParam(int page) {
		int pageNLimit = 5; // 한 페이지당 보여줄 글 갯수
		// 전체 글 갯수 조회
		int noticeCount = evenNotiBoardRepository.noticeCount();
		// 전체 페이지 갯수 계산
		int maxNPage = (int) (Math.ceil((double) noticeCount / pageNLimit));
		// 시작 페이지 값 계산 
		int startNPage = (((int)(Math.ceil((double) page/ blockNLimit))) -1) * blockNLimit +1;
		// 끝 페이지 값 계산 
		int endNPage = startNPage + blockNLimit -1;
		if(endNPage > maxNPage) {
			endNPage = maxNPage;
		}
		
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPage(page);
		pageDTO.setMaxPage(maxNPage);
		pageDTO.setStartPage(startNPage);
		pageDTO.setEndPage(endNPage);
		return pageDTO;
	}
	
	// =============================================================================== //
	
	// 이벤트 관련 서비스
	// 글 등록 서비스(이벤트)
	public int eventsave(EvenNotiBoardDTO boardDTO) {
		return evenNotiBoardRepository.eventsave(boardDTO);
	}
	
	// 글 목록 서비스(이벤트)
	public List<EvenNotiBoardDTO> findAllEvent() {
		return evenNotiBoardRepository.findAllEvent();
	}
	
	// 글 상세보기 서비스(이벤트)
	public EvenNotiBoardDTO findByIdEvent(Long eventId) {
		return evenNotiBoardRepository.findByIdEvent(eventId);
	}
	
	// 조회수 올라가는 서비스 (이벤트)
	public void updateHitsE(Long eventId) {
		evenNotiBoardRepository.updateHitsE(eventId);
	}
	
	
	// 글 삭제 서비스(이벤트)
	public void deleteEventId(Long eventId) {
		evenNotiBoardRepository.deleteEvent(eventId);
		
	}
	
	// 글 업뎃 서비스(이벤트)
	public void updateEvent(EvenNotiBoardDTO evenNotiBoardDTO) {
		evenNotiBoardRepository.updateEvent(evenNotiBoardDTO);
	}
	
	int blockELimit = 10; // 하단에 보여줄 페이지 번호 갯수
	
	public List<EvenNotiBoardDTO> pagingEList(int page) {
		
		/*
		 	1페이지당 보여지는 글 갯수 3
		 	1page => 0
		 	2page => 3
		 	3page => 6 
		 */
		// 한페이지당 보여주는 갯수 변수 설정
		int pageEStart = 1 + (page-1)*5;
		int pageELimit = 5 * page;
		Map<String, Integer> pagingEParams = new HashMap<>();
		pagingEParams.put("startE",pageEStart);
		pagingEParams.put("limitE", pageELimit);
		List<EvenNotiBoardDTO> pagingEList = evenNotiBoardRepository.pagingEList(pagingEParams);
		return pagingEList;
	}

	public PageDTO pagingEParam(int page) {
		int pageELimit = 5; // 한 페이지당 보여줄 글 갯수
		// 전체 글 갯수 조회
		int eventCount = evenNotiBoardRepository.eventCount();
		// 전체 페이지 갯수 계산
		int maxEPage = (int) (Math.ceil((double) eventCount / pageELimit));
		// 시작 페이지 값 계산 (1, 4, 7, 10, ~~~)
		int startEPage = (((int)(Math.ceil((double) page/ blockELimit))) -1) * blockELimit +1;
		// 끝 페이지 값 계산 (3, 6, 9, 12, ~~~)
		int endEPage = startEPage + blockELimit -1;
		if(endEPage > maxEPage) {
			endEPage = maxEPage;
		}
		
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageE(page);
		pageDTO.setMaxPageE(maxEPage);
		pageDTO.setStartPageE(startEPage);
		pageDTO.setEndPageE(endEPage);
		return pageDTO;
	}



	
	
	


	
}
