package org.zerock.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EvenNotiReplyDTO {
	
	// 공지사항 댓글 필드 (테이블)
	private Long commentNId;
	private String commentNWriter;
	private String commentNContents;
	@JsonFormat(pattern= "yyyy-MM-dd", timezone = "Asia/Seoul")
	private Timestamp commentNCreatedTime;
	private Long noticeId;

	
}
