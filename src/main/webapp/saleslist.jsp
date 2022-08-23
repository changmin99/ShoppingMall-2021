<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
	body{
		text-align:center;
	}
	header
	{
		height:80px;
	}
	nav
	{
	
	}
	nav ul
	{
		list-style:none;
		padding-left:0px;
		display:flex;
		justify-content: space-evenly;
	}
	nav li a{
		text-decoration:none;
		color : black;
	}
	section
	{
		height:500px;
	}
	footer	
	{
		height:300px;
	}
	
</style>

</head>
<body>



<header>
	<h1>쇼핑몰 회원관리 ver 1.0</h1>
</header>
<nav>
	<ul>
		<li><a href="/memberjoinform.jsp">회원등록</a></li>
		<li><a href="/memberinfo.jsp">회원목록 조회/수정</a></li>
		<li><a href="/saleslist.jsp">회원매출조회</a></li>
		<li><a href="/index.jsp">홈으로</a></li>	
	</ul>
</nav>
<section align=center>
	<table border="1" align=center style="width:50%;overflow:auto;">
				<caption>
					<h1>회원매출조회</h1>	
				</caption>
				<tr>
					<th>회원번호</th>
					<th>회원성명</th>
					<th>고객등급</th>
					<th>매출</th>
				</tr>
				<%@page import="Dao.*,Dto.*,java.util.*" %>
				<%
					ShopDAO dao = ShopDAO.getInstance();
					List<SalesDTO> list = dao.getSaleslist();
					for(int i=0;i<list.size();i++)
					{
				%>
				<tr>
					<td><%=list.get(i).getCustno() %></td>
					<td><%=list.get(i).getCustname() %></td>
					<td><%=list.get(i).getGrade() %></td>
					<td><%=list.get(i).getSales() %></td>
				</tr>
				<%
					}
				%>
	</table>
</section>
<footer>
Mollang 20.08.29 ver1.0
</footer>

</body>
</html>