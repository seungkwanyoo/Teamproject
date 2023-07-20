<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="/WEB-INF/views/include/Header.jsp" %>
<style>
<style type="text/css">
.input_wrap{
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 200px;
    font-size: 15px;
    padding: 10px;
}
.btn{
  	display: inline-block;
    font-size: 22px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
    width: 140px;
    height: 41px;
    line-height: 39px;
    text-align : center;
    margin-left : 30px;
    cursor : pointer;
}
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}
.reply_button_wrap{
	padding-left : 80px;
	margin-top : 50px;
}

</style>
</head>
<body>
<h1>조회 페이지</h1>
<div class="input_wrap">
		<label>게시판 번호</label>
		<input name="bno" readonly="readonly" value='<c:out value="${pageInfo.bno}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 제목</label>
		<input name="title" readonly="readonly" value='<c:out value="${pageInfo.title}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 내용</label>
		<textarea rows="3" name="content" readonly="readonly"><c:out value="${pageInfo.content}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="writer" readonly="readonly" value='<c:out value="${pageInfo.writer}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 등록일</label>
		<input name="regdater" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.regdate}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 수정일</label>
		<input name="updateDate" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.updateDate}"/>' >
	</div>		
	<div class="btn_wrap">
		<a class="btn" id="list_btn">목록 페이지</a> 
		<a class="btn" id="modify_btn">수정 하기</a>
	</div>
	
	
	<form id="infoForm" action="/board/modify" method="get">
		<input type="hidden" id="bno" name="bno" value='<c:out value="${pageInfo.bno}"/>'>
		<input type="hidden" name="pageNum" value="${cri.pageNum }">
        <input type="hidden" name="amount" value="${cri.amount }"> 
        <input type="hidden" name="keyword" value="${cri.keyword }">
	</form>
<script>
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/board/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/board/modify");
		form.submit();
	});
	
	
	var bnoValue = '<c:out value="${board.bno}"/>';
	
	replyService.add({
		reply : "js test",
		replyer : "tester",
		bno : bnoValue
	}, function(result){
		alert("result: " + result);
	});
	 // 게시글을 읽을때 자동으로 댓글 1개 등록.
	 
	 
	 
	 var bnoValue = '<c:out value="${board.bno}"/>';
		
		/* 기존에 테스트하던 코드는 주석처리 */
		/* replyService.add({
			reply : "js test",
			replyer : "tester",
			bno : bnoValue
		}, function(result){
			alert("result: " + result);
		}); */
		 // 게시글을 읽을때 자동으로 댓글 1개 등록.
		 
		var modal = $("#myModal");
		// 덧글 용 모달.
		var modalInputReplydate = modal.find("input[name='replyDate']");
		// 덧글 작성일 항목.
		var modalRegisterBtn = $("#modalRegisterBtn");
		// 모달에서 표시되는 덧글쓰기 버튼.
		var modalInputReply = modal.find("input[name='reply']");
		// 덧글 내용
		var modalInputReplyer = modal.find("input[name='replyer']"); 
		// 덧글작성자
		
		// 덧글 입력 모달창 보이기
		$("#addReplyBtn").on("click", function(e){
			// 덧글 쓰기 버튼을 클릭한다면,
			modal.find("input").val("");
			// 모달의 모든 입력창을 초기화
			modalInputReplydate.closest("div").hide();
			// closest : 선택 요소와 가장 가까운 요소를 지정.
			// 즉, modalInputReplyDate 요소의 가장 가까운 div를 찾아서 숨김.(날짜창 숨김)
			modal.find("button[id != 'modalCloseBtn']").hide();
			// 모달창에 버튼이 4개 인데, 닫기 버튼을 제외하고 숨기기.
			modalRegisterBtn.show(); // 등록 버튼은 보여라.
			$("#myModal").modal("show"); // 모달 표시.
		});
		
		// 모달창 닫기
		$("#modalCloseBtn").on("click", function(e){
			modal.modal("hide");
			// 모달 닫기 라는 버튼을 클릭한다면 모달창을 숨김.
		});
		
		// 덧글 쓰기
		modalRegisterBtn.on("click", function(e){
			// 덧글 등록 버튼을 눌렀다면,
			var reply = {
					reply : modalInputReply.val(),
					replyer : modalInputReplyer.val(),
					bno : bnoValue
			}; // ajax로 전달할 reply 객체 선언 및 할당.
			replyService.add(reply, function(result){
				alert(result);
				// ajax 처리후 결과 리턴.
				modal.find("input").val("");
				// 모달창 초기화
				modal.modal("hide"); // 모달창 숨기기
				
				// 덧글 작성 즉시 목록 갱신용 함수 호출.
				showList(-1);
				// -1 이나 99나 현재는 영향이 없지만 차후 덧글의 페이징 처리에서 -1 사용 
			});
		});
		
		// 덧글 목록 보이기.
		replyService.getList({
			bno : bnoValue,
			page : 1
		}, function(list){
			for(var i=0, len = list.length || 0; i<len; i++){
				console.log(list[i]);
			}
		});
		
