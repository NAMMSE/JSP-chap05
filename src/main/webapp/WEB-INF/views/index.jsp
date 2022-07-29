<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/views/jspf/taglib.jspf" %>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="EUC-KR">
<title>Include Ȱ���ϱ�</title>
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
		<dd>�ش� ������ �״�� ���� ���Ͽ� ���Խ�Ű�� ���</dd> <%-- bootstrap_header --%>
		<dd>�ش� ������ ������ �״�� �����´�</dd>
		<dt>jsp include</dt>
		<dd>�ش� ������ �����Ų ����� ���� ���Ͽ� ���Խ�Ű�� ���</dd><%-- header, footer, body --%>
		<dd>req�� �ش� ���Ͽ� ������ resp�� �޾ƿ´�</dd>
		<dd>req�� ������ �ޱ� ������ page���� request�� �� ������</dd> 
		<!-- index���� ���� pageScope�� index���� ������� ������� �͵� �´µ� req�� ������ resp�� �޾ƿö� include2�� pagescope
		���� �޾ƿ��� ���ε� include2���� ���� pageScope�� ���� �����̴�-->
		<dd>jsp:include == Dispatcher.include(req,resp)</dd>
	</dl>

</body>
</html>