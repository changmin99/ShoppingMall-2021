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
	 	<table border="1" align=center style="width:80%;overflow:auto;">
				<caption>
					<h1>홈쇼핑 회원 등록</h1>	
				</caption>
				<tr>
					<th>회원번호</th>
					<th>회원성명</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>가입일자</th>
					<th>고객등급</th>
					<th>거주지역</th>
				</tr>
				<%@page import="Dao.*,Dto.*,java.util.*,java.text.*" %>
				<%
					ShopDAO dao = ShopDAO.getInstance();
					List<MemberDTO> list = dao.getMemberList();
					
					/* 날짜 포맷팅 객체 */
					SimpleDateFormat fmt = new SimpleDateFormat("yyyy-mm-dd");
					
				%>
				
				<%
				for(int i=0;i<list.size();i++) 
				{
				%>
				<tr>
					<td><%=list.get(i).getCustno() %></td>
					<td><%=list.get(i).getCustname() %></td>
					<td><%=list.get(i).getPhone() %></td>
					<td><%=list.get(i).getAddress() %></td>
					<%
						//String->Date로 변경 
						Date tmp = fmt.parse(list.get(i).getJoindate());
					%>
					<td><%=fmt.format(tmp) %></td>
					
					<%
						String grade = list.get(i).getGrade();
						if(grade.equals("A"))
						{
							%><td>VIP</td><%
						}
						else if(grade.equals("B"))
						{
							%><td>일반</td><%
						}
						else if(grade.equals("C"))
						{
							%><td>직원</td><%
						}
					%>
					
					<td><%=list.get(i).getCity() %></td>
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