<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/include_header.jsp"%>
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
                    <li class="on"><a href="">공지사항</a></li>
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
                        <select name="search_date" id="search_date">
                            <option value="week">일주일</option>
                            <option value="month">한달</option>
                            <option value="3month">세달</option>
                            <option value="all">전체</option>
                        </select>
                        <select name="search_key" id="search_key">
                            <option value="title">제목</option>
                            <option value="content">내용</option>
                            <option value="name">글쓴이</option>
                        </select>
                        <input type="text" id="search_box">
                        <a href="" class="search_btn">찾기</a>
                </fieldset>
			</div>
			<div class="notice_pager">
				<div class="notice_pager_in">			
					<ul>
						<li class="on">
							<a href="/notice/listPage?num=1">1</a>
						</li>
						<li>
							<a href="/notice/listPage?num=2">2</a>
						</li>
						<li>
							<a href="/notice/listPage?num=3">3</a>
						</li>
						<li>
							<a href="/notice/listPage?num=4">4</a>
						</li>
						<li>
							<a href="/notice/listPage?num=5">5</a>
						</li>
					</ul>
				</div>
        	</div>
		</div>
    </div>
    <%@include file="../include/include_footer.jsp"%>
</body>
</html>