<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <title>sally</title>    
	<link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style3_setUP.css">
    <script
  		src="https://code.jquery.com/jquery-3.4.1.js"
	  	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  	crossorigin="anonymous">
    </script>
</head>
<body>

    <div id="wrap">
        <div id="header">
            <div class="header_in">
                <div class="gnb">
                    <p class="pass_btn">
                        <a href="">건너뛰기</a>
                    </p>
                    <p class="selection_btn">
                        <a href="">선택 완료</a>
                    </p>
                </div>
                <div class="h_text">
                    <h1>
                        <img src="" alt=""><br>
                        안녕하세요! 취향에 맞는 스타일을 고르면 <br>
                        본인에게 맞는 상품을 추천해드려요
                    </h1>
                    <p>많이 선택해 주실수록 추천과 취향이 가까워집니다!</p>
                </div>
            </div><!-- header_in -->
            <div class="header_in_sec1">

            </div><!-- header_in_sec1 -->
            <div class="header_in_sec2">

            </div><!-- header_in_sec2 -->
        </div><!-- header -->

        <div id="container">
            <div class="section1 hide">
                <div class="age_selection"></div><!-- age_selection -->
                    <p>이모티콘</p>
                    <h2>연령대를 선택해 주십시요</h2>
                    <p>알맞은 상품들을 추천해 드릴게요</p>
                    <div>
                        <ul>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                10대
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                10대
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                20~24세
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                25~29세
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
                                30~34세
                            </li>
                            <li>
                                <input type="checkbox" name="10대" id="">
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
                   <div>
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
                        </ul>
                    </div>
                    <div class="user_set_up_in">
                        <ul>
                            <li><a href=""><img src="./img/brown/h_l-102.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/brown/h_l-103.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/brown/brownitem13.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/brown/brownitem12.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/blue/buleitem20.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/blue/blueitem21.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/red/h_l-115.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/red/reditem3.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/gery/grey_item9.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/gery/grey_item10.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/gery/grey_item11.jpeg" alt=""></a></li>
                            <li><a href=""><img src="./img/gery/grey_item12.jpeg" alt=""></a></li>
                        </ul>
                    </div>
                </div><!-- user_set_up -->
            </div><!-- section3 -->
            
            <div class="section4">
                <div class="user_start">
                    <div class="user_btn">
                        <p class="u_prev"><a href="">이전페이지</a></p>
                        <p class="u_start"><a href="">시작하기</a></p>
                    </div><!-- user_top_btn -->
                    <div class="user_top">
                        <h2>
                            선택한 스타일의 <br>
                            스타일을 모아왔어요.
                        </h2>
                        <p>
                            즐겨찾기 하시고 매일 인기상품과
                            신상을 모아보세요!
                        </p>
                    </div><!-- user_top_head -->

                    <div class="user_start_in">
                        <div class="bookmark_btn">
                            <p>
                                모두 즐겨찾기
                            </p>
                            <img src="./img/bookmark .svg" alt="">
                        </div><!-- bookmark_btn -->

                        <div class="user_img">
                            <ul class="page1">
                                <li><a href=""><img src="./img/khaki/khakiitem16.jpeg" alt=""></a></li>
                                <li><a href=""><img src="./img/khaki/khakiitem15.jpeg" alt=""></a></li>
                                <li><a href=""><img src="./img/blue/blueitem21.jpeg" alt=""></a></li>
                                <div class="profile">
                                    <img src="./img/profile.png" alt="">
                                    <p>쇼핑몰 1</p>
                                    <p>구독자수:8만</p>
                                </div>
                                <div>
                                    <img src="./img/bookmark .svg" alt="">
                                </div>
                            </ul><!-- page1 -->

                            <ul class="page2">
                                <li><a href=""><img src="./img/pink/pinkitem11.jpeg" alt=""></a></li>
                                <li><a href=""><img src="./img/red/reditem2.jpeg" alt=""></a></li>
                                <li><a href=""><img src="./img/white/whiteitem5.jpeg" alt=""></a></li>
                                <div class="profile">
                                    <img src="./img/profile.png" alt="">
                                    <p>쇼핑몰 2</p>
                                    <p>구독자수:25.3만</p>
                                </div>
                                <div>
                                    <img src="./img/bookmark .svg" alt="">
                                </div>
                            </ul>
                            <ul class="page3">
                                <li><a href=""><img src="img/navi/naviitem111.jpeg" alt=""></a></li>
                                <li><a href=""><img src="img/blue/blueitem19.jpeg" alt=""></a></li>
                                <li><a href=""><img src="img/blue/buleitem20.jpeg" alt=""></a></li>
                                <div class="profile">
                                    <img src="./img/profile.png" alt="">
                                    <p>쇼핑몰 3</p>
                                    <p>구독자수:15.9만</p>
                                </div>
                                <div>
                                    <img src="./img/bookmark .svg" alt="">
                                </div>
                            </ul>
                        </div><!-- user_start_img -->
                    </div><!-- user_start_in -->
                </div><!-- user_start -->
            </div><!-- section4 -->

        </div><!-- container -->

        <div id="footer">

        </div><!-- footer -->
    </div><!-- wrap -->
</body>
</html>
</body>
</html>