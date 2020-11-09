<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** [글 수정] Spring MVC2 **</title>
<link rel="stylesheet" type="text/css" href="resources/jqLib/myStyle.css">
</head>
<body>
<h2>** [글 수정] Spring MVC2 **</h2>
<form action="bupdate" method="post">
<table>
  <tr><td bgcolor="Chartreuse">S E Q</td>
      <td><input type="text" name="seq" value="${Detail.seq}" readonly="readonly">
  </td></tr>
  <tr><td bgcolor="Chartreuse">Title</td>
      <td><input type="text" name="title" value="${Detail.title}">
  </td></tr>
  <tr><td bgcolor="Chartreuse">I  D</td>
      <td>${Detail.id}</td></tr>
  <tr><td bgcolor="Chartreuse">Content</td>
      <td><textarea name="content" rows="10" cols="40">${Detail.content}</textarea>
  </td></tr>
  <tr><td bgcolor="Chartreuse">RegDate</td>
      <td>${Detail.regdate}</td></tr>
  <tr><td bgcolor="Chartreuse">ViewCount</td>
      <td>${Detail.cnt}</td></tr>
  <tr><td></td>
  	  <td><input type="submit" value="글수정">&nbsp;
  	      <input type="reset"  value="Reset">
  </td></tr>
</table>
</form><br>
<br>
<hr>
<a href="binsertf">[새글등록]</a>&nbsp;
<a href="bdelete?seq=${Detail.seq}">[글삭제]</a>&nbsp;
<a href="blist">BoardList</a><br>
<a href="list">MemberList</a>&nbsp;
<a href="home">Home</a><br>
</body>
</html>