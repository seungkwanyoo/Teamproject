<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>
	<div style="margin:0 auto; width:50%">
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col" style="width:5%">번호</th>
		      <th scope="col" style="width:24%">제목</th>
		      <th scope="col" style="width:9%">글쓴이</th>
		    </tr>

		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">${NoticeB.noticeId}</th>
		      <td>${NoticeB.noticeBoardTitle}</td>
		      <td>${NoticeB.noticeBoardWriter}</td>
		    </tr>
		    <tr>
		    	<th scope="col" colspan="3">내용</th>
		    </tr>
		    <tr>
		    	<td colspan="3">${NoticeB.noticeBoardContents}</td>
		    </tr>
		  </tbody>
		</table>
      <c:if test="${member != null}">
	      <c:if test="${member.adminCk == 1}">
			<div>
				<button onclick="noticeListBtn()">글목록(notice)</button>
				<button onclick="noticeUpdateBtn()">글수정(notice)</button>
				<button onclick="noticeDeleteBtn()">글삭제(notice)</button>
			</div>
			</c:if>
		</c:if>
		<hr>
			<!-- Button trigger modal -->
	      	<c:if test="${member != null}">
				<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				  댓글입력
				</button>
			</c:if>
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <form name="NReplyForm" id="NReplyForm">
				      <div class="modal-body">
				      	<input type="hidden" name="NTid" id="NTid" value="${NoticeB.noticeId}" />
				      	<label for="exampleFormControlInput1 notice_R_writer" class="form-label">작성자</label>
				        <input type="text" class="form-control"  id="commentNWriter" name="commentNWriter" placeholder="댓글작성자" />
				        <label for="exampleFormControlTextarea1 notice_R_contents" class="form-label">댓내용</label>
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="1" name="commentNContents" placeholder="댓글내용"></textarea>
				      </div>
			      <div class="modal-footer">
			        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
			        <button type="button" class="btn btn-primary notice_Reply_Btn" onclick="commentNWrite()">댓글등록</button>
			      </div>
			      </form>
			    </div>
			  </div>
			</div>

			<div class="NReplyList" id="NReplyList">
				
			</div>		

		</div>
	

<%@include file="/WEB-INF/views/include/footer.jsp" %>












