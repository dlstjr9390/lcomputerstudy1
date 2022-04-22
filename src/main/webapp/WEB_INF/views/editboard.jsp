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
		
		<form action="/editboardPro" method="post">
		<!-- csrf  -->
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
			<input type="hidden" name="bId" value="${detailboard.bId }">
			<p>제목: <input type="text" name="bTitle" value="${detailboard.bTitle }"id="input_title"></p>
			<sec:authentication property="principal" var="principal"/>
				<input type="hidden" name="bWriter" value="${principal.username }">
			<p>내용: <input type="text" name="bContent" value="${detailboard.bContent }"id="input_content"><p>
			<button type="submit">등록하기</button>
		</form>

</html>