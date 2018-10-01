<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="insertPro.jsp">
<table>
<tr>
<td class="label"><label for="id">아이디</label></td>
<td class="content"><input id="id" name="id" type="text" size="20" maxlength="50" placeholder="example@kings.com" autofocus required></td>
</tr>

<tr>
<td class="label"><label for="pw">비밀번호</label></td>
<td class="content"><input id="pw" name="pw" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16" required></td>
</tr>

<tr>
<td class="label"><label for="name">이름</label></td>
<td class="content"><input id="name" name="name" type="text" size="20" placeholder="이름입력" maxlength="10" required></td>
</tr>

<tr>
<td class="label"><label for="addr">주소</label></td>
<td class="content"><input id="addr" name="addr" type="text" size="20" placeholder="주소 입력" maxlength="100" required></td>
</tr>

<tr>
<td class="label"><label for="tel">전화번호</label></td>
<td class="content"><input id="tel" name="tel" type="tel" size="20" placeholder="010-0000-0000" maxlength="20" required></td>
</tr>

<tr>
<td class="label2" colspan="2"><input type="submit" value="입력완료">
<input type="reset" value="다시입력"></td>
</tr>
</table>
</form>
</body>
</html>