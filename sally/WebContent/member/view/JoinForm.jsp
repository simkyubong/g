<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
        ul{
            list-style: none;
        }

        #register_container{
            width: 550px;
            margin: 0 auto;
            text-align: center;
        }

        #user_info li{
            height: 60px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
        }

        input[type="text"], input[type="password"], input[type="email"]{
            width: 350px;
            height: 40px;
        }

        #user_info button{
            position: absolute;
            height: 40px;
            right: 0;
        }

        #buttons{
            display: flex;
            justify-content: center;
        }

        #buttons button{
            width: 200px;
            height: 50px;
            border: 1px solid #ccc;
            background-color: #e5e5e5;
            margin: 0 10px;
        }
    </style>
</head>
<body>
	<div id="register_container">
        <h1>회원가입</h1>
        <form action="" id="register">
            <ul id="user_info">
                <li>
                    <label for="user_id">아이디</label>
                    <input type="text" id="user_id" placeholder="4~15자리의 영문과 숫자로 입력하세요">
                </li> 
                <li>
                    <label for="name">이름</label>
                    <input type="text" id="name">
                </li>
                <li>
                    <label for="user_email">이메일</label>
                    <input type="email" id="user_email">
                    <button id="email_check" type="submit">인증번호 전송</button>
                </li>
                <li>
                    <label for="user_email2">인증번호</label>
                    <input type="text" id="user_email2">
                    <button id="certiBtn" type="submit">인증하기</button>
                </li>
                <li>
                    <label for="user_pw1">비밀번호</label>
                    <input type="password" id="user_pw1" placeholder="8자리 이상 입력하세요">
                </li>
                <li>
                    <label for="user_pw2">비밀번호 확인</label>
                    <input type="password" id="user_pw2">
                </li>
                <li>
                    <label for="">메일링 수신</label>
                    <label><input type="radio" value="yes" name="agree" >예</label>
                    <label><input type="radio" value="no" name="agree" >아니오</label>
                </li>
            </ul>

            <ul id="buttons">
                <li><button type="submit">가입하기</button></li>
                <li><button type="reset">취소</button></li>
            </ul>
        </form>
    </div>
</body>
</html>