<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set value="${board.name } 수정" var="pageName"></c:set>
<%@ include file="../part/head.jspf" %>

<form action="./doModify" method="post">
	<input type="hidden" name="id" value="${article.id }" />
	<div class="con table-list">
		<table>
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" placeholder="제목을 입력해주세요."
						value="${article.title }" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="body" placeholder="내용을 입력해주세요" cols="30" rows="10">${article.body }</textarea></td>
				</tr>
				<tr>
					<th>비고</th>
					<td><input type="submit" value="수정" /></td>
				</tr>
			</tbody>
		</table>
	</div>
</form>

<%@ include file="../part/foot.jspf" %>