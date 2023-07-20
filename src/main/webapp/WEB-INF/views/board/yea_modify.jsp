<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/Header.jsp" %>
	

	<h1>조회 페이지</h1>
	<form id="modifyForm" action="/board/yea_modify" method="post">
		<div class="input_wrap">
			<label>게시판 번호</label> <input name="bno" readonly="readonly"
				value='<c:out value="${pageInfo.bno}"/>'>
		</div>
		<div class="input_wrap">
			<label>게시판 제목</label> <input name="title" 
				value='<c:out value="${pageInfo.title}"/>'>
		</div>
		<div class="input_wrap">
			<label>게시판 내용</label>
			<textarea rows="3" name="content"><c:out
					value="${pageInfo.content}" /></textarea>
		</div>
		<div class="input_wrap">
			<label>게시판 작성자</label> <input name="writer" readonly="readonly"
				value='<c:out value="${pageInfo.writer}"/>'>
		</div>
		<div class="input_wrap">
			<label>게시판 등록일</label> <input name="regdater" readonly="readonly"
				value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>'>
		</div>
		<div class="input_wrap">
			<label>게시판 수정일</label> <input name="updateDate" readonly="readonly"
				value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>'>
		</div>
		<div class="btn_wrap">
	        <a class="btn" id="list_btn">목록 페이지</a> 
	        <a class="btn" id="modify_btn">수정 완료</a>
	        <a class="btn" id="cancel_btn">수정 취소</a>
	        <a class="btn" id="delete_btn">삭제</a>		
	    </div>
	</form>
	<form id="infoForm" action="/board/yea_modify" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="keyword" value="${cri.keyword}"  placeholder="주제의 검색어를 입력하세요">
	</form>
	

	<script>
	var form = $("#infoForm");   	//페이지 이동 form(리스트 페이지이동, 조회 페이지 이동)
	var mForm =$("#modifyForm");   //페이지 데이터 수정 form
	
	
	//목록페이지 이동 버튼
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/board/yea_list");
		form.submit();
	});
	
	//수정하기 버튼
	$("#modify_btn").on("click", function(e){
		mForm.submit();
	});
	
	//삭제버튼 구동
	    $("#delete_btn").on("click", function(e){
        form.attr("action", "/board/yea_delete");
        form.attr("method", "post");
        form.submit();
    });
	
	//취소 버튼
	$('#cancel_btn').on("click", function (e) {
		form.attr("action", "/board/yea_get");
		form.submit();
	});	
</script>

<%@include file="/WEB-INF/views/include/footer.jsp" %>
