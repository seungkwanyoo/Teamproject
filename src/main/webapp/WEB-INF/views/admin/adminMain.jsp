<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>
 

            <!-- top_subject_area -->
            <div class="admin_top_wrap">
                <span>관리자 페이지</span>
            </div>
            <!-- contents-area -->
            <div class="admin_wrap">
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
<!-- 
                    <div class="admin_list_01">
                        <a>상품 관리</a>
                    </div>
                     -->
                </div>
                <div class="admin_content_wrap">
                    <div>관리자 페이지 입니다.</div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
 				
<%@include file="/WEB-INF/views/include/footer.jsp" %>
