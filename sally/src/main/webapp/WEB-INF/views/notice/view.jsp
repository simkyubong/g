<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="${path}/resources/css/view.css" rel="stylesheet"/> 	
</head>
<body>
    <div class="container">
        <div class="container_in">
            <h2>NOTICE</h2>
            <table>
                <tbody>
                    <tr class="title">
                        <th scope="row">제목</th>
                        <td>${view.title}</td>
                    </tr>
                    <tr class="writer">
                        <th scope="row">작성자</th>
                        <td>
                            ${view.writer}
                            <div class="date">
                                작성일
                                <span><fmt:formatDate value="${view.regdate}" pattern="yyyy-MM-dd"/></span>
                            </div>
                            <div class="count">
                                조회수
                                <span>${view.viewCnt}</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="content">
                                ${view.content}
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="list">
                <a href="javascript:history.back();">목록</a>
            </div>
        </div>
    </div>
<!-- 
	<div>
		<a href="/notice/modify?bno=${view.bno}">게시물 수정</a>
		<a href="/notice/delete?bno=${view.bno}">게시물 삭제</a>
	</div> -->
	<%@include file="../include/footer.jsp" %>
</body>
</html>