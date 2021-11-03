/**
 * 
 */
$(document).ready(function(){

	function showImage(fileCallPath){
		  $(".bigPictureWrapper").css("display","flex").show();
		  
		  $(".bigPicture").html("<img src='/display?fileName="+fileCallPath+"'>").animate({width:'100%', height: '100%'}, 1000);

		}
	
	$(".bigPictureWrapper").on("click", function(e){
	  $(".bigPicture").animate({width:'0%', height: '0%'}, 1000);
	  setTimeout(() => {
	    $(this).hide();
	  }, 1000);
	});

	
	$(".uploadResult").on("click","span", function(e){
	   
	  var targetFile = $(this).data("file");
	  var type = $(this).data("type");
	  console.log(targetFile);
	  
	  $.ajax({
	    url: '/deleteFile',
	    data: {fileName: targetFile, type:type},
	    dataType:'text',
	    type: 'POST',
	      success: function(result){
	         alert(result);
	       }
	  }); //$.ajax
	  
	});
	
	
						// 정규식
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		var maxSize = 5242880; //5MB
		// checkExtension함수 선언(4. 첨부파일 공격에 대비하기 위한 업로드 파일의 확장자 제한 또는 파일 크게 제한)
		function checkExtension(fileName, fileSize) {

			if (fileSize >= maxSize) {
				alert("파일 사이즈 초과");
				return false;
			}
			//              mainlogo_new.png
			if (regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}

		var cloneObj = $(".uploadDiv").clone();

		$("#uploadBtn").on("click", function(e) {
			// jsp에 <form>태그를 대체
			var formData = new FormData();
			//                  선택자 [속성선택자]
			var inputFile = $("input[name='uploadFile']");

			var files = inputFile[0].files;

			console.log(files);

			for (var i = 0; i < files.length; i++) {
				// checkExtension함수 호출
				if (!checkExtension(files[i].name, files[i].size)) {
					return false;
				}
				// 폼태그(formData)와 파일정보(files[i])와 uploadFile변수
				// 이용하여 폼태그와 파일정보를 연결
				formData.append("uploadFile", files[i]);
			}

	$.ajax({
		url : '/uploadAjaxAction',
		processData : false,
		contentType : false,
		data : formData,
		type : 'POST',
		dataType : 'json',
		success : function(result) {
	
			console.log(result);
			
			showUploadedFile(result);
	
			$(".uploadDiv").html(cloneObj.html());
		}
	}); //$.ajax

});

var uploadResult = $(".uploadResult ul");

function showUploadedFile(uploadResultArr){
 
	if(!uploadResultArr || uploadResultArr.length==0){
		return;
	}
	
   var str = "";
   
   $(uploadResultArr).each(function(i, obj){
     console.log(obj);
     if(!obj.image){ // 업로드한 파일이 이미지가 아니면,
       
       var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
       
       var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");//replace("A","B") : A문자열을 B로 치환
       
       str += "<li><div><a href='/download?fileName="+fileCallPath+"'>"+
           "<img src='/resources/img/attach.png'>"+obj.fileName+"</a>"+
           "<span data-file=\'"+fileCallPath+"\' data-type='file'> x </span>"+
           "<div></li>"
           
     }else{ // 업로드한 파일이 이미지면,
       //                              "2021\10\28"+"/s_"+"24a7ffe4-0a5c-42dd-bb4a-e4149c7c1234"+"_"+"mainlogo_new.png"
    	 
       var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
       
       var originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName;
       
       originPath = originPath.replace(new RegExp(/\\/g),"/");
       
       str += "<li><div>"+
       "<img src='/display?fileName="+fileCallPath+"'></a>"+
       "<span data-file=\'"+fileCallPath+"\' data-type='image'></span>"+
		  "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-warning btn-circle'>"+
		  "<i class='fa fa-times'></i></button><br>"+
       "</div><li>";

     }
   });
   
   
   uploadResult.append(str);
 }
})