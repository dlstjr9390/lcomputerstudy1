<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html>
<head>
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
	<H1>글 등록</H1>
		<hr>
		
		<form action="/registboardPro" method="post">
		<!-- csrf  -->
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
			<p>제목: <input type="text" name="bTitle" id="input_title"></p>
			<input type="hidden" name="bGroup" value="${board.bGroup }">
			<input type="hidden" name="bOrder" value="${board.bOrder }">
			<input type="hidden" name="bDepth" value="${board.bDepth }">
			<sec:authentication property="principal" var="principal"/>
				<input type="hidden" name="bWriter" value="${principal.username }">
			<p>내용: <input type="text" name="bContent" id="input_content"><p>
			<button type="submit">등록하기</button>
		</form>

</body>
</html>