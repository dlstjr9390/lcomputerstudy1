<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<style>
	table {
		border-collapse:collapse;
	}
	table tr th {
		font-weight:700;
	}
	table tr td, table tr th{
		border:1px solid #818181;
		width:200px;
		text-align:center;
	}
	
</style>
<body>
	<c:if test="${sessionScope.user.u_name != null}">
		<h4 style="text-align:right; margin-right:100px; color:blue;">${sessionScope.user.u_name }&nbsp;&nbsp;<a href="logout.do">로그아웃</a></h4>
	</c:if>


<%@ include file="db_connection.jsp" %>
	<h1>회원목록</h1>
	<table>
		<tr>
			<th>No</th>
			<th>ID</th>
			<th>이름</th>
		</tr>
		<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String query = "select * from user";
			pstmt = conn.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				String u_idx = rs.getString("u_idx");
				String u_id = rs.getString("u_id");
				String u_name = rs.getString("u_name");
		%>
		<tr>
			<td><a href="userDetail.jsp?u_idx=<%=u_idx %>"><%=u_idx %></a></td>
			<td><%=u_id%></td>
			<td><%=u_name %></td>
			<c:if test="${sessionScope.user.u_auth == true }">
				<td style="border:none;">
				<a href="edit-auth.do?u_idx=<%=u_idx %>"></a>
				</td>
			</c:if>
		</tr>
			
		<%
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		%>	
	</table>
</body>
</html>