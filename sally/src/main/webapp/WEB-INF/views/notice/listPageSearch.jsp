<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${path}/resources/css/list.css" rel="stylesheet"/> 	
</head>
<body>		
    <div class="container">
        <div class="container_in">
            <h2>NOTICE</h2>
            <div class="board_menu">
                <ul>
                    <li class="on"><a href="/notice/listPage?num=1">공지사항</a></li>
                    <li><a href="">상품문의</a></li>
                    <li><a href="">상품후기</a></li>
                </ul>
            </div>
            <div class="notice_list">		
				<table>
					<thead>
						<tr>
					   		<th>번호</th>
					   		<th>제목</th>
					   		<th>작성자</th>
					   		<th>작성일</th>
					   		<th>조회</th>
					  	</tr>
					</thead>
			 		<tbody>
				  		<c:forEach items="${list}" var="list">
							<tr class="notice">	
								<td class="notice_number">${list.bno}</td>
								<td class="notice_title">
									<a href="/notice/view?bno=${list.bno}">${list.title}</a>
								</td>
								<td class="notice_name">${list.writer}</td>
								<td class="notice_date">
									<fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/>
								</td>
								<td class="notice_view">${list.viewCnt}</td>
							</tr>
						</c:forEach>
			 		</tbody>
				</table>
				<fieldset>
                    <legend>게시물 검색</legend>
                    <!--     <select name="search_date" id="search_date">
                            <option value="week">일주일</option>
                            <option value="month">한달</option>
                            <option value="3month">세달</option>
                            <option value="all">전체</option>
                        </select>--> 
                        <select name="searchType" id="search_key">
                         	<option value="title" <c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
                            <option value="content" <c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
     						<option value="title_content" <c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
                            <option value="writer" <c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
                        </select>
                        <input type="text" id="search_box" name="keyword" value="${page.keyword}">
                        <!--  <a href="" class="search_btn" id="searchBtn">찾기</a>-->
                        <button type="button" id="searchBtn" class="search_btn" style="cursor: pointer">찾기</button>
                </fieldset>
			</div>
			<div class="notice_pager">
				<div class="notice_pager_in">			
					<ul>
						<li class="on">
							<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
						  		<span>
						   			<c:if test="${select != num}">
					   					<a href="/notice/listPageSearch?num=${num}${page.searchTypeKeyword}">${num}</a>
					  				</c:if>  
					  				
					  				<c:if test="${select == num}">
					   					<b>${num}</b>
					  				</c:if>	
						 		</span>
							</c:forEach>
						</li>
					</ul>
				</div>
        	</div>
		</div>
    </div>
    
    <script>
    document.getElementById("searchBtn").onclick = function () {
        
    	  let searchType = document.getElementsByName("searchType")[0].value;
    	  let keyword =  document.getElementsByName("keyword")[0].value;
    	  
    	  location.href = "/notice/listPageSearch?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
    	 };
    
    
    
    </script>
    <%@include file="../include/footer.jsp" %>
</body>
</html>

