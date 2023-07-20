<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>

	<form action="/noticeEventBoard/noticeEventsave" method="post" class="save_form">
		<h2 style="color:black">공지사항 글작성</h2>
		<div>
			<input type="text" name="noticeBoardWriter" placeholder="작성자" class="save_input" />
		</div>
		<div>
			<input type="text" name="noticeBoardTitle" placeholder="제목" class="save_input" />
		</div>
		<div>
			<textarea name="noticeBoardContents" cols="20" rows="15" placeholder="내용" class="save_input"></textarea>
		</div>
		<input type="submit" value="보내기" class="save_input" />
	</form>

<%@include file="/WEB-INF/views/include/footer.jsp" %>