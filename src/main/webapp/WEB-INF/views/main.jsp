<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>


<!-- 팝업 시작 -->
<div id="notice_wrap">
  <p class="closeWrap">
    <!--     ----------------------------      yea ------------------ -->
    <section class="section" id="schedule">
      <div class="container">
        <div class="section-heading dark-bg">
          <h2 class="h2_yea">Classes <em>Schedule</em></h2>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="filters">
              <ul class="schedule-filter">
                <li class="active" data-tsfilter="monday">Monday</li>
                <li data-tsfilter="tuesday">Tuesday</li>
                <li data-tsfilter="wednesday">Wednesday</li>
                <li data-tsfilter="thursday">Thursday</li>
                <li data-tsfilter="friday">Friday</li>
              </ul>
            </div>
          </div>
          <div class="col-lg-10 offset-lg-1">
            <div class="schedule-table filtering">
              <table>
                <tbody>
                  <tr>
                    <td class="day-time">김재동T</td>
                    <td class="monday ts-item show" data-tsmeta="monday">10:00AM - 11:30AM</td>
                    <td class="tuesday ts-item" data-tsmeta="tuesday">2:00PM - 3:30PM</td>
                    <td>BACKEND-JAVA</td>
                  </tr>
                  <tr>
                    <td class="day-time">유승관T</td>
                    <td class="friday ts-item" data-tsmeta="friday">10:00AM - 11:30AM</td>
                    <td class="thursday friday ts-item" data-tsmeta="thursday" data-tsmeta="friday">2:00PM - 3:30PM</td>
                    <td>BACKEND-SPRING</td>
                  </tr>
                  <tr>
                    <td class="day-time">차승혁T</td>
                    <td class="tuesday ts-item" data-tsmeta="tuesday">10:00AM - 11:30AM</td>
                    <td class="monday ts-item show" data-tsmeta="monday">2:00PM - 3:30PM</td>
                    <td>FRONTEND-HTML</td>
                  </tr>
                  <tr>
                    <td class="day-time">박미르T</td>
                    <td class="wednesday ts-item" data-tsmeta="wednesday">10:00AM - 11:30AM</td>
                    <td class="friday ts-item" data-tsmeta="friday">2:00PM - 3:30PM</td>
                    <td>FRONTEND-JAVASCRIPT</td>
                  </tr>
                  <tr>
                    <td class="day-time">안예인T</td>
                    <td class="thursday ts-item" data-tsmeta="thursday">10:00AM - 11:30AM</td>
                    <td class="wednesday ts-item" data-tsmeta="wednesday">2:00PM - 3:30PM</td>
                    <td>DATABASE-MYSQL</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!----------------yea------------------------->
    <input type="checkbox" name="expiresChk" id="expiresChk">
    <label class="close_yea" for="expiresChk">3일 동안 이 창 열지않기</label>
    <span class="closeBtn">닫기</span>
  </p>
</div>
  <!-- popup 끝 -->

<!-- maincarousel  -->
<div class="wrapper">
  <!-- Carousel의 슬라이드 영역을 지정해 줍니다 -->
  <div class="owl-carousel owl-theme main-carousel">
     <div class="item"><img src="/resources/img/main01_500.png" alt="main"></div>
     <div class="item"><img src="/resources/img/main04_500.png" alt="main"></div>
     <div class="item"><img src="/resources/img/main03_500.png" alt="main"></div>
     <div class="item"><img src="/resources/img/main02_500.png" alt="main"></div>
 </div>
</div>

<!-- 검색창 시작 -->
<section>
  <div class="container mainsearch">
    <p class="search1"><b> 어떤 언어가 궁금하신가요 ?</b></p>
    <div class="search2">
      <input class="search-bar" type="text" placeholder="원하는 강의를 검색해보세요 ❗">
      <button type="button" class="btn search_logo"><img src="/resources/img/search_logo.svg" class="search_img" alt=""></button>
    </div>
    <div class="container">
      <a href="/study/study" class="hashtag">#java</a>
      <a href="/study/study" class="hashtag">#spring</a>
      <a href="/study/study" class="hashtag">#frontend</a>
      <a href="/study/study" class="hashtag">#backend</a>
      <a href="/study/study" class="hashtag">#database</a>
      <a href="/study/study" class="hashtag">#왕초보</a>
    </div>
  </div>
</section>
<!-- 검색창 끝 -->

