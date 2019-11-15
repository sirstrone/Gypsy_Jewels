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
		pageContext.setAttribute("name", "pageContextValue");
		request.setAttribute("name", "requestValue");
		session.setAttribute("name", "SessionValue");
		application.setAttribute("name", "application");
	%>

	<%-- ${pageScope.myxq}
<br/>
${requestScope.name }
<br/>
${sessionScope.session}
<br/>
${application.app} --%>
	<%-- ${name } --%>
	${1+1 } ${empty name}
</body>
</html>