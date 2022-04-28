<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="CommentList">
		<table>
			<c:forEach items="${c_list }" var="item" varStatus="status">
				<tr>
					<td style="width:150px">작성자: ${item.cWriter }</td>
					
					<c:if test="${item.cIsedit gt 0 }"> <!-- 수정된 글일 경우 -->
						<c:if test="${item.cOrder gt 1 }"> <!-- 대댓글일 경우 -->
							<td class="beforeEdit" style="width:400px; text-align:left;">
								<span style="color:red; font-style:italic; padding-left:${item.cDepth * 20}px;">RE:</span>(수정됨)${item.cContent }
							</td>
						</c:if>	
						<c:if test="${item.cOrder lt 2 }"> <!-- 원댓글일 경우 -->
							<td class="beforeEdit" style="width:400px; text-align:left;">
								&nbsp;(수정됨)${item.cContent }
							</td>	
						</c:if>	
					</c:if>
					
					<c:if test="${item.cIsedit eq 0 }"> <!-- 수정되지 않은 글일 경우 -->
						<c:if test="${item.cOrder gt 1 }"><!-- 대댓글일 경우 -->
							<td class="beforeEdit" style="width:400px; text-align:left;">
							<span style="color:red; font-style:italic; padding-left:${item.cDepth * 20}px;">RE:</span>${item.cContent }</td>
						</c:if>
						<c:if test="${item.cOrder lt 2 }"><!-- 원댓글일 경우 -->
							<td class="beforeEdit" style="width:400px; text-align:left;">
							&nbsp;${item.cContent }</td>
						</c:if>
					</c:if>
				<sec:authorize access="isAuthenticated()">
					<td class="afterEdit" style="display:none;">
						<form class="editComment" action="/editComment" name="editComment" method="post">					
								<input type="hidden" name="cId" value="${item.cId}">
								<input type="text" size="55" name="cContent" value="${item.cContent }">
								<input type="hidden" name="bId" value="${detailboard.bId }">
						</form>
				</sec:authorize>		
					<td style="width:250px">작성일시: ${item.cDatetime }</td>
				
				<sec:authorize access="isAuthenticated()">
					<td class="buttons"style="width:200px">
						<button class="editSubmit" style="display:none;">등록</button> <!-- 댓글 수정 등록 -->
						<button class="btnReply" cId="${item.cId }" cGroup="${item.cGroup }">답글</button>
						<button class="btnEdit"style="margin-left:3px; margin-right:3px">수정</button>
						<button class="btnDel" cId="${item.cId }" cGroup="${item.cGroup }" cDepth="${item.cDepth }" bId="${detailboard.bId }">삭제</button>
					</td>
				<tr class="afterReply" style="display:none;">
					<td style="width:150px">
						<sec:authentication property="principal" var="principal"/>
							작성자: ${principal.username }
					</td>
					<td><!-- 대댓글 -->
						<textarea cols="80" rows="1"></textarea>
					</td>
					<td><!-- 대댓글 등록 -->
						<button class="ReplySubmit" cId="${item.cId }" bId="${detailboard.bId }" cWriter="${principal.username }" 
													cGroup="${item.cGroup }" cOrder="${item.cOrder }" cDepth="${item.cDepth }">등록
						</button>
					</td>
				</tr>
				</sec:authorize>	
			</c:forEach>	
		</table>
			
 <!-- 댓글 작성 -->
		<sec:authorize access="isAuthenticated()">
			<table style="margin-top:50px; border:hidden;">
				<tr style="border:hidden;">
					<td style="text-align:left; border:hidden;"> 댓글:</td>
				<tr style="border:hidden;">
					<td style ="border:hidden; width:600px;">
						<form class="CommentSubmit" action="/RegistComment" method="post">
							<sec:authentication property="principal" var="principal"/>
								<input type="hidden" name="cWriter" value="${principal.username }">
								<input type="hidden" name="bId" value="${detailboard.bId }">
								<input type="text" name="cContent" style="float:left; width:500px;" />
						</form>
					</td>
					<td style="align:left; width:60px;">
						<button class="btnSubmit">등록</button>
					</td>
				</tr>	
			</table>
		</sec:authorize>	
	</div>
</body>
</html>