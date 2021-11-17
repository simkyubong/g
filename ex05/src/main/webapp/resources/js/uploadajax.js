$(document).ready(function(){
	// 정규식
	var regex= new RegExp("(.*?)\.(exe|sh|zip|alz)$");	// 정규식(해당 종류의 파일은 업로드 할수 없게....)
	var maxSize=5242880;								// 파일 사이즈(5MB) 1024(KB) * 1024(MB) * 5
	
	function checkExtension(fileName, fileSize){
		if(fileSize>=maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드 할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	function showUploadFile(uploadResultArr){
		var str="";
		// data는 배열임. for문과 같은 반복문을 이용해서 0~배열끝까지를 화면에 출력.(each)
		$(uploadResultArr).each(function(i,obj){
			var fileCallPath=encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
			if(!obj.image){
				// 이미지 파일이 아니면(image:false) - download 하게끔....	
				//var fileCallPath=encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
				str+="<li><a href='/jhtSpring/download?fileName="+fileCallPath+"'>"
				+"<img src='resources/image/attach.png'>"+obj.fileName+"</a></li>";
			}else{
				// 이미지 파일이면(image:true) - display 웹에 이미지 출력
				var sfileCallPath=encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
				str+="<li><img src='/jhtSpring/display?fileName="+fileCallPath+"'>" +
						"<span data-file='"+sfileCallPath+"' data-type='image'>x</span>"+"</li>";
			}
		})
		$(".uploadResult ul").append(str);
	}

	$(".fileDrop").on("dragenter dragover",function(e){
		e.preventDefault();
		//alert("drag");
	})
	$(".fileDrop").on("drop",function(e){// drop 이벤트 start
		e.preventDefault();
		var files=e.originalEvent.dataTransfer.files;
		
		//console.log("name="+files[0].name);
		//console.log("size="+files[0].size);
		var formData = new FormData();	// uploadAjax.jsp에 form태그가 없다. 대체할 무언가가 필요한데, FormData()
		
		for(var i=0;i<files.length;i++){
			if(!checkExtension(files[i].name,files[i].size) ){
				return false;
			}
			formData.append("file",files[i]);
		}
		
		$.ajax({
			url:"/jhtSpring/uploadAjax",
			data:formData,
			dataType:"json",
			// processData와 contentType은 파일업로드시 false가 되어야 함.
			processData:false,
			contentType:false,
			type:'POST',
			success:function(data){
				console.log(data);
				showUploadFile(data);
			}
		})
	})// drop 이벤트 end
	
	$(".uploadResult").on("click","span",function(e){ // x에 click이벤트 start
		//alert("x를 클릭");
		var fileName = $(this).data("file")// 파일명을 저장하는 변수
		var type=$(this).data("type")// 이미지 파일여부 저장하는 변수
		//alert(fileName);
		//alert(type);
		
		$.ajax({
			url:"/jhtSpring/deleteFile",
			data:{fileName:fileName,type:type},//어떤 파일 삭제해야 하는지(파일명), 이미지 파일인지 아닌지
			dataType:"text",
			type:"POST",
			success:function(data){
				if(data=="deleted"){
					alert("이미지가 삭제 되었습니다.");
				}
			}
		})
		
	})// x에 click이벤트 end
	
})










