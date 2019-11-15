<%@page import="com.it666.domain.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 前缀c核心标签库 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("count", 100);
	%>
	<c:if test="${1==1 }">
	myxq
	</c:if>

	<c:if test="${count>50 }">
		<h1>大于50</h1>
	</c:if>

	<c:if test="${count<50 }">
		<h1>小于50</h1>
	</c:if>
	<hr />
	<!-- 从域中取数据 自动存到pageScope里面 -->
	<c:forEach begin="0" end="5" var="i">${i }<br />
	</c:forEach>
	<hr />
	<%
		List<String> strlist = new ArrayList<String>();
		strlist.add("aaa");
		strlist.add("bbb");
		strlist.add("ccc");
		request.setAttribute("strlist", strlist);
	%>
	<c:forEach items="${strlist}" var="str">
	${str }<br>
	</c:forEach>
	<hr />
	<%
		List<User> userList = new ArrayList<User>();
		User u1 = new User();
		u1.setUsername("u1");
		User u2 = new User();
		u2.setUsername("u2");
		userList.add(u1);
		userList.add(u2);
		session.setAttribute("userList", userList);
	%>
	<c:forEach items="${userList}" var="user">
	${user.username }<br>
	</c:forEach>


</body>
</html>