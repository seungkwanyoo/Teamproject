package org.zerock.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
	
	// DB에 저장된 TABLE 값 필드로 선언
	private Long memberNum;			// 멤버번호
	private String memberId;		// 사용자의 아이디
	private String memberPassword; // 사용자의 비밀번호
	private String memberName;  // 사용자의 이름
	private String memberPwCk; // 사용자의 비밀번호 확인
	private String memberEmail; // 사용자의 이메일주소
	private String memberAdress; // 사용자의 주소 
	private String adminCk; // 사용자가 관리자인지 일반 사용자인지 체크
}
