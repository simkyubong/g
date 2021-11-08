/**
 * 
 */

$(document).ready(function() {
	
	function displayTime(timeValue){// 시간 처리 함수 시작
		
		var today = new Date();// 오늘 날짜
				// 현재 시간(today.getTime) - 화면에서 넘어온 시간(timeValue)
		var gap = today.getTime - timeValue;
		
		var dateObj = new Date(timeValue);
		var str="";
		if(gap<(1000*60*60*24)){
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [(hh>9 ? '':'0')+hh,':',(mi>9?'':'0')+mi,
				':',(ss>9 ? '':'0')+ss].join('');
		}else{
			var yy=dateObj.getFullYear();
			var mm=dateObj.getMonth()+1	// getMonth()은 0,1,2,3,4,5,6,7,8,9,10,11이 되니 +1을 해줘야 함.
			var dd=dateObj.getDate();
			
			return [yy,'/',(mm > 9?'':'0')+mm,'/',
				(dd > 9?'':'0')+dd].join('');
		}
	};// 시간 처리 함수 끝

});


$(function() {
	$('.productQna .pdQna table .pdQna_contentShow').click(function(e) {
		let d = $(this).hasClass("active");
		if (d) {
			$('.productQna .pdQna table .pdQna_contentShow').removeClass('active');
			$('.productQna .pdQna table .pdQna_content_wrap td').slideUp();
		} else {
			$('.productQna .pdQna table .pdQna_contentShow').removeClass('active');
			$('.productQna .pdQna table .pdQna_content_wrap td').slideUp();
			$(this).addClass('active').next().find('td').slideDown();
	    }

	    e.preventDefault();
	    return false;
	  });
	});
