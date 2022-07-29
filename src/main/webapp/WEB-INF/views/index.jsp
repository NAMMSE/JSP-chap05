<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/views/jspf/taglib.jspf" %>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="EUC-KR">
<title>Include 활용하기</title>
<%-- 0728 --%>

<%@ include file="/WEB-INF/views/jspf/bootstrap_header.jspf" %>

</head>
<body>

	<c:set var="x" value="10" scope="page"></c:set>
	<c:set var="x" value="10" scope="request"></c:set>
	<c:set var="x" value="10" scope="session"></c:set>
	<c:set var="x" value="10" scope="application"></c:set>
	<p>x: ${x }</p>
	
	
	
	<h3># include</h3>
	
	
	
	
	<%@ include file="/WEB-INF/views/include1.jsp" %>
	<jsp:include page="/WEB-INF/views/include2.jsp" />
	
	<dl>
		<dt>include directive</dt>
		<dd>해당 파일을 그대로 현재 파일에 포함시키는 방식</dd> <%-- bootstrap_header --%>
		<dd>해당 파일의 내용을 그대로 가져온다</dd>
		<dt>jsp include</dt>
		<dd>해당 파일을 실행시킨 결과를 현재 파일에 포함시키는 방식</dd><%-- header, footer, body --%>
		<dd>req를 해당 파일에 보내고 resp를 받아온다</dd>
		<dd>req를 보내고 받기 때문에 page보다 request가 더 가깝다</dd> 
		<!-- index에서 만든 pageScope가 index에서 벗어났을때 사라지는 것도 맞는데 req를 보내고 resp를 받아올때 include2의 pagescope
		값을 받아오는 것인데 include2에서 만든 pageScope가 없기 때문이다-->
		<dd>jsp:include == Dispatcher.include(req,resp)</dd>
	</dl>

</body>
</html>