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
					
					<td class="afterEdit" style="display:none;">
						<form class="editComment" action="/editComment" name="editComment" method="post">					
								<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
								<input type="hidden" name="cId" value="${item.cId}">
								<input type="text" size="55" name="cContent" value="${item.cContent }">
								<input type="hidden" name="bId" value="${detailboard.bId }">
						</form>
					<td style="width:250px">작성일시: ${item.cDatetime }</td>
					
					<td class="buttons"style="width:200px">
						<button class="editSubmit" style="display:none;">등록</button> <!-- 댓글 수정 등록 -->
						<button class="btnReply">답글</button>
						<button class="btnEdit"style="margin-left:3px; margin-right:3px">수정</button>
						<button class="btnDel" cId="${item.cId }" cGroup="${item.cGroup }" cDepth="${item.cDepth }" bId="${detailboard.bId }">삭제</button>
					</td>
					
				<tr class="afterReply" style="display:none;">
					<td style="width:150px">작성자: ${item.cWriter }</td>
					<td>
						<form class="ReplyComment" action="/RegistComment" method="post">	
						<sec:authentication property="principal" var="principal"/>
							<input type="hidden" name="cWriter" value="${principal.username }">			
							<input type="hidden" name="cId" value="${item.cId}">
							<input type="hidden" name="cGroup" value="${item.cGroup}">
							<input type="hidden" name="cOrder" value="${item.cOrder}">
							<input type="hidden" name="cDepth" value="${item.cDepth}">
							<input type="text" size="55" name="cContent">
							<input type="hidden" name="bId" value="${detailboard.bId }">
						</form>
					</td>
					<td><button class="ReplySubmit">등록</button></td> <!-- 대댓글 등록 -->
				</tr>	
			</c:forEach>	
		</table>
	</div>

</body>
</html>