<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 0729 -->
	<!-- �׷��� ���⿡ pageScope�� ������ָ� index���� ��û�� resp�� include2�� pageScope�� �Ǹ��Ƿ� �������� ��µȴ�
	<c:set var="x" value="10" scope="page"></c:set>-->
	<p>include2 page scope : ${pageScope.x }</p><!-- �׳� x�� ������ page�� �ƴϰ� requestScope�� ����ȴ� ���� ����� -->
	<p>include2 request scope : ${requestScope.x }</p>
	<p>include2 session scope : ${sessionScope.x }</p>
	<p>include2 application scope : ${applicationScope.x }</p>
