<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 0729 -->
	
	<p>include1 page scope : ${pageScope.x }</p>
	<p>include1 request scope : ${requestScope.x }</p>
	<p>include1 session scope : ${sessionScope.x }</p>
	<p>include1 application scope : ${applicationScope.x }</p>

</body>
</html>