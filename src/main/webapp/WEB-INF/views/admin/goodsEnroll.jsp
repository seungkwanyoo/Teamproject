<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/Header.jsp" %>
 

            <!-- top_subject_area -->
            <div class="admin_top_wrap">
                <span>관리자 페이지</span>
            </div>
  
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
				<form>
					<div>
						<label for="goodsName">이름</label>
						<input type="text" class="goodsName" id="goodsName" />
					</div>
					<div>
						<label for="goodsPrice">가격</label>
						<input type="text" class="goodsPrice" id="goodsPrice" />
					</div>
					<div>
						<label for="dd">사진</label>
					</div>
				</form>
           </div>
        </div>
    </div>
 				
<%@include file="/WEB-INF/views/include/footer.jsp" %>
