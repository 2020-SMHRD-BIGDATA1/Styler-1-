<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.communityDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.communityDAO"%>
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
			#write {
			    position: absolute;
			    top: 22em;
			    left: 88%;
			    right: 0%;
			    cursor: default;
			    text-align:center;
			}
		</style>
	</head>
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="main.jsp">#MOTD</a></h1>
							<p>What is your makeup for today?</p>

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
						<div id="content">
						
						
	<% 
			int COMM_NUM = 1;
			if (request.getParameter("COMM_NUM") != null) {
			COMM_NUM = Integer.parseInt(request.getParameter("COMM_NUM"));	
			System.out.print("번호"+COMM_NUM);
			}
			communityDAO dao = new communityDAO();
			ArrayList<communityDTO> list = dao.getList(COMM_NUM);
			MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		
		
	%>

	<%-- ?=COMM_NUM<%= list.get(0).getCOMM_NUM() %> --%>
<form method="post" action="../updateAction">
<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
<thead>
<tr>
	<th colspan="2" style="background-color : #FF7171; text-align : center;">게시판 글 수정</th>
</tr>
</thead>
<tbody>
	<tr>
		<td><input type="text" class="form-control" placeholder="제목" name="title" value="<%= list.get(COMM_NUM-87).getTitle() %>" maxlength="50"></td>
	</tr>
	<tr>
		<td><textarea class="form-control" placeholder="내용을 입력하세요" name="content" value="<%= list.get(COMM_NUM-87).getContent()%>" maxlength="2048" style="height: 350px;"></textarea></td>
	</tr>
</tbody>
</table>
<input type="hidden" name="COMM_NUM" value = "<%=COMM_NUM %>">
<button type="submit">수정하기</button>
</form>


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