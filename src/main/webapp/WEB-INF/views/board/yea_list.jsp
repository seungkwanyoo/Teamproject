<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/Header.jsp" %>

<h1>게시글 목록페이지입니다!</h1>
<a href="/board/yea_enroll" class="top_btn link-warning">게시글 등록</a>
<div class="table_wrap ">
	<table class="table table-warning table-hover">
		<thead>
			<tr class="table-primary">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
		</thead>
			<c:forEach items="${yea_list}" var="list" >
            <tr>
                <td class="table-success"><c:out value="${list.bno}"/></td>
                <td>
                <a class="move " href='<c:out value="${list.bno}"/>'>
                        <c:out value="${list.title}"/>
                </a>
                </td>
                <td><c:out value="${list.writer}"/></td>
        	    <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.regdate}"/></td>
                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updateDate}"/></td>

            </tr>
        </c:forEach>
	</table>
	
    <div class="input-group mb-3">
        <div class="search_area input-group mb-">
            <input type="text" class="form-control" name="keyword" value="${yea_pageMaker.cri.keyword }" placeholder="주제의 검색어를 입력하세요">
            <button class="btn btn-outline-success">검색</button>
        </div>
    </div>
    	
	<div class="pageInfo_wrap" >
        <div class="pageInfo_area">
 			<ul id="pageInfo" class="pageInfo pagination">
                <!-- 이전페이지 버튼(prev) -->
                <c:if test="${yea_pageMaker.prev}">
                    <li class="pageInfo_btn page-item ">
                    	<a class="page-link" href="${yea_pageMaker.startPage - 1 }">이전페이지</a>
                    </li>
                </c:if>
                
                <!-- 각 번호 페이지 버튼 -->
                <c:forEach var="num" begin="${yea_pageMaker.startPage}" end="${yea_pageMaker.endPage}">
                    <li class="pageInfo_btn  ${yea_pageMaker.cri.pageNum == num ? "active" : ""}">
                    	<a class="page-link" href="${num}"> ${num} </a>
                    </li>
                </c:forEach>

                 			
                <!-- 다음페이지 버튼(next) -->
                <c:if test="${yea_pageMaker.next}">
                    <li class="pageInfo_btn page-item ">
                    	<a class="page-link" href="${yea_pageMaker.endPage + 1 }">다음페이지</a>
                    </li>
                </c:if>                 
 			</ul>
        </div>
    </div>
    
    <form id="moveForm" method="get">
    	<input type="hidden" name="pageNum" value="${yea_pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${yea_pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${yea_pageMaker.cri.keyword }">            
    </form>
 
</div>
<script>
$(document).ready(function(){
    var result = '<c:out value="${result}"/>';
    
    checkAlert(result);
    
    function checkAlert(result){
        
        if(result === ''){
            return;
        }
        if(result === "enroll success"){
            alert("<등록>이 완료되었습니다.");
        }
        if(result === "modify success"){
            alert("@@수정@@이 완료되었습니다!");
	    }
        if(result === "delete success"){
            alert("삭제가 완료되었습니다.");
        }
        
    }   
});

var moveForm = $("#moveForm");

$(".move").on("click", function(e){
    e.preventDefault();
    
    moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
    moveForm.attr("action", "/board/yea_get");
    moveForm.submit();
});


$(".pageInfo a").on("click", function(e){
    e.preventDefault();
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.attr("action", "/board/yea_list");
    moveForm.submit(); 
    
});


//검색창 제목검색	 자바스크립트
$(".search_area button").on("click", function(e){
    e.preventDefault();
	var val=$("input[name='keyword']").val();
    moveForm.find("input[name='keyword']").val(val);
    moveForm.find("input[name='pageNum']").val(1);
    moveForm.submit();
});
</script>

<!-- JavaScript Bundle with Popper -->
<!--     Bootstrap   end       -->


<%@include file="/WEB-INF/views/include/footer.jsp" %>
