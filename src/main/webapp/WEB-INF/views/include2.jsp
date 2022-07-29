<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 0729 -->
	<!-- 그래서 여기에 pageScope를 만들어주면 index에서 요청시 resp에 include2의 pageScope가 실리므로 브라우저에 출력된다
	<c:set var="x" value="10" scope="page"></c:set>-->
	<p>include2 page scope : ${pageScope.x }</p><!-- 그냥 x만 적으면 page가 아니고 requestScope가 적용된다 가장 가까운 -->
	<p>include2 request scope : ${requestScope.x }</p>
	<p>include2 session scope : ${sessionScope.x }</p>
	<p>include2 application scope : ${applicationScope.x }</p>
