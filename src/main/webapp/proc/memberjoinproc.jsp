<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*,Dto.* " %>

<jsp:useBean id="MemberDTO" class="Dto.MemberDTO" scope="request"/> 
<jsp:setProperty name="MemberDTO" property="*" /> 

 <%	
	System.out.println("TEST : " + MemberDTO); 	
 %>