package org.zerock.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EvenNotiBoardDTO {
	
	// 공지사항 관련 필드 설정 
	private Long noticeId;
	private String noticeBoardWriter;
	private String noticeBoardTitle;
	private String noticeBoardContents;
	private Timestamp noticeBoardCreatedTime;
	private int noticeBoardHits;
	
	// 이벤트 관련 필드 설정
	private Long eventId;
	private String eventBoardWriter;
	private String eventBoardTitle;
	private String eventBoardContents;
	private Timestamp eventBoardCreatedTime;
	private int eventBoardHits;
	
	
}
