<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>

   <div class="board_e_n container">
      <ul class="nav nav-tabs" id="myTab" role="tablist">
         <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true"><a class="paging_ATag" href="../noticeEventBoard/noticeEvent">공지사항</a></button>
         </li>
         <li class="nav-item" role="presentation">
            <button class="nav-link " id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false"><a class="paging_ATag" href="../noticeEventBoard/noticeEvent2">이벤트</a></button>
         </li>
      </ul>
      <div class="tab-content" id="myTabContent">
         <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <table class="board_table table table-hover">
               <tr>
                  <th class="board_bno">번호</th>
                  <th class="board_title">제목</th>
                  <th class="board_writer">작성자</th>
                  <th class="board_date">날짜</th>
                  <th class="board_hits">조회수</th>
               </tr>
               <c:forEach items="${noticeList}" var="noticeEL">
	               <tr>
	                  <td class="board_bno">${noticeEL.noticeId}</td>
	                  <td class="board_title">
	                  	<a class="notiEvenATag notice_font" href="/noticeEventBoard/noticeBoard?NTid=${noticeEL.noticeId}&nPage=${noticePaging.page}">${noticeEL.noticeBoardTitle}</a>
	                  </td>
	                  <td class="board_writer">${noticeEL.noticeBoardWriter}</td>
	                  <td class="board_date"><fmt:formatDate value="${noticeEL.noticeBoardCreatedTime}" pattern="yyyy-MM-dd" /></td>
	                  <td class="board_hits">${noticeEL.noticeBoardHits}</td>
	               </tr>
               </c:forEach>
            </table>
         </div>
      </div>
      <div style="text-align:center;">
	    <c:choose>
	        <%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
	        <c:when test="${noticePaging.page<=1}">
	            <span>[이전]</span>
	        </c:when>
	        <%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
	        <c:otherwise>
	            <a class="paging_ATag" href="/noticeEventBoard/noticeEvent?nPage=${noticePaging.page-1}">[이전]</a>
	        </c:otherwise>
	    </c:choose>
	
	    <%--  for(int i=startPage; i<=endPage; i++)      --%>
	    <c:forEach begin="${noticePaging.startPage}" end="${noticePaging.endPage}" var="i" step="1">
	        <c:choose>
	            <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>
	            <c:when test="${i eq noticePaging.page}">
	                <span>${i}</span>
	            </c:when>
	
	            <c:otherwise>
	                <a class="paging_ATag" href="/noticeEventBoard/noticeEvent?nPage=${i}">${i}</a>
	            </c:otherwise>
	        </c:choose>
	    </c:forEach>
	
	    <c:choose>
	        <c:when test="${noticePaging.page>=noticePaging.maxPage}">
	            <span>[다음]</span>
	        </c:when>
	        <c:otherwise>
	                <a class="paging_ATag" href="/noticeEventBoard/noticeEvent?nPage=${noticePaging.page+1}">[다음]</a>
	        </c:otherwise>
	    </c:choose>
      </div>
      <c:if test="${member.adminCk == 1}">
      <button><a class="notiEvenATag" href="/noticeEventBoard/noticeEventsave">글작성(notics)</a></button>
      </c:if>
   </div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>