<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set value="로그인" var="pageName"></c:set>
<%@ include file="../part/head.jspf" %>

<form action="./doLogin" method="post">
	<div class="con table-list">
		<table>
			<tbody>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="loginId" placeholder="아이디를 입력해주세요."
						 /></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="loginPw" placeholder="비밀번호를 입력해주세요."
						 /></td>
				</tr>
				<tr>
					<th>로그인</th>
					<td><input type="submit" value="로그인" /></td>
				</tr>
			</tbody>
		</table>
	</div>
</form>

<%@ include file="../part/foot.jspf" %>