<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
session영역에 저장된 인증된 회원인증관련 속성값이 있는지 확인하여 만약 없다면
로그인 페이지로 이동한다. 이 때 utils 패키지에 생성한 클래스를 활용한다.
*/
if(session.getAttribute("UserId")==null){
	/*
	자바스크립트를 사용하기 위한 유틸리티 클래스를 통해 경고창을 띄우고
	location.href로 페이지를 이동한다.
	*/
	JSFunction.alertLocation("로그인 후 이용해 주십시오.", "../06Session/LoginForm.jsp",out);
	
	//만약 아래에 JSP코드가 있다면 위의 JS코드는 실행되지않는다.
	//response.sendRedirect("List.jsp");
	
	/*
	JSP파일에서 return을 사용하는것은 _jspService() 메서드의 실행을 종료하겠다는
	의미를 가지고있다. 또한 Javascript보다 JSP코드의 실행이 우선순위가 높으므로
	정상적인 실행을 위해 return을 기술하는것이 좋다.
	*/
	return;
}
%>