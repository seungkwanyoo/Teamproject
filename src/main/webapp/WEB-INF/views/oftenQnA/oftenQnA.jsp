<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>

<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators" style="margin-bottom: -6rem;">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
      aria-current="false" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
      aria-label="Slide 2"></button>
  </div>
  <img src="/resources/img/qna_main.png" alt="이미지"  class="qna_top">
  <div class="carousel-inner">
   <div class="qnaboard_kwan2 carousel-item active">


      <h1 id="button">언어는 4개가 다 인가요?</h1>
      <div id="info">
        <p>저희는 초보자들을 위한 강의 사이트입니다. 초보분들께는 4개 언어부터 시작하시길 권해드리고 있습니다.</p>
      </div>
      <br>

      <h1 id="button1">더 나은 강사진은 없나요?</h1>
      <div id="info1">
        <p>저희 강사진은 자부심을 갖고 강의 합니다. 저희를 믿어주세요</p>
      </div>
      <br>

      <h1 id="button2">회원가입은 무료인가요?</h1>
      <div id="info2">
        <p>물론입니다. 어떠한 비용도 들지 않습니다.</p>
      </div>
      <br>

      <h1 id="button3">수강료 할인 받을 수 있는 방법이 있나요?</h1>
      <div id="info3">
        <p> 많은 혜택들이 기다리고 있습니다. 이벤트 페이지를 참조하세요. </p>
      </div>
      <br>

      <h1 id="button4">스케쥴상 강의가 시작되면 추가 할인 못받는건가요?</h1>
      <div id="info4">
        <p> 강의 시작 전 고객님들을 위한 추가 이벤트이기 때문에 강의가 시작되면 <br />추가 할인은 못받으시지만 기본 할인은 받으실 수 있습니다.</p>
      </div>
    </div>
    <div class="qnaboard_kwan2 carousel-item">
      <h1 id="button7">수강 환불은 몇 일부터 가능한가요?</h1>
      <div id="info7">
        <p>3강 미만으로 수강하시거나 7일이내 수강 철회 하시면 환불 가능합니다.</p>
      </div>
      <br>

      <h1 id="button8">강의 기간은 무제한인가요?</h1>
      <div id="info8">
        <p> 한 번 구매시 무제한으로 제공해 드리고 있습니다. </p>
      </div>
      <br>

      <h1 id="button9">스케쥴 이후에도 다른 할인 이벤트가 있나요? </h1>
      <div id="info9">
        <p>많은 이벤트를 계획중에 있습니다. 기대해 주세요</p>
      </div>
      <br>

      <h1 id="button10">수강생들의 리뷰는 믿을만한가요?</h1>
      <div id="info10">
        <p>수강생분들이 직접 작성해 주신 글입니다. 저희는 리뷰를 조작하지 않습니다.</p>
      </div>
      <br>

      <h1 id="button11">ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹㄴㅇㅁㄻㄴ</h1>
      <div id="info11">
        <p> button 클릭 on/off 토글기능 slideToggle </p>
      </div>
      <br>
    </div>

  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
    data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
    data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>