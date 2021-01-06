<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GBVo"%>

<%
	request.setCharacterEncoding("utf-8");

	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestBookDao gbDao = new GuestBookDao();
	
	//GBVo gbVo = gbDao.getGusetWriting(no); //삭제 시나리오 변경 - id&pw 비교 후 리턴값 활용
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			int result = gbDao.delete(no, password);
			if(result == 0) { %>
				비밀번호를 잘 못 입력하셨습니다.<br>
				<a href="./deleteForm.jsp?no=<%=no%>">비밀번호 다시 입력하기</a><br>
				<a href="./addList.jsp">메인으로 돌아가기</a>
		<%		//response.sendRedirect("./addList.jsp");
			}else{ %>
				삭제되었습니다.<br>
				<a href="./addList.jsp">메인으로 돌아가기</a>
		<% } %>
		
</html>