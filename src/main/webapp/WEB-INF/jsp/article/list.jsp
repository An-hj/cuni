<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set value="${board.name } 리스트" var="pageName"></c:set>
<%@ include file="../part/head.jspf" %>

<div class="con table-list">
	<table>
		<colgroup>
			<col width="10" />
			<col />
			<col width="200" />
			<col width="100" />
		</colgroup>
		<thead>
			<tr>
				<th>ID</th>
				<th>제목</th>
				<th>날짜</th>
				<th>비고</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${articles }" var="article">
			<tr>
				<td>${article.id }</td>
				<td><a href="./detail?id=${article.id }">${article.title }</a></td>
				<td>${article.regDate }</td>
				<td><a href="./delete?id=${article.id }">삭제</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@ include file="../part/foot.jspf" %>