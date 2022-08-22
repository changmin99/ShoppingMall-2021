<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*,Dto.* " %>


<%
	/* 반드시 액션태그보다 먼저 올 것  */
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>

<jsp:useBean id="MemberDTO" class="Dto.MemberDTO" scope="request"/> 
<jsp:setProperty name="MemberDTO" property="*" /> 

<%@page import="Dao.*,Dto.*" %>
 <%	
 		System.out.println("DTO : " + MemberDTO);
		
		ShopDAO dao = ShopDAO.getInstance();
 		boolean flag = dao.MemberJoin(MemberDTO);
 		
 		if(flag==true)
 		{
 			%>
 			<script>
 				alert("회원등록이 완료되었습니다.");
 				history.back();
 			</script>
 			<%
 		}
 %>