<!-- ======= 언어 시작 ======= -->
<section id="features" class="features">
  <div class="container">
    <div class="row">
      <div class="flip">
        <div class="card col-lg-3 col-md-4 mt-md-0">
          <div class="icon-box front">
            <img src="/resources/img/spring.svg" class="lang_logo">
            <h3><a href="">SPRING FRAME WORK</a></h3>
          </div>
          <div class="back">
            <h3 class="lang_back_title">SPRING</h3>
            <hr />
            <span class="lang_back"><mark class="lang_mark">자바 플랫폼</mark>을 위한 오픈 소스<br /> 애플리케이션 프레임워크로서
            <br /> 동적인 웹 사이트를 개발하기 위한 <br /> 여러 서비스를 제공하는 프로그램
            </span>
          </div>
        </div>
      </div>
      <div class="flip">
        <div class="card col-lg-3 col-md-4 mt-md-0">
          <div class="icon-box front">
            <img src="/resources/img/java.svg" class="lang_logo">
            <h3><a href="">JAVA</a></h3>
          </div>
          <div class="back">
            <h3 class="lang_back_title">JAVA</h3>
            <hr />
            <span class="lang_back"><mark class="lang_mark">객체 지향적 프로그래밍 언어</mark>로<br /> 현재 웹 애플리케이션 분야에서 많이 <br /> 사용하는 언어로
            안드로이드를 <br />  비롯한 모바일용 개발에도 널리 사용
            </span>
          </div>
        </div>
      </div>
      <div class="flip">
        <div class="card col-lg-3 col-md-4 mt-md-0">
          <div class="icon-box front">
            <img src="/resources/img/mysql.svg" class="lang_logo">
            <h3><a href="">DATABASE</a></h3>
          </div>
          <div class="back">
            <h3 class="lang_back_title">DATA<br class='break-t'>BASE</h3>
            <hr />
            <span class="lang_back">데이터베이스 관리 시스템은 사용자, <br /> 애플리케이션 및 데이터베이스 자체와 <br /> 상호 작용하여 <mark class="lang_mark">데이터를 분석하고 관리</mark>하는 소프트웨어</span>
          </div>
        </div>
      </div>
      <div class="flip">
        <div class="card col-lg-3 col-md-4 mt-md-0">
          <div class="icon-box front">
            <img src="/resources/img/frontend.svg" class="lang_logo2">
            <h3><a href="">FRONTEND</a></h3>
          </div>
          <div class="back">
            <h3 class="lang_back_title">FRONT<br class='break-t'>END</h3>
            <hr />
            <span class="lang_back">사용자가 볼 수 있는 화면으로<br /><mark class="lang_mark">HTML ,CSS 및 JavaScript</mark>를 사용해
            <br />웹 사이트의 그래픽 인터페이스를 <br /> 개발하여 사용자가 상호 작용</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section><!-- 언어 끝 -->

<!--    카운트다운        ----------->

<div class="flipTimer container">

<div class="memobox_yea">
</div>
  <div class="days"></div><span class="time_yea">일</span>
  <div class="hours"></div><span class="time_yea">시간</span>
  <div class="minutes"></div><span class="time_yea">분</span>
  <div class="seconds"></div><span class="time_yea">초</span>
</div>


