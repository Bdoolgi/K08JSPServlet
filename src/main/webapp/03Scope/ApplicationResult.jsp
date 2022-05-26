<%@ page import ="java.util.Set" %>
<%@ page import = "common.Person" %>
<%@ page import = "java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>application 영역</title>
	<h2>application 영역의 속성 읽기</h2>
	
	<%
	Map<String, Person> maps = (Map<String, Person>)application.getAttribute("maps");
	/*
	Map컬렉션은 Key를 통해 value를 저잦ㅇ하므로 반복전에 key를 먼저 얻어와야한다.
	KeySet()을 통해 얻어온 key의 목록을 통해 반복하고, get()을통해  )
	*/
	Set<String> keys = maps.keySet();
	for(String key : keys){
		Person person = maps.get(key);
		out.print(String.format("이름:%s,나이:%d<br>",
				person.getName(), person.getAge()));
	}
	%>
</head>
<body>

</body>
</html>