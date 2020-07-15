<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set value="페이지 상세보기" var="pageName"></c:set>
<%@ include file="../part/head.jspf" %>

<div class="con table-list">
	<table>
		<colgroup>
			<col width="200" />
		</colgroup>
		<tbody>
			<tr>
				<th>제목</th>
				<td>${article.title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${article.body }</td>
			</tr>
			<tr>
				<th>비고</th>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>

<%@ include file="../part/foot.jspf" %>