<!-- ======= 추천강의 시작 ======= -->
<section id="popular-courses" class="courses">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>생초보인 당신을 위해!</h2>
      <p>기초부터? 오히려 좋아 ✨</p>
    </div>

    <div class="row" data-aos="zoom-in" data-aos-delay="100">

      <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
        <div class="course-item">
          <img src="/resources/img/logo4.jpg" class="img-fluid1" alt="...">
          <div class="course-content">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h4>한글자막</h4>
              <p class="price">16,900원</p>
            </div>

            <h3><a href="course-details.html" class="introduce_a">기초부터 시작하는 서버 클론코딩  <br>( Feat . 미르선배 라이징캠프 )</a></h3>
            <p>이 강의는 스프링부트 혹은 노드 js로 개발하는 인스타그램 서버 클론코딩 강의입니다.</p>
            <div class="trainer d-flex justify-content-between align-items-center">
              <div class="trainer-profile d-flex align-items-center">
                <img src="/resources/img/trainers/trainer-1.jpg" class="img-fluid" alt="">
                <span>Mireu Park</span>
              </div>
              <div class="trainer-rank d-flex align-items-center">
                &nbsp;&nbsp;
                <i class="bx bx-heart"></i>&nbsp;165
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
        <div class="course-item">
          <img src="/resources/img/logo2.png" class="img-fluid2" alt="...">
          <div class="course-content">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h4>한글자막</h4>
              <p class="price">25,000원</p>
            </div>

            <h3><a href="course-details.html" class="introduce_a">기본 문법부터 배우는 서버 만들기, 누구나 쉽게 개발부터 배포까지! </a></h3>
            <p>본 강의에서는 Java, Spring, JPA, MySQL, AWS를 이용해 서버를 개발하고 배포합니다.</p>
            <div class="trainer d-flex justify-content-between align-items-center">
              <div class="trainer-profile d-flex align-items-center">
                <img src="/resources/img/trainers/trainer-2.jpg" class="img-fluid" alt="">
                <span>Jeong Jin Kim</span>
              </div>
              <div class="trainer-rank d-flex align-items-center">
                &nbsp;&nbsp;
                <i class="bx bx-heart"></i>&nbsp;142
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
        <div class="course-item">
          <img src="/resources/img/logo3.jpg" class="img-fluid3" alt="...">
          <div class="course-content">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h4>한글자막</h4>
              <p class="price">18,000원</p>
            </div>

            <h3><a href="course-details.html" class="introduce_a">너도 프론트엔드(FrontEnd) 개발자 할 수 있어! 자바스크립트(Javascript) 기초부터!</a></h3>
            <p>프론트엔드, 자바스크립트 기본부터 포트폴리오까지 한번에 끝내기</p>
            <div class="trainer d-flex justify-content-between align-items-center">
              <div class="trainer-profile d-flex align-items-center">
                <img src="/resources/img/trainers/trainer-3.jpg" class="img-fluid" alt="">
                <span>Seung Hyuk Cha</span>
              </div>
              <div class="trainer-rank d-flex align-items-center">
                &nbsp;&nbsp;
                <i class="bx bx-heart"></i>&nbsp;85
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section><!-- 추천강의 끝 -->

<!-- ======= 강사소개 시작 ======= -->
<section id="trainers" class="trainers">
  <div class="container">
    <div class="section-title">
        <h2>믿을 수 있는 베테랑 강사님들과 함께!</h2>
        <p>강사님을 소개합니다! 💪 </p>
    </div>

    <div class="wrapper">
      <!-- Carousel의 슬라이드 영역을 지정해 줍니다 -->
      <div class="owl-carousel owl-theme t-carousel">
        <div class="item">
          <div class="member">
            <img src="/resources/img/trainers/trainer-1.jpg" class="teacher_img" alt="">
            <div class="member-content">
              <h4>Mireu Park</h4>
              <span>프론트엔드 개발자</span>
              <p>
                컴퓨터공학과 석사(운영체제 및 컴파일언어 Lab) <br>
                정보처리기사 자격증 <br>
                웹 프론트 개발 4년
              </p>  
              <div class="social">
                <a href=""><i class="bi bi-twitter"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="member">
            <img src="/resources/img/trainers/trainer-2.jpg" class="teacher_img" alt="">
            <div class="member-content">
              <h4>Jeong Jin Kim</h4>
              <span>백엔드 개발자</span>
              <p>
                직업능력훈련교사 3급  (정보기술개발) 자격증  <br>
                정보처리기사 자격증 <br>
                국비훈련 강의경력 5년차
              </p>
              <div class="social">
                <a href=""><i class="bi bi-twitter"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="member">
            <img src="/resources/img/trainers/trainer-3.jpg" class="teacher_img" alt="">
            <div class="member-content">
              <h4>Seung Hyuk Cha</h4>
              <span>풀스택 개발자</span>
              <p>
                웹 프론트 / 백엔드 개발 8년<br>
                
                정보처리기사 자격증 <br>
  
                국비훈련 강의경력 10년차
              </p>
  
              <div class="social">
                <a href=""><i class="bi bi-twitter"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="member">
            <img src="/resources/img/trainers/trainer-4.jpg" class="teacher_img" alt="">
            <div class="member-content">
              <h4>Jae Dong Kim</h4>
              <span>백엔드 개발자</span>
              <p>
                컴퓨터소프트웨어공학과 박사(백엔드 전문 개발자)  <br>
                
                정보처리기사 자격증 <br>
  
                국비훈련 강의경력 5년차
              </p>
              <div class="social">
                <a href=""><i class="bi bi-twitter"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="member">
            <img src="/resources/img/trainers/trainer-5.jpg" class="teacher_img" alt="">
            <div class="member-content">
              <h4>Yea In Ahn</h4>
              <span>데이터베이스 전문가</span>
              <p>
                빅데이터공학과 석사  <br>
                
                데이터분석 전문가(ADP) 자격증 <br>
  
                빅테이터 분석 경력 5년
              </p>
              <div class="social">
                <a href=""><i class="bi bi-twitter"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
              </div>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="member">
            <img src="/resources/img/trainers/trainer-6.jpg" class="teacher_img" alt="">
            <div class="member-content">
              <h4>Seung Kwan Yoo</h4>
              <span>백엔드 개발자</span>
              <p>
                컴퓨터공학과 석사  <br>
                
                OCBCD(JAVA 고급자격증) <br>
  
                스프링 프레임워크 개발 경력 8년
              </p>  
              <div class="social">
                <a href=""><i class="bi bi-twitter"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</section><!-- 강사소개 끝 -->


  <!-- ======= 후기 시작 ======= -->
