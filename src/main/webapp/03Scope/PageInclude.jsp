<%@ page import ="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
	<h4>Include 페이지</h4>
<%
int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
//String pString2 = pageContext.getAttribute("pageString").toString();
Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
    <li>Integer 객체 : <%= pInteger2 %></li>
    <li>String 객체 : <%= pageContext.getAttribute("pageString") %></li>
    <li>Person 객체 : <%= pPerson2.getName() %>, <%= pPerson2.getAge() %></li>
</ul>

<!-- 
지시어를 통한 include는 포함할 페이지의 원본소스를 그대로 현재 문서에 포함시킨 후
컴파일을 진행한다. 따라서 동일한 페이지로 취급되므로 page영역이 그대로 공유된다.
 -->
</body>
