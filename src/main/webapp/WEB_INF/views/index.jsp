<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<style>
	table{
		border-collapse:collapse;
	}
	
	table tr th{
		font-weight:700;
	}
	
	table tr td, table tr th{
		border:1px solid #818181;
		width:250px;
		text-align:center;
	
	}
	
	a{
		text-decoration:none;
		color:#000;
	}
	
	ul{
		
		list-style:none;
		padding:0;
	}
	
	li{
	
		list-style:none;
		padding:0;
</style>	
<body>
	<h1>Home Page</h1>
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
				<h3>
					<span style="color:#808080">${principal.username }</span>님&nbsp; 
					<a style="text-align:right ; color:red;"href="/logout">로그아웃</a>&nbsp;
					<sec:authorize access="isAuthenticated()">
		 					<a style="font-size:15px;"href="/user/info">내 정보</a>
		 					<a style="font-size:15px;"href="/admin">관리자</a>
					</sec:authorize>			
				</h3>
		</sec:authorize>					
			<sec:authorize access="isAnonymous()">
				<a href="/login">로그인</a>
				<a href="/beforeSignUp">회원가입</a>
			</sec:authorize>
		<hr>				
		<table style="margin-bottom:30px">
			<tr>
				<th colspan="5" style="text-align:center;">게시글 수: ${pagination.count }</th>
			</tr>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>조회수</th>
				<th>작성일시</th>
			</tr>
			<c:forEach items="${list}" var="item" varStatus="status">
				<tr>	
					<td><a href="/detailboard?bId=${item.bId }">${item.b_rownum }</a></td>
					<c:if test="${item.bDepth > 0 }">
						<td style="text-align:left">
							<span style="color:red; font-style:italic; padding-left:${item.bDepth * 20}px;">
								re:
							</span>
							<a href="/detailboard?bId=${item.bId }">
								${item.bTitle }
							</a>
						</td>
					</c:if>
					<c:if test="${item.bDepth == 0 }">
						<td style="text-align:left">
							<a href="/detailboard?bId=${item.bId }">
								${item.bTitle }
							</a>
						</td>
					</c:if>
					<td>${item.bWriter }</td>
					<td>${item.bView }</td>
					<td>${item.bDatetime }</td>	
				</tr>
			</c:forEach>		
		</table>
		<sec:authorize access="isAuthenticated()">
			<a href="/Before_registboard" style="margin:10px; padding:10px; width:70px;font-weight:700;background-color:#818181;color:#fff;">작성</a>
		</sec:authorize>
<!--pagination -->
	<div>
		<ul class="ulpagination">
			<c:choose>
				<c:when test = "${pagination.prevPage lt pagination.nextPage and pagination.prevPage gt 0}">
					<li class="lipagination">
						<a href="/?page=${pagination.prevPage }">
							◀
						</a>
					</li>
				</c:when>
			</c:choose>
			
			<c:forEach var="i" begin="${pagination.startPage }"	end="${pagination.endPage }" step="1">
			
				<c:choose>
					<c:when test="${pagination.page eq i }">
					
						<li class="lipagination" style="background-color:#ededed;">
							<span>${i}</span>
						</li>
					</c:when>
					
					<c:when test="${pagination.page ne i }">
						<li class="lipagination">
							<a href="/?page=${i}">${i }</a>
						</li>
					</c:when>
				</c:choose>
			</c:forEach>
			
			<c:choose>
				<c:when test="${pagination.nextPage le pagination.lastPage }">
					<li class="lipagination">
						<a href="/?page=${pagination.nextPage }">▶</a>
					</li>
				</c:when>
			</c:choose>
		</ul>
		<script>
			$(function(){
				$('.ulpagination').css({'width':'600px', 'height':'50px', 'margin':'10px auto'});
				$('.lipagination').css({'list-style':'none', 'width':'50px', 'line-height':'50px', 'border':'1px solid #ededed', 'float':'left', 'text-align':'center',
				 'margin':'0 5px','border-radius':'5px'})	 
			});	
		</script>
	
	</div>	
</body>
</html>