<section id="testimonials" class="testimonials">
  <div class="container">
    <section id="trainers" class="trainers">
      <div class="container" data-aos="fade-up">
        <div class="review_title">
          <h2>직접 경험한 고퀄리티 강의!</h2>
          <p>원코인(ONECOIN)을 직접 경험한 분들의 리뷰 !</p>
        </div>
        <div class="slides-3 swiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div> 
                <div class="profile mt-auto">
                  <h3 class="review_font">
                  <img src="/resources/img/review_left.png">기초를 알아간다!<img src="/resources/img/review_right.png"></h3>
                </div>
                <p>
                  비전공자로서 막연히 프로그래밍을 배우고 싶다고 생각했을 때,
                  프로그래밍이란 분야의 영역은 너무나 넓었고 어디서부터 발을 담궈야할지 감조차 잡히지 않았습니다.
         <mark id="review_m">그 때 이 기회를 발견할 수 있었던 것은 정말 대단한 행운이었다고 생각합니다.<mark> 
                </p>
               
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <div class="profile mt-auto">
                  <h3 class="review_font">
                  <img src="/resources/img/review_left.png">유익한 강의 잘 들었습니다<img src="/resources/img/review_right.png"></h3>
                </div>
                <p>
                  혼자서 하는데 시간이 오래 걸렸지만,
                  실습코딩 하나씩 하고 설명확인 하기를 반복하다 보니 어느새 마지막 실습코딩때는<mark id="review_m">재미도 있고 좀 뿌듯합니다.</mark>
                  실습코딩으로 한번 더 실습이 이루어지니 더 알차고 이해도 깊이 있게 된것 같습니다. 감사합니다~^^
                </p>
                
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div> 
                <div class="profile mt-auto">
                  <h3 class="review_font">
                   <img src="/resources/img/review_left.png">이해하기 쉬워요!<img src="/resources/img/review_right.png"></h3>
                </div>
                <p>
                  처음 코딩을 접하는 사람부터,<mark id="review_m"> 개념을 확실히 다잡고 싶은 사람까지 누가 들어도 도움이 될 것 같은 강의였습니다.</mark>
                  조금 난이도가 있다고 느껴질 수도 있으나, 수업을 끝까지 따라간다면 개념을 확실히 잡고 갈 수 있을 것 같습니다.
                  강사님께 너무 감사드립니다!!~
                </p>
               
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div> 
                <div class="profile mt-auto">
                  <h3 class="review_font">
                  <img src="/resources/img/review_left.png">재밌는 강의였습니다<img src="/resources/img/review_right.png"></h3>
                </div>
                <p>
                  유쾌하고, 이해하기 쉽게 설명해주시고, 사용한 코드는 직접적이고, 실용적인 교육이라고 생각합니다.
                  금액이 아깝지않고,<mark id="review_m">프론트를 공부하는 분들은 꼭 들었으면 좋겠습니다.</mark>
                  추천하는 이유가 있는 것 같습니다. 감사합니다.^^
                </p>
               
              </div>
            </div><!-- End testimonial item -->
          </div>
        </div>
        <!-- <div class="swiper-pagination"></div> -->
      </div>
    </section>
  </div>
  
</section><!-- 후기 끝 -->


<%@include file="/WEB-INF/views/include/footer.jsp" %>

      
      
      