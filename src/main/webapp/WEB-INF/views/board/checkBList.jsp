<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/jqLib/mysStyle.css" >
<meta charset="UTF-8">
<title>** BoardList **</title>
</head>
<body>
<h2>** MVC2 BoardList **</h2>``
<img  src="resources/image/bar.gif"><br>
<div id="searchbar">
<form action="bcheck" method="get">
	<b>step :</b>&nbsp;
	<input type="checkbox" name=check value = "0">원글&nbsp;
	<input type="checkbox" name=check value = "1">답글&nbsp;
	<input type="submit" value="검색">
	<input type="reset" value="취소">
</form>    
</div>
<c:if test="${message != null}">
 => ${message}<br>
</c:if>
<table width=800 border="0">
<tr align="center" height=30 bgcolor="springgreen">
	<td>Seq</td><td>Title</td><td>ID</td>
	<td>RegDate</td><td>Count</td>
</tr>
<c:forEach var="mm" items="${BList}">
	<tr align="center" height=30>
	<td>${mm.seq}</td>
	<td align="left">
		<!-- indent 값에 따른 들여쓰기 -->
		<c:if test="${mm.indent>0 }">
			<c:forEach begin="1" end="${mm.indent }">
				<span>&nbsp;&nbsp;</span>
			</c:forEach>
			<span style="color: orange">re..</span>
		</c:if>
		<c:if test="${logID!=null}">
			<a href="bdetail?seq=${mm.seq}&id=${mm.id}">${mm.title}</a>
		</c:if>
		<c:if test="${logID==null}">
			${mm.title}
		</c:if>
	</td>
	<td>${mm.id}</td>
	<td>${mm.regdate}</td><td>${mm.cnt}</td>
	</tr>
</c:forEach>
</table>
<hr>

<c:if test="${logID!=null}">
	<a href="binsertf">[새글등록]</a>&nbsp;
</c:if>
<c:if test="${logID==null}">
	<a href="loginf">[LogIn]</a>&nbsp;&nbsp;
	<a href="joinf">[Join]</a><br>
</c:if>
<a href="home">[Home]</a><br>
</body>
</html>