<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/memberManage.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	<%@include file="../includes/admin/header.jsp" %>
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>회원 관리</span></div>
                    
                    <div class="member_table_wrap">
                    	<!-- 회원 리스트 O -->
	                    <c:if test="${listcheck != 'empty'}">
	                    	<table class="member_table">
	                    		<thead>
	                    			<tr>
										<td class="th_column_1">회원 ID</td>
	                    				<td class="th_column_2">회원 이름</td>
	                    				<td class="th_column_3">email</td>
	                    				<td class="th_column_4">가입일</td>
	                    				<td class="th_column_5">비고</td>
	                    			</tr>
	                    		</thead>
	                    		<c:forEach items="${list}" var="memberList">
	                    		<tr>
	                    			<td>
										<a class="move" href='<c:out value="${memberList.memberId}"/>'>
											<c:out value="${memberList.memberId}"></c:out>
										</a>
									</td>
	                    			<td><c:out value="${memberList.memberName}"></c:out></td>
	                    			<td><c:out value="${memberList.memberEmail}"></c:out></td>
	                    			<td><fmt:formatDate value="${memberList.regDate}" pattern="yyyy-MM-dd"/></td>
	                    			<td>기타버튼</td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>
	                    </c:if>
	                    <!-- 상품 리스트 X -->
                		<c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 상품이 없습니다
                			</div>
                		</c:if> 
                	</div>
                	
                	<!-- 검색 영역 -->
                	<div class="search_wrap">
                		<form id="searchForm" action="/admin/memberManage" method="get">
                			<div class="search_input">
                    			<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
                    			<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
                    			<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
                    			<input type="hidden" name="type" value="G">
                    			<button class='btn search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
                	
                	<!-- 페이지 이름 인터페이스 영역 -->
                	<div class="pageMaker_wrap">
                		<ul class="pageMaker">
                			
                			<!-- 이전 버튼 -->
                			<c:if test="${pageMaker.prev }">
                				<li class="pageMaker_btn prev">
                					<a href="${pageMaker.pageStart -1}">이전</a>
                				</li>
                			</c:if>
                			
                			<!-- 페이지 번호 -->
                			<c:forEach begin="${pageMaker.pageStart }" end="${pageMaker.pageEnd }" var="num">
                				<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
                					<a href="${num}">${num}</a>
                				</li>	
                			</c:forEach>
                		
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.pageEnd + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    </ul>
                	</div>
                	
                	<form id="moveForm" action="/admin/memberManage" method="get" >
 						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                	</form>
                </div>
    <%@include file="../includes/admin/footer.jsp" %>

 <script>
 
 	

	let searchForm = $('#searchForm');
	let moveForm = $('#moveForm');

	/* 검색 버튼 동작 */
	$("#searchForm button").on("click", function(e){
		
		e.preventDefault();
		
		/* 검색 키워드 유효성 검사 */
		if(!searchForm.find("input[name='keyword']").val()){
			alert("키워드를 입력하십시오");
			return false;
		}
		
		searchForm.find("input[name='pageNum']").val("1");
		
		searchForm.submit();
		
	});


	/* 페이지 이동 버튼 */
	$(".pageMaker_btn a").on("click", function(e){
		
		e.preventDefault();
		
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		
		moveForm.submit();
		
	});

	 /* 회원 조회 페이지 */
	$(".move").on("click", function(e){
		
		e.preventDefault();
		
		moveForm.append("<input type='hidden' name='gdsNum' value='"+$(this).attr("href") + "'>");
		moveForm.attr("action", "/admin/goodsDetail");
		moveForm.submit();
		
		
	});


	/* 수정 성공 이벤트 */
		 let modify_result = '${modify_result}';
		
		if(modify_result == 1){
			alert("수정 완료");
	} 
		
	/* 삭제 결과 경고창 */
	 let delete_result = '${delete_result}';
	
	if(delete_result == 1){
		alert("삭제 완료");
	} 

</script>
</body>
</html>