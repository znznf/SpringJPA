<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/jqLib/mysStyle.css" >
	<title>Home</title>
<script src="resources/jqLib/jquery-3.2.1.min.js"></script>
<script src="resources/jqLib/axTest01.js"></script>
<script>
   function setClock() {
      var now = new Date();
      var t = '* Now : '+
      now.getFullYear()+'년 '+(now.getMonth()+1)+'월 '+now.getDate()+'일 '+
      now.getHours()+'시 '+now.getMinutes()+'분 '+now.getSeconds()+'초';
      document.getElementById('clock').innerHTML=t;
      //setTimeout('setClock()',1000); // 단위 1/1000초
      setInterval('setClock()',1000); // 단위 1/1000초
      // 위 둘은 다른 메서드 이지만 function에 적용 했을때 동일한 결과
   }
</script>
</head>
<body onload="setClock()">
<h1>
	Hello Spring04 JPA !!!  
</h1>

<P>* Start : ${serverTime}</P>
   <span id="clock"></span><br>
<hr><br>
<c:if test="${message != null}">
	=> ${message}<br>
</c:if>

<a href="blist">BoardList</a>&nbsp;&nbsp;


</body>
</html>
