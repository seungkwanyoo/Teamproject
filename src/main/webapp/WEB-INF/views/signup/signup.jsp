<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>


<div class="container signup_container">
   <div class="input-form-backgroud row">
      <div class="input-form col-md-8 mx-auto">
         <h4 class="mb-3">회원가입</h4>
         <form id="join_form" method="post">
         <div class="row">
            <div class="mb-3">
               <label for="name">아이디</label>
               <input type="text" class="form-control" name="memberId" id="memberId" placeholder="id" value="" >
               <span class="invalid-feedback id_ck">아이디를 입력해주세요.</span>
               <span class="id_ck1">사용 가능한 아이디 입니다.</span>
               <span class="id_ck2">아이디가 이미 존재합니다.</span>
            </div>
            <div class="mb-3">
               <label for="nickname">비밀번호</label>
               <input type="password" class="form-control" name="memberPassword" id="memberPassword" placeholder="password" value="" >
               <div class="invalid-feedback pw_ck">비밀번호를 입력해주세요.</div>
            </div>
            <div class="mb-3">
               <label for="name">이름</label>
               <input type="text" class="form-control" name="memberName" id="memberName" placeholder="name" value="" >
               <div class="invalid-feedback">
               이름을 입력해주세요.
               </div>
            </div>
            <div class="mb-3">
               <label for="nickname">비밀번호 확인</label>
               <input type="password" class="form-control memberPwCk" name="memberPwCk" id="memberPwCk" placeholder="password" value="" >
               <span class="pw_ck_ck">비밀번호 확인을 입력해주세요</span>
               <span class="invalid-feedback pw_ck_ck1">비밀번호가 일치합니다</span>
               <span class="invalid-feedback pw_ck_ck2">비밀번호가 일치하지않습니다</span>
            </div>
         </div>

         <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" name="memberEmail" id="memberEmail" placeholder="you@example.com" >
            <div class="invalid-feedback email_ck">이메일을 입력해주세요.</div>
          </div>

         <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="form-control" name="memberAdress" id="memberAdress" placeholder="주소를 입력해주세요." >
            <div class="invalid-feedback adress_ck">주소를 입력해주세요.</div>
          </div>

         <input type="button" onclick="sample6_execDaumPostcode()" value="주소찾기" />
         <div class="mb-3">
            <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요.">
         </div>     
         <hr class="mb-4">
         <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
         </div>
         <div class="mb-4"></div>
         <input class="btn btn_signup2 btn-warning btn-lg btn-block signup_btn" type="button" value="가입완료"/>
         </form>
      </div>
   </div>
   <div class="my-3 text-center text-small">
      <p class="mb-1 foot_p">&copy; ONECOIN</p>
   </div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>