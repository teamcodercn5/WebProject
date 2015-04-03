<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String url = (String) session.getAttribute("currentUrl");
	session.removeAttribute("user");
	session.removeAttribute("cssuser");
	response.sendRedirect(url);
%>