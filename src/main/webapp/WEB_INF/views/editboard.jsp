<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>
	#input_title{
		width:300px;	
	}
	#input_content{
		width:500px;
		height:500px;
	}
</style>
<body>
	<H1>글 수정</H1>
		<hr>
		
		<form action="/editboardPro" method="post" enctype="multipart/form-data">
		<!-- csrf  -->
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
			<input type="hidden" name="bId" value="${board.bId }">
			<p>제목: <input type="text" name="bTitle" id="input_title" value="${detailboard.bTitle }"></p>
			<sec:authentication property="principal" var="principal"/>
				<input type="hidden" name="bWriter" value="${principal.username }">
			<p>내용: <input type="text" name="bContent" id="input_content"  value="${detailboard.bContent }" ><p>
			<p class="add">파일첨부:&nbsp;<input type="file" id="addfile" class= "files" name="imageFile"><button type="button" class="btnAdd">추가</button></p>
			<button type="submit">등록하기</button>
		</form>
		
	<script>
		var maxAppend = 1; //첨부파일 갯수
		
		$(document).on('click', '.btnAdd', function(){
			if(maxAppend >= 3){
				alert("최대 첨부파일 개수는 3개 입니다.");
				return;
				
			} else{
				$('.add').append('<p>'+
						'<span style="visibility:hidden;">파일첨부: </span>'+
						'<input type="file" id="addfile" class= "files" name="imageFile">'+
						'<button type="button" class="btnAdd">추가</button>'+
						'<button type="button" class="btnDel">삭제</button>'+'</p>');
				maxAppend ++;
				};
			});

		$(document).on('click', '.btnDel', function(){
				$(this).closest('p').remove();
				maxAppend --;	
			});
	</script>
</body>
</html>