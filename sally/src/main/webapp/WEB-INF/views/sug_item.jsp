<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sug_item</title>
<html lang="en">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/sug_item.css">
<link rel="stylesheet" href="resources/css/js/index.js">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap"
	rel="stylesheet">
</head>
<body>
    <div id="wrap">

        <div id="header">

            <div class="header_in">

                <div class="gnb">
                    <p class="pass_btn">
                        <a href="">건너 뛰기</a>
                    </p>
                    <p class="selection_btn">
                        <a href="">선택 완료</a>
                    </p>
                </div><!-- gnb -->
                <div class="h_text">
                    <h1>
                        <img src="" alt=""><p class="emoji">&#128149;</p><br>
                        안녕하세요! 취향에 맞는 스타일을 고르면 <br>
                        본인에게 맞는 상품을 추천해드려요
                    </h1>
                    <p>많이 선택해 주실수록 추천과 취향이 가까워집니다!</p>
                </div><!-- h_text -->
            </div><!-- header_in -->
            <div class="header_in_sec1">

            </div><!-- header_in_sec1 -->
            <div class="header_in_sec2">

            </div><!-- header_in_sec2 -->
        </div><!-- header -->

        <div id="container">
            <div class="section1 hide">
                <div class="age_selection">
                    <p>이모티콘</p>
                    <h2>연령대를 선택해 주십시요</h2>
                    <p>알맞은 상품들을 추천해 드릴게요</p>
                    <div>
                        <ul>
                            <li>
                                <input type="checkbox" name="age" id="" oneclick="checkAgeOne(this)" />
                                10대
                            </li>
                            <li>
                                <input type="checkbox" name="age" id="" oneclick="checkAgeOne(this)" />
                                10~19세
                            </li>
                            <li>
                                <input type="checkbox" name="age" id="" oneclick="checkAgeOne(this)" />
                                20~24세
                            </li>
                            <li>
                                <input type="checkbox" name="age" id="" oneclick="checkAgeOne(this)" />
                                25~29세
                            </li>
                            <li>
                                <input type="checkbox" name="age" id="" oneclick="checkAgeOne(this)" />
                                30~34세
                            </li>
                            <li>
                                <input type="checkbox" name="age" id="" oneclick="checkAgeOne(this)" />
                                35세 이상
                            </li>
                        </ul>
                    </div>
                </div><!-- age_selection -->
            </div><!-- section1 -->
            
            <div class="section2 hide">
                <div class="taste_selection">
                    <p>이모티콘</p>
                    <h2>취향을 선택해 주세요</h2>
                    <p>3개 이상 선택해 주시면 원하는 것과 그와 관련된 것들을 먼저 보여드릴게요</p>
                    <div class="taste_list">
                        <ul>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                <img src="" alt="">
                                쇼핑몰
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                <img src="" alt="">
                                뷰티
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                <img src="" alt="">
                                브랜드
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                <img src="" alt="">
                                럭셔리
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                <img src="" alt="">
                                홈데코
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                <img src="" alt="">
                                핸드메이드
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                <img src="" alt="">
                                팬시
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                <img src="" alt="">
                                스포츠
                            </li>
                        </ul>
                    </div>
                </div><!-- taste_selection -->
            </div><!-- section2 -->

            <div class="section3">
                <div class="user_set_up">
                    <div class="user_text">
                        <ul>
                            <!-- <input type="checkbox">상품선택 -->
                            <li class=""><a href="">전체</a></li>
                            <li class=""><a href="">상의</a></li>
                            <li class=""><a href="">원피스</a></li>
                            <li class=""><a href="">바지</a></li>
                            <li class=""><a href="">스커트</a></li>
                            <li class=""><a href="">슈즈</a></li>
                            <li class=""><a href="">가방</a></li>
                            <li class=""><a href="">액세서리</a></li>
                            <!-- <li class=""><a href="">비치웨어</a></li>
                            <li class=""><a href="">란제리/속옷</a></li>
                            <li class=""><a href="">트레이닝/피트니스</a></li> -->
                        </ul>
                    </div>
                    <div class="user_item">
                        <ul>
                            <li>
                                <a href="">
                                    <img src="resources/css/img/red/reditem3.jpeg" alt="">
                                </a>
                            </li>
                            <li><a href=""><img src="resources/css/img/red/reditem13.jpeg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/gery/greyitem12.jpeg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/gery/greyitem13.jpeg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/green/greenitem12.jpeg" alt=""></a></li>

                            <li><a href=""><img src="resources/css/img/navi/naviitem23.jpeg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/khaki/kaakiitem7.jpeg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/khaki/khakiitem16.jpeg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/brown/brownitem12.jpg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/brown/brownitem16.jpeg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/yellow/yellowitem12.jpeg" alt=""></a></li>
                            <li><a href=""><img src="resources/css/img/yellow/yellowitem13.jpeg" alt=""></a></li>
                        </ul>
                    </div>
                </div><!-- user_set_up -->
            </div><!-- section3 -->
        </div><!-- container -->
    </div><!-- wrap -->
    
</body>
</html>