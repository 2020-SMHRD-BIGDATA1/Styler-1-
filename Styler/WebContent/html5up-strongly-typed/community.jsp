<%@page import="java.io.PrintWriter"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.communityDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.communityDTO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
	<head>
		<title>No Sidebar - Strongly Typed by HTML5 UP</title>
		<meta charset="euc-kr" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<style>
			#write{
				padding: 0px !important;
				width: 90px;
				left: 80%;
				height: 50px;
				
			}
			#join {
			    position: absolute;
			    top: 3em;
			    left: 75%;
			    right: 0%;
			    cursor: default;
			    
			}
			#login {
			    position: absolute;
			    top: 3em;
			    left: 83%;
			    right: 0%;
			    cursor: default;
			   
			}
			#myPage {
			    position: absolute;
			    top: 3em;
			    left: 75%;
			    right: 0%;
			    cursor: default;
			    height: 50px; padding: 0; width: 120px;
			}
			#logout {
			    position: absolute;
			    top: 3em;
			    left: 85%;
			    right: 0%;
			    cursor: default;
			    height: 50px; padding: 0; width: 120px;
			}
			
			.page {
			color: #000000;
			text-decoration : none;
			}
			
		</style>
	</head>
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container" style="padding: 5em 0 5em 0; background-color:white; position:fixed; left:0px; top:0px; width:100%; height:10%; text-align:center; z-index:1000;">

							<!-- Button -->
							<% 	
								MemberDTO info = (MemberDTO)session.getAttribute("id");
								if(info == null){
								System.out.print("로그인정보 못받아옴");
							%>
							
							<button id="join" value='join' >Join </button>
							<button id="login" value='login' onclick="location.href='login.jsp'">LogIn</button>  
							<% }else { %>
							
							<button id="myPage" value='myPage' onclick="">My Page</button>
							<button id="logout" value='logout'>Logout</button>  
							
							<% } %>
							
							<!-- <button id ="login" value ='login' type="submit" form="loginForm">Login</button> -->

						<!-- Logo 
							<h1 id="logo"><a href="main.jsp">#MOTD</a></h1>
							<p>What is your makeup for today?</p>-->

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon solid fa-home" href="main.jsp"><span>Home</span></a></li>
									<li><a class="icon solid fa-cog" href="makeupsearch.jsp"><span>Makeup</span></a></li>
									<li><a class="icon solid fa-retweet" href="mypouch.jsp"><span>My Pouch</span></a></li>
									<li><a class="icon solid fa-sitemap" href="community.jsp"><span>Community</span></a></li>
								</ul>
							</nav>

					</div>
				</section>

			<!-- Main -->
				<section id="main">
					<div class="container">
					<img src="whiteBG.png" width="100%"; height= "150px";>
						<div id="content">


<div class="row">
<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
<thead>
<tr> 
<th style="background-color : #eeeeee; text-align : center;">번호</th>
<th style="background-color : #eeeeee; text-align : center;">제목</th>
<th style="background-color : #eeeeee; text-align : center;">글내용</th>
<th style="background-color : #eeeeee; text-align : center;">작성자</th>
<th style="background-color : #eeeeee; text-align : center;">조회수</th>
<th style="background-color : #eeeeee; text-align : center;">추천수</th>
<th style="background-color : #eeeeee; text-align : center;">날짜</th>
</tr>
</thead>
<tbody>

	<% 
		int COMM_NUM = 0;
		if (request.getParameter("COMM_NUM") != null) {
			System.out.print("ㅎㅇ");
			COMM_NUM = Integer.parseInt(request.getParameter("COMM_NUM"));
			
	} %>
	
	
	<%-- <%
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO();
		MemberDTO info = dao.login(dto); 
		String userID=null;
	    if(info.getId()!=null){
	    userID =(String)info.getName();
	    }
	%> --%>
	
	
	<% 
		communityDAO dao2 = new communityDAO();
		ArrayList<communityDTO> list = dao2.getList(COMM_NUM);
		MemberDTO info2 = (MemberDTO)session.getAttribute("id");
		for (int i = 0; i<list.size(); i++) {
			System.out.print("게시판에서 확인"+COMM_NUM);
			%>
	
		<tr>
			<td><%= i+1 %></td>
			<td><a class="page" href="view.jsp?COMM_NUM=<%=list.get(i).getCOMM_NUM() %>"><%= list.get(i).getTitle() %></a></td>
			<td><%= list.get(i).getContent() %></td>
			<td><%= list.get(i).getMember_ID() %></td>
			<td>25</td>
			<td>12</td>
			<td><%= list.get(i).getCOM_DATE() %></td>
		</tr>

		<% } %>
</tbody>
</table>

<% if(COMM_NUM != 1) { %>
<a class="page" style="padding: 0 0 0 0;" href ="community.jsp?pageNumber=<%=COMM_NUM-1 %>" class="btn btn-success btn-arrow-left">이전</a>
<% }else {%>
<a class="page" style="padding: 0 0 0 0;" href ="community.jsp?pageNumber=<%=COMM_NUM+1 %>" class="btn btn-success btn-arrow-left">다음</a>
<% } %>

<button id="write" type="button" onclick="location.href='communitywrite.jsp'">글쓰기</button>
	<img src="whiteBG.png" width="100%"; height= "50px";>
</div>
</div>
							

			<!-- Footer -->
				<section id="footer">
					<div class="container">
				
						<header>
							<h2>Questions or comments? <strong>Get in touch:</strong></h2>
						</header>
						<div class="row">
							<div class="col-6 col-12-medium">
								<section>
									<form method="post" action="#">
										<div class="row gtr-50">
											<div class="col-6 col-12-small">
												<input name="name" placeholder="Name" type="text" />
											</div>
											<div class="col-6 col-12-small">
												<input name="email" placeholder="Email" type="text" />
											</div>
											<div class="col-12">
												<textarea name="message" placeholder="Message"></textarea>
											</div>
											<div class="col-12">
												<a href="#" class="form-button-submit button icon solid fa-envelope">Send Message</a>
											</div>
										</div>
									</form>
								</section>
							</div>
							<div class="col-6 col-12-medium">
								<section>
									<p>Erat lorem ipsum veroeros consequat magna tempus lorem ipsum consequat Phaselamet
									mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique. Curabitur
									leo nibh, rutrum eu malesuada.</p>
									<div class="row">
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon solid fa-home">
													1234 Somewhere Road<br />
													Nashville, TN 00000<br />
													USA
												</li>
												<li class="icon solid fa-phone">
													(000) 000-0000
												</li>
												<li class="icon solid fa-envelope">
													<a href="#">info@untitled.tld</a>
												</li>
											</ul>
										</div>
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon brands fa-twitter">
													<a href="#">@untitled</a>
												</li>
												<li class="icon brands fa-instagram">
													<a href="#">instagram.com/untitled</a>
												</li>
												<li class="icon brands fa-dribbble">
													<a href="#">dribbble.com/untitled</a>
												</li>
												<li class="icon brands fa-facebook-f">
													<a href="#">facebook.com/untitled</a>
												</li>
											</ul>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
					<div id="copyright" class="container">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</section>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>