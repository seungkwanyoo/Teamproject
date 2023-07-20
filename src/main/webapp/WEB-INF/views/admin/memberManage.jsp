<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>



            <!-- top_subject_area -->
            <div class="admin_top_wrap">
                <span>관리자 페이지</span>
            </div>
            <!-- contents-area -->
  
            <!-- 네비영역 -->
            <div class="admin_navi_wrap">
                <ul>
                    <li >
                        <a class="admin_list_01" href="/admin/goodsEnroll">상품 등록</a>
                    </li>
                    <li>
                        <a class="admin_list_02" href="/admin/goodsManage">상품 목록</a>
                    </li>
                    <li>
                        <a class="admin_list_05" href="/admin/memberManage">회원 관리</a>                            
                    </li>                                                                                             
                </ul>
            </div>
            <div class="admin_content_wrap">
   			<c:forEach items="${memberList2}" var="member">
				<table class="table table-striped table-hover member_css">
					<thead>
					    <tr class="member_nth">
						    <th class="member_num" scope="col">#</th>
						    <th class="member_name" id="dd" scope="col">아이디</th>
						    <th class="member_pw" scope="col">비밀번호</th>
						    <th class="member_pw" scope="col">이름</th>
						    <th class="member_email" scope="col">이메일</th>
						    <th class="member_adree" scope="col">주소</th>
					    </tr>
				  	</thead>
				  	<tbody>
					    <tr class="member_nth">
						    <th class="member_num" scope="row">${member.memberNum}</th>
						    <td class="member_id" id=member_id>${member.memberId}</td>
						    <td class="member_pw">${member.memberPassword}</td>
						    <td class="member_name">${member.memberName}</td>
						    <td class="member_email">${member.memberEmail}</td>
					    	<td class="member_adree">${member.memberAdress}</td>
					    </tr>
				  	</tbody>
				</table>
			</c:forEach>
          </div>
       </div>
    </div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>
