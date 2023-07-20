<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<!-- Countdown css   -->
<link href="/resources/css/flipTimer.css" rel="stylesheet">

<!-- NavBar 관련 링크 -->
<link href="/resources/css/Header_nav.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script> 로 호환가능하여 주석 처리함
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>-->



<!-- 예인 하위 세개 오류게시판 js, css   -->

<link href="/resources/css/yea_modify.css" rel="stylesheet">
<link href="/resources/css/yea_get.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>
	
<!-- 예인 하위 세개 오류게시판 js, css 끝 -->	
	
	
	
<!-- Favicons -->
<link href="/resources/images/favicon.png" rel="icon">
<link href="/resources/images/apple-touch-icon.png" rel="apple-touch-icon">


<!-- Vendor CSS Files -->
<link href="/resources/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="/resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="/resources/vendor/remixicon/remixicon.css" rel="stylesheet">


<!--bootstrap Css Files-->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!-- index에 들어가는 css -->
<link href="/resources/css/lang_style.css" rel="stylesheet">
<link href="/resources/css/teach.css" rel="stylesheet">
<link href="/resources/css/review.css" rel="stylesheet">

<!-- Carousel 플러그인 기본 스타일 시트 연결 -->
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<!-- Carousel 플러그인에서 내비게이션을 사용하기 위한 스타일 시트 -->
<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
<!-- Carousel csss => 강의영상에서 추가함  -->
<link rel="stylesheet" href="/resources/css/jquery.bxslider.min.css">
<!--[if lt IE9]>
<script src="js/html5shiv.js"></script>
<![endif]-->

<!-- footer css -->
<link rel="stylesheet" href="/resources/css/footer.css">
<link href='//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet'/>
<!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script> -->
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

<link href="/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    
<!-- noticeBoard css -->
<link href="/resources/css/noticsEvent.css" rel="stylesheet">

<!-- 글쓰기(save) css -->
<link href="/resources/css/save.css" rel="stylesheet">

<!-- location css -->
<link rel="stylesheet" href="/resources/css/location.css">

<!-- video css -->
<link rel="stylesheet" href="/resources/css/video.css">

<!-- 자주묻는 질문 관련 -->
<link rel="stylesheet" href="/resources/css/oftenqna.css">
<script src="/resources/js/oftenqna.js" defer type="text/javascript"></script>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<!-- 팝업 css -->
<link rel="stylesheet" href="/resources/css/popup2.css">
<script src="/resources/js/jquery.cookie.js"></script>

<!-- login 모달 link-->
<link rel="stylesheet" href="/resources/css/login.css">
<link href="/resources/vendor/bootstrap/css/bootstrap.css">

<!-- 회원가입 css -->
<link href="/resources/css/signup.css" rel="stylesheet">

<!-- 관리자 페이지 css -->
<link href="/resources/css/adminPage.css" rel="stylesheet">


<!-- 상품상세페이지 css -->
<link rel="stylesheet" href="/resources/css/style-product.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<!-- 챗봇 -->
<script> 
(function(){var w=window;if(w.ChannelIO){return w.console.error("ChannelIO script included twice.");}var ch=function(){ch.c(arguments);};ch.q=[];ch.c=function(args){ch.q.push(args);};w.ChannelIO=ch;function l(){if(w.ChannelIOInitialized){return;}w.ChannelIOInitialized=true;var s=document.createElement("script");s.type="text/javascript";s.async=true;s.src="https://cdn.channel.io/plugin/ch-plugin-web.js";var x=document.getElementsByTagName("script")[0];if(x.parentNode){x.parentNode.insertBefore(s,x);}}if(document.readyState==="complete"){l();}else{w.addEventListener("DOMContentLoaded",l);w.addEventListener("load",l);}})(); ChannelIO('boot', { "pluginKey": "6d00b3ba-82d7-45c5-bb76-82cb19ed65c5" }); 
</script>


</head>
<body>
<!-- navbar 시작 -->
<Hedaer class="header1">
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <a class="nav_logo" href="/"><img class="logo_img" src="/resources/img/main_logo3_.png"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon bg-light"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                  <a class="nav-link text-white" href="/study/study">강의영상</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link text-white" href="/#trainers">강사소개</a>
              </li>
              <li class="nav-item">
                  <a class="nav-link text-white" href="../noticeEventBoard/noticeEvent">공지사항</a>
              </li>
              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    커뮤니티
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#">자유게시판</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="../oftenQnA/oftenQnA">자주묻는질문</a></li>
                    <li><a class="dropdown-item" href="../board/list">건의사항</a></li>
                    <li><a class="dropdown-item" href="../board/yea_list">오류(Error)게시판</a></li>
                  </ul>
              </li>
              <li class="nav-item">
                  <a class="nav-link text-white" href="../location/location">오시는길</a>
              </li>
            </ul>
        </div>
      </div>
  </nav>
  <c:if test="${member == null }">
   <div class="nav_btn">
      <button type="button" class="btn btn-light nav_login"  data-bs-toggle="modal" data-bs-target="#staticBackdrop">
      <a>로그인</a></button>
        <!-- Modal -->
   <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <img class="login_img" src="/resources/img/login_img.png">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
       </div>
       <form class="login_form" method="post">
          <div class="modal-body">
            <input type="text" class="form-control" id="input_id" name="memberId" placeholder="아이디를 입력해주세요.">
          </div>
          <div class="modal-body">
            <input type="password" class="form-control" id="input_pw" name="memberPassword" placeholder="비밀번호를 입력해주세요.">
          </div>
        

          <div class="modal-footer">
          	<input type="button" class="btn btn-login " id="login_btn"  value="로그인"/>
          </div>
        </form>
      </div>
    </div> 
  </div>
      <button class="btn_signup btn btn-warning"><a href="/signup/signup">회원가입</button></a>
  </div>

  </c:if>
    <c:if test="${member != null}">
	    <div class="nav_btn">
	      <button type="button" class="btn btn-light nav_login"  data-bs-toggle="modal" data-bs-target="#staticBackdrop">
	      <a class="notiEvenATag" href="/signup/logout.do">로그아웃</a></button>
	      <c:if test="${member.adminCk == 0}">
		      <button type="button" class="btn btn-light nav_login"  data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		      <a>장바구니</a></button>
	      </c:if>
   	      <c:if test="${member.adminCk == 1}">
		      <button type="button" class="btn btn-light nav_login"  data-bs-toggle="modal" data-bs-target="#staticBackdrop">
		      <a class="notiEvenATag" href="/admin/adminMain">관리자페이지</a></button>
	      </c:if>
	    </div>
    </c:if>
 
 
</Hedaer>

 <!-- navbar 끝 -->
