<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/Header.jsp" %>

	<!-- Contact Start -->
	<form action="/board/yea_enroll" method="post">
		<div class="container-fluid pt-5">
			<div class="container">
				<div class="text-center pb-2">
					<p class="section-title px-5">
						<span class="px-2 span_yea">세상의 모든 오류 여기있습니다</span>
					</p>
					<h1 class="mb-4 h_yea">게시판 등록</h1>
				</div>
				<div class="row">
						<div class="contact-form">
							<div id="success"></div>
							<form name="sentMessage" id="contactForm" novalidate="novalidate">
								<div class="control-group">
									<input name="title" type="text" class="form-control" 
										placeholder="여기에 제목을 적으세요" required="required"
										data-validation-required-message="Please enter title" />
									<p class="help-block text-danger"></p>
								</div>	
								<div class="control-group">
									<input name="writer" type="text" class="form-control"
										id="subject" placeholder="작성자를 기입하세요" required="required"
										data-validation-required-message="Please enter your name" />
									<p class="help-block text-danger"></p>
								</div>
								<div class="control-group">
									<textarea name="content" class="form-control" rows="10"
										id="message" placeholder="내용을 입력하세요" required="required"
										data-validation-required-message="Please enter content"></textarea>
									<p class="help-block text-danger"></p>
								</div>
								<div>
									<button class="btn btn-outline-warning">등록하기!!!</button>
								</div>
							</form>
						</div>
				</div>
			</div>
		</div>
	</form>
	<!-- Contact End -->
	

<%@include file="/WEB-INF/views/include/footer.jsp" %>