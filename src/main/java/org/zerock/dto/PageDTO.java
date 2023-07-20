package org.zerock.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageDTO {
	
	// 공지사항 페이징 관련
	private int page; // 현재 페이지
	private int maxPage; // 전체 필요한 페이지 갯수
	private int startPage; // 현재 페이지 기준 시작 페이지 값 
	private int endPage; // 현재 페이지 기준 마지막 페이지 값
	
	// 이벤트 페이징 관련
	private int pageE; // 현재 페이지
	private int maxPageE; // 전체 필요한 페이지 갯수
	private int startPageE; // 현재 페이지 기준 시작 페이지 값 
	private int endPageE; // 현재 페이지 기준 마지막 페이지 값
	
	
}
