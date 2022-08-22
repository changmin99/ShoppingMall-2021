<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- custno 받기 -->
<%@page import="Dao.*,Dto.*" %>
<%
		request.setCharacterEncoding("UTF-8"); //요청 관련 인코딩 처리
		response.setContentType("text/html;charset=utf-8"); //응답 관련 인코딩 처리

		ShopDAO dao = ShopDAO.getInstance();
		int custno = dao.getMaxcustNo();
		custno +=1;


%>

<!-- 스타일  -->
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
		<li><a href="/voteMember.do">회원목록 조회/수정</a></li>
		<li><a href="/voteList.do">회원매출조회</a></li>
		<li><a href="/voteResult.do">홈으로</a></li>	
	</ul>
</nav>
<section align=left>
		
		<form action="/proc/memberjoinproc.jsp" method="post" name="joinform" onsubmit="return false">
			<table border="1" align=center>
				<caption>
					<h1>홈쇼핑 회원 등록</h1>	
				</caption>
				<tr>
					<td>회원번호(자동발생)</td>
					<td><input type="text" name="custno" value="<%=custno%>"></td>
				</tr>
				<tr>
					<td>회원성명</td>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<td>회원전화</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td>회원주소</td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<td>가입일자</td>
					<td><input type="text" name="joindate"></td>
				</tr>
				<tr>
					<td>고객등급</td>
					<td><input type="text" name="grade"></td>
				</tr>
				<tr>
					<td>도시코드</td>
					<td><input type="text" name="city"></td>
				</tr>
				<tr>
					<td colspan="2">
						<center>
							<button onclick="inputcheck()"> 등록</button> 
							<input type="button" value="조회">
						</center>
					</td>
				</tr>
			</table>
		</form>

</section>
<footer>
Mollang 20.08.29 ver1.0
</footer>

</body>

	<script>
		function inputcheck()
		{
			 
			var f = document.joinform;
			
			if(f.custname.value.trim()==""){
				alert("회원성명이 입력되지 않았습니다!");
				f.custname.focus();
				return false;
			}
			if(f.phone.value.trim()==""){
				alert("회원 전화번호가 입력되지 않았습니다.");
				f.phone.focus();
				return false;
			}
			if(f.address.value.trim()==""){
				alert("회원주소가 입력되지 않았습니다.");
				f.address.focus();
				return false;
			}
			if(f.joindate.value.trim()==""){
				alert("가입일자가 입력되지 않았습니다.");
				f.joindate.focus();
				return false;
			}
			if(f.grade.value.trim()==""){
				alert("고객등급이 입력되지 않았습니다.");
				f.grade.focus();
				return false;
			}	
			if(f.city.value.trim()==""){
				alert("도시코드가 입력되지 않았습니다.");
				f.city.focus();
				return false;
			}
				
			f.action="/proc/memberjoinproc.jsp";
			f.submit();
			
		}
	</script>
	
	
	
	
</html>