var replyUL = $(".chat");
		
		function showList(page){
			replyService.getList(
					{
						bno : bnoValue,
						page : page || 1
					},
					// 익명함수 : 이름이 없으며 즉시 실행
					function(list) {
						var str = "";
						
						if (list ==null || list.length == 0 ){
							replyUL.html("");
							return;
						} // 목록이 없을때 처리 끝.
						
						for (var i = 0, len = list.length || 0; i<len; i++){
							str += "<li class='left ";
							str += "clearfix' data-rno='";
							str += list[i].rno+"'>";
							str += "<div><div class='header' ";
							str += "><strong class='";
							str += "primart-font'>";
							str += list[i].replyer+ "</strong>";
							str += "<small class='float-sm-right '>";
							str += replyService.displayTime(list[i].replyDate)
								+ "</small></div>";
							str += "<p>" + list[i].reply;
							str += "</p></div></li>";
						}
						replyUL.html(str);
						str += replyService.displayTime(list[i].replyDate)
								+ "</small></div>";
					}); // end
		} // end_showlist
		showList(1);
		// 덧글 목록 표시 끝
	
		
		var modalModBtn=$("#modalModBtn");
		var modalRemoveBtn = $("#modalRemoveBtn");
		// 댓글 정보 확인
        $(".chat").on("click", "li", function(e){
            // 클래스 char 을 클릭하는데, 하위 요소가 li라면,
            var rno = $(this).data("rno");
            // 덧글에 포함된 값들 중에서 rno를 추출하여 변수 할당.
            console.log(rno);
            
            replyService.get(rno,function(reply){
                modalInputReply.val(reply.reply);
                modalInputReplyer.val(reply.replyer);
                modalInputReplyDate.val(replyService.displayTime(reply.replyDate))
                        .attr("readonly", "readonly");
                // 댓글 목록의 값들을 모달창에 할당.
                modal.data("rno", reply.rno);
                // 표시되는 모달창에 rno 라는 이름으로 data-rno를 저장.
                modal.find("button[id != 'modalCloseBtn']").hide();
                modalModBtn.show();
                modalRemoveBtn.show();
                // 버튼 보이기 설정.
                $("#myModal").modal("show");
            }); // 끝_덧글 읽기.
        });
</script>
<div>
    <p>
        <label>댓글 작성자</label> <input type="text">
    </p>
    <p>
        <textarea rows="5" cols="50"></textarea>
    </p>
    <p>
        <button type="button">댓글 작성</button>
    </p>
</div>








<!-- 덧글 목록 시작 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i>덧글
				<button id="addReplyBtn" class="btn btn-primary btn-xs float-right">새 덧글</button> 
			</div>
			<br>
			<div class="panel-body">
				<ul class="chat">
					<li>good</li>
				</ul>
			</div>
			<div class="panel-footer"></div>
		</div>
	</div>
</div>
<!-- 덧글 목록 끝 -->

<!-- 덧글 작성용 모달 시작 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">덧글창</h5>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>덧글</label><input class="form-control" name="reply" value="새 덧글">
				</div>
				<div class="form-group">
					<label>작성자</label><input class="form-control" name="replyer" value="replyer">
				</div>
				<div class="form-group">
					<label>덧글 작성일</label><input class="form-control" name="replyDate" value="">
				</div>
			</div>
			<div class="modal-footer">
				<button id="modalModBtn" type="button" class="btn btnwarning">수정</button>
				<button id="modalRemoveBtn" type="button" class="btn btndanger">삭제</button>
				<button id="modalRegisterBtn" type="button" class="btn btnprimary">등록</button>
				<button id="modalCloseBtn" type="button" class="btn btndefault">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 덧글 작성 모달 끝 -->	
<%@include file="/WEB-INF/views/include/footer.jsp" %>