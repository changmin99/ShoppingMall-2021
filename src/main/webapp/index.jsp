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
		<li><a href="-">회원매출조회</a></li>
		<li><a href="-">홈으로</a></li>	
	</ul>
</nav>
<section align=left>
<br><br><br><br><br>
쇼핑몰 회원정보의 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다<br>
프로그램 작성 순서<br>
1. 회원정보 테이블을 생성<br>
2. 매출정보 테이블을 생성<br>
3. 회원정보, 매출정보 테이블에 서시된 문제지의 참조데이터를 추가 생성<br>
4. 회원정보 입력 화면 프로그램을 작성<br>
5. 회원정보 조회 프로그램을 작성<br>
6. 회원매출정보 조회 프로그램을 작성 <br>
</section>
<footer>
Mollang 20.08.29 ver1.0
</footer>

</body>
</html>