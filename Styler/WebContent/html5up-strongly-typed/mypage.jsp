<%@page import= "com.model.MemberDAO" %>
<%@page import= "com.model.MemberDTO" %>

<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
	<head>
		<title>Strongly Typed by HTML5 UP</title>
		<meta charset="euc-kr">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css"/>
		<link href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/kopubbatang.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/nanumbrushscript.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/hanna.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/nanummyeongjo.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css" rel="stylesheet"/>
		<link href="http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css" rel="stylesheet"/>
		
		<style>
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
			    left: 85%;
			    right: 0%;
			    cursor: default;
			}
			input[id="tone"] {
				display: inline-block;
				width: 20px;
				height: 20px;
				border: 2px solid #bcbcbc;
				cursor: pointer;
				margin: 3px 3px 0px 3px;
			}
			input[id="skty"] {
				display: inline-block;
				width: 20px;
				height: 20px;
				border: 2px solid #bcbcbc;
				cursor: pointer;
				margin: 3px 3px 0px 3px;
			}
			input[id="problem"] {
				display: inline-block;
				width: 20px;
				height: 20px;
				border: 2px solid #bcbcbc;
				cursor: pointer;
				margin: 3px 3px 0px 3px;
			}
			input[id="chsex"] {
				display: inline-block;
				width: 20px;
				height: 20px;
				border: 2px solid #bcbcbc;
				cursor: pointer;
				margin: 3px 3px 0px 3px;
			}
			.putid {
				font-family: 'Jeju Gothic';
			}
			#upjoin {
				font-family: 'Jeju Gothic';
			}
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container">
							
						<!-- Logo -->
							<h1 id="logo"><a href="main.jsp">#MOTD</a></h1>
							<p>What is your makeup for today?</p>
						
					<div class = "logincontainer">
						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon solid fa-home" href="main.jsp"><span>Home</span></a></li>
									<li><a class="icon solid fa-cog" href="makeupsearch.jsp"><span>Makeup</span></a></li>
									<li><a class="icon solid fa-retweet" href="mypouch.jsp"><span>My Pouch</span></a></li>
									<li><a class="icon solid fa-sitemap" href="community.jsp"><span>Community</span></a></li>
								</ul>
							</nav>
							
					<!-- Button -->
							<button id="myPage" onclick="location.href='mypage1.jsp'">myPage </button>
							<button id="logout" onclick="location.href='logout.jsp'">Logout</button>
					</div>
					</div>
				</section>

			<!-- Features -->
				<section id="features">
					<div class="container">
						<header>
							<h2 id="upjoin"> ~ 정보수정 ~ </h2>
						</header>
						<div class="row aln-center">
							<div class="putid">								
								<form action = "../mypageUpdate" method = "post">
									<%MemberDTO info = (MemberDTO)session.getAttribute("info");%>
									<p>
									<table>
									<tr> <td align=left> Name : <input type = "text" name = "name"></td> </tr>
									<tr></tr>
									<tr> <td align=left> PW : <input type = "password" name = "pw"> </td> </tr>
									<tr></tr>
									<tr> <td align=left> TEL : <input type = "text" name = "tel"> </td> </tr>
									<tr></tr>
									<tr> <td align=left> 생년월일 :   <input type = "date" name = "birthday"> </td> </tr>
									<tr></tr>
									<tr> <td align=left valign=middle >
									성별 : <input type = "radio" id="chsex" name = "sex" value="woman" checked> 여자
										 <input type = "radio" id="chsex" name = "sex" value="man"> 남자 
									</td> </tr>
									
									<tr></tr>
									
									<tr> <td align=left valign=middle >	 
									피부톤 : <input type = "radio" id="tone" name = "skintone" value="oily" > 웜톤 
											 <input type = "radio" id="tone" name = "skintone" value="dry" > 쿨톤 
											 <input type = "radio" id="tone" name = "skintone" value="neutral" > 뉴트럴 
									</td> </tr>
									<tr></tr>
									<tr> <td align=left valign=middle >		 
									피부타입 :  <input type = "radio" id="skty" name = "skintype" value="oily" > 지성 
											 <input type = "radio" id="skty" name = "skintype" value="dry" > 건성 
											 <input type = "radio" id="skty" name = "skintype" value="neutral" > 중성 
											 <input type = "radio" id="skty" name = "skintype" value="combined"> 복합성 
									</td> </tr>
									
									<tr></tr>
									
									<tr> <td align=left valign=middle >
									특이사항(중복선택가능) :  
									<input type = "checkbox" id="problem" name = "skinproblem" value="pimple" > 여드름
									<input type = "checkbox" id="problem" name = "skinproblem" value="sensitive" > 민감성
									<input type = "checkbox" id="problem" name = "skinproblem" value="pore" > 모공넓음
									<input type = "checkbox" id="problem" name = "skinproblem" value="blushed" > 홍조
									</td> </tr>
									
									</table>
									</p>
									<input type = "submit" value = "수정완료" >
					
								</form>
						
							</div>
					</div>		
					</div>
				</section>

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