<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include 활용하기</title>
<%-- 0728 --%>

<%@ include file="/WEB-INF/views/jspf/bootstrap_header.jspf" %>

</head>
<body>

	<h3># include</h3>>
	
	<dl>
		<dt>include directive</dt>
		<dd>해당 파일을 그대로 현재 파일에 포함시키는 방식</dd> <%-- bootstrap_header --%>
		<dt>jsp include</dt>
		<dd>해당 파일을 실행시킨 결과를 현재 파일에 포함시키는 방식</dd><%-- header, footer, body --%>
	</dl>

</body>
</html>