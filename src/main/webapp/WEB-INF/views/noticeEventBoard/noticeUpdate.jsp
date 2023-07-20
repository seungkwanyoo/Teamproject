<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>

	<form action="/noticeEventBoard/noticeUpdate" method="post" style="margin:0 auto; width:50%; text-align: center">
		<h2 style="color:black">공지사항 글작성</h2>
		<div>
			<h5>글번호</h5>
			<input type="hidden" name="noticeId" value="${NoticeUp.noticeId}" readonly="readonly" class="save_input" />
			<span>${NoticeUp.noticeId}</span>
		</div>
		<div>
			<h5>제목</h5>
			<input type="text" name="noticeBoardTitle" value="${NoticeUp.noticeBoardTitle}" class="save_input"  />
		</div>
		<div>
			<h5>작성자</h5>
			<input type="text" name="noticeBoardWriter" value="${NoticeUp.noticeBoardWriter}" readonly="readonly" class="save_input"  />
		</div>
		<div>
			<h5>내용</h5>
			<textarea class="save_input" id="" cols="20" rows="15" name="noticeBoardContents">${NoticeUp.noticeBoardContents}</textarea>
		</div>
		<input type="submit" value="보내기" class="save_input" />
	</form>

<%@include file="/WEB-INF/views/include/footer.jsp" %>