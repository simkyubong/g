<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${path}/resources/css/header.css" rel="stylesheet"/>
<link href="${path}/resources/css/style.css" rel="stylesheet"/>  
<title>Insert title here</title>


<link rel="stylesheet" href="/resources/css/css/reset.css">
<link rel="stylesheet" href="/resources/css/css/style.css">


	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	
	<!-- jQuery 연결 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- jQuery UI 연결 -->
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	
	<!-- slick -->
	<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	
</head>
<body>
        <div id="header">
            <div class="header_in">
        <!--         <div class="header_banner">
                    <a href="">
                        <p>
                            코로나 19 관련 고객 전달사항 
                            <img src="./img/clear.svg" alt="">
                        </p>
                    </a>
                </div>
                <div class="logo">
                    <div class="logo_in"></div>
                        <a href="">
                            <img src="./h_logo_2.svg" alt="">
                            <p class="h_logo_name">Sally</p>
                        </a>
                    </div>
                    <div class="serach_box">
                        <input type="text" placeholder="검색어입력" class="ser_box_text">
                        <Button class="serach_box_btn">
                                <img src="./ico-search.svg" alt="">
                        </Button>
                    </div> --> 
                </div>
                <div class="gnb">
                    <div class="gnb_in">
                        <div class="g_logo">
                            <a href="">
                                <!-- <img src="./h_logo_2.svg" alt=""> -->
                            </a>
                        </div ><!-- g_logo -->
                        <div class="h_gnb">
                            <ul class="h_manu">
                                <li><a href="">Best50</a></li>
                                <li>
                                    <a href="">시그니처</a>
                                    <div class="sig_in">
                                        <ul>
                                            <li><a href="">155cm VER.</a></li>
                                            <li><a href="">160cm VER.</a></li>
                                            <li><a href="">165cm VER.</a></li>
                                            <li><a href="">airport</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="">당일발송</a></li>
                            </ul>    
                            <ul class="h_category">
                                <li>
                                    <a href="/goods/list?cateCode=100">TOP</a>
                                    <div class="TOP_in">
                                        <ul>
                                            <li><a href="/goods/list?cateCode=101">TEE</a></li>
                                            <li><a href="/goods/list?cateCode=102">BLOUSE</a></li>
                                            <li><a href="/goods/list?cateCode=103">SHIRT</a></li>
                                            <li><a href="/goods/list?cateCode=104">KNIT</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="/goods/list?cateCode=200">OUTER</a>
                                    <div class="OUTER_in">
                                        <ul>
                                            <li><a href="/goods/list?cateCode=201">JACKET</a></li>
                                            <li><a href="/goods/list?cateCode=202">CARDIGAN</a></li>
                                            <li><a href="/goods/list?cateCode=203">COAT</a></li>
                                            <li><a href="/goods/list?cateCode=204">JUMPER</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="/goods/list?cateCode=300">PANTS</a>
                                    <div class="PANTS_in">
                                        <ul>
                                            <li><a href="/goods/list?cateCode=301">DENIM</a></li>
                                            <li><a href="/goods/list?cateCode=302">SLACKS</a></li>
                                            <li><a href="/goods/list?cateCode=303">PANTS</a></li>
                                            <li><a href="/goods/list?cateCode=304">SHORT PANTS</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="/goods/list?cateCode=400">OPS/SKIRT</a>
                                    <div class="PANTS_in">
                                        <ul>
                                            <li><a href="/goods/list?cateCode=401">OPS</a></li>
                                            <li><a href="/goods/list?cateCode=402">MINI</a></li>
                                            <li><a href="/goods/list?cateCode=403">MIDI</a></li>
                                            <li><a href="/goods/list?cateCode=404">LONG</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="/goods/list?cateCode=500">ACC</a>
                                    <div class="ACC_in">
                                        <ul>
                                            <li><a href="/goods/list?cateCode=501">HAIR</a></li>
                                            <li><a href="/goods/list?cateCode=502">RING</a></li>
                                            <li><a href="/goods/list?cateCode=503">EARRING</a></li>
                                            <li><a href="/goods/list?cateCode=504">BRACELET</a></li>
                                            <li><a href="/goods/list?cateCode=505">WATCH</a></li>
                                            <li><a href="/goods/list?cateCode=506">ETC</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="/goods/list?cateCode=600">SHOSE</a></li>
                                <li><a href="/goods/list?cateCode=700">BAG</a></li>
                                <!-- <li>
                                    <a href="">SUMMER</a>
                                    <div class="SUMMER_in">
                                        <ul>
                                            <li><a href="">BIKINI</a></li>
                                            <li><a href="">SWIMSUIT</a></li>
                                            <li><a href="">BEACHWEAR</a></li>
                                            <li><a href="">ETC</a></li>
                                        </ul>
                                    </div>
                                </li> -->
                                <li>
                                    <a href="">SEASON OFF</a>
                                    <div class="SEASIN_off_in">
                                        <ul>
                                            <li><a href="">TOP</a></li>
                                            <li><a href="">OUTERR</a></li>
                                            <li><a href="">PANTS</a></li>
                                            <li><a href="">OPS&SKIRT</a></li>
                                            <li><a href="">ACC&BAG&SHOES</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul><!-- h_category -->
                            <ul class="h_joinBar">
                                <li class=""><a href="">LOGIN</a></li>
                                <li class=""><a href="">JOIN</a></li>
                                <li class="my_page">
                                    <p>MYPAGE</p>
                                    <div class="my_page_in">
                                        <ul>
                                            <li><a href="/mypage/orderlist">주문내역조회</a></li>
                                            <li><a href="">관심상품</a></li>
                                            <li><a href="">적립금내역</a></li>
                                            <li><a href="">쿠폰내역조회</a></li>
                                            <li><a href="">게시물관리</a></li>
                                            <li><a href="">배송주소록관리</a></li>
                                            <li><a href="">최근본상품</a></li>
                                        </ul>
                                    </div><!-- h_myPage -->
                                </li>
                                <li class="board">
                                    <p>BOARD</p>
                                    <div class="board_in">
                                        <ul>
                                            <li><a href="/notice/listPage?num=1">NOTICE</a></li>
                                            <li><a href="">Q & A</a></li>
                                            <li><a href="">REVIEW</a></li>
                                            <li><a href="">MODEL</a></li>
                                        </ul>
                                    </div><!-- h_board -->
                                </li>
                                <li><a href=""></a></li>
                            </ul><!-- h_joinBar -->
                            <ul class="h_join_menu">
                                <li class="cart_in">
                                    <a href="">
                                        <p class="hide">장바구니</p>
                                        <img src="./img/cart_icon_128475.svg" alt="">
                                    </a>
                                    <div> </div>
                                </li> <!-- cart_in -->
                                <li class="search_in">
                                    <a href="">
                                        <p class="hide">검색창</p>
                                        <img src="./img/h_search-zoom_110300.svg" alt="">
                                    </a>
                                    <div></div>
                                </li><!-- search_in -->
                                <li class="category_in">
                                    <a href="">
                                        <p class="hide">메뉴</p>
                                        <img src="./img/h_hamburger-menu-more-navigation_110319.svg" alt="">
                                    </a>
                                    <div></div>
                                </li><!-- category_in -->
                            </ul><!-- h_join_menu -->
                        </div><!-- h_gnb -->   
                    </div><!-- gnb_in -->
                </div><!-- gnb -->
            </div><!-- header_int -->
        </div><!-- header -->