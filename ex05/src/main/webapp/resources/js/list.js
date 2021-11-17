$(document).ready(function(){
	var searchForm=$("#searchForm");
	
	$("#searchForm button").on("click",function(e){
		// 사용자가 검색을 하기 위해 검색종류 선택하지 않았을 경우
		if(!searchForm.find("option:selected").val()){
			alert("검색종류를 선택하세요.");
			return false;
		}
		// 사용자가 검색을 하기 위해 키워드를 입력하지 않았을 경우
		if(!searchForm.find("input[name='keyword']").val()){
			alert("키워드를 입력하세요.");
			return false;
		}
		// 검색한 후 첫번째 페이지로 이동
		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();
		searchForm.submit();
	})
	
	
	
	
})