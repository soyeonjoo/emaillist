<%@page import="java.util.List"%>
<%@page import="kr.ac.sungkyul.emaillist.dao.EmailListDao"%>
<%@page import="kr.ac.sungkyul.emaillist.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("utf-8");

String lastName = request.getParameter("ln");
String firstName = request.getParameter("fn");
String email = request.getParameter("email");

EmailListDao dao = new EmailListDao();
EmailListVo vo  = new EmailListVo();

vo.setFirstName(firstName);
vo.setLastName(lastName);
vo.setEmail(email);



boolean result = dao.insert(vo);


response.sendRedirect("index.jsp");

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 바디를 쓸필요가없음 redirect하기때문에  -->

</body>
</html>