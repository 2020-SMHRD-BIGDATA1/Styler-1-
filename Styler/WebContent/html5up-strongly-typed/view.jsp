<%@page import="com.model.communityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.communityDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.model.MemberDTO"%>
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
			
			#community_list {
			    position: absolute;
			    left: 85%;
			    right: 0%;
			    cursor: default;
		</style>
	</head>
	<body class="no-sidebar is-preload">
	
	<%
   		 String Member_ID =null;
			MemberDTO info = (MemberDTO)session.getAttribute("id");
			  if(info.getId()!=null){
				  Member_ID =(String)info.getId();
			      }
		
			int COMM_NUM = 0;
		      if(request.getParameter("COMM_NUM") != null){
		    	  COMM_NUM = Integer.parseInt(request.getParameter("COMM_NUM"));
		      }
		      System.out.print("첫번째"+COMM_NUM);
		      
		      // 만약 넘어온 데이터가 없다면
		      if(COMM_NUM == 0){
		         PrintWriter script = response.getWriter();
		         script.println("<script>");
		         script.println("alert('유효하지 않은 글입니다')");
		         script.println("location.href='community.jsp'");
		         script.println("</script>");
		         
		      }
		         	communityDAO dao = new communityDAO();
					ArrayList<communityDTO> list = dao.getList(COMM_NUM);

		%>
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


<table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
<thead>
<tr>
	<th colspan="3" style="background-color : #FF7171; text-align : center;">게시판 글 보기</th>
</tr>
</thead>
<tbody>
		<%  System.out.print("두번째"+COMM_NUM); %>
		<tr>
		<td style="width: 20%">글 제목</td>
		<td colspan="2"><%= list.get(0).getTitle() %></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td colspan="2"><%= list.get(0).getMember_ID() %></td>
	</tr>
	<tr>
		<td>작성일자</td>
		<td colspan="2"><%= list.get(0).getCOM_DATE() %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td colspan="2" style="min-height: 200px; text-align: left;"><%= list.get(0).getContent() %></td>
	</tr>
	
		
	
</tbody>
</table>
<button id="commumity_list" onclick="location='community.jsp'">목록</button>  
<% if(info != null && info.getId().equals(list.get(0).getMember_ID())){ %>
<button id="commumity_update" onclick="location='update.jsp?COMM_NUM=<%= COMM_NUM %>'">수정</button>  

<button id="delete" onclick="btn_click();">삭제</button>
<script>
function btn_click() {
	if (confirm("게시글을 삭제하시겠습니까?") == true){
		response.sendRedirect("../deleteAction");
			
	}else{ 
	    return;
	}
}
</script>



<% } %>
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