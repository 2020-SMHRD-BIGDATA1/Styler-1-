<%@page import= "com.model.MemberDAO" %>
<%@page import= "com.model.MemberDTO" %>

<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
	<head>
		<script src="assets/js/jquery.min.js"></script>
		<title>Right Sidebar - Strongly Typed by HTML5 UP</title>
		<meta charset="euc-kr" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet"/>
		<style>
		#main{
				font-family: 'Jeju Gothic';
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
			    left: 85%;
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
			
			.image.featured {
			    display: block;
			    width: 82%;
			    margin: 0 0 3.5em 0;
					}
			.row > .col-8 {
			width: 65%;
		}
					
		
		</style>

	</head>
		
	<body class="right-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container" style="padding: 10em 0 8em 0; background-color:white; position:fixed; left:0px; top:0px; width:100%; height:200px; text-align:center; z-index:1000;">
				

						<!-- Button -->
							<% 	
								MemberDTO info = (MemberDTO)session.getAttribute("info");
								if(info == null){
								System.out.print("로그인정보 못받아옴");
							%>
							
							<button id="join" value='join' onclick="location.href='join.jsp'" >Join </button>
							<button id="login" value='login' onclick="location.href='login.jsp'">LogIn</button>  
							<% }else { %>
							
							<button id="myPage" value='myPage' onclick="">My Page</button>
							<button id="logout" value='logout' onclick="location.href='logout.jsp'">Logout</button>  
							
							<% } %>
							
							
						<!-- Logo -->
							<h1 id="logo"><a href="main.jsp">#MOTD</a></h1>
							
							<p>
							<% if(info == null){ %>
										<h2>What is your makeup for today?</h2>
							<%}else{  %>
										<h2>Good day<%= info.getName() %>!!! let's decide your makeup for today.</h2>
							<%} %>
							</p> 
							
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
					<img src="whiteBG.png" width="100%"; height= "280px";>
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
									
                        
										<article class="box post">
											<header>
												<h2>호텔 델루나 장만월 아이유 커버메이크업  <br /> <strong>'Hotel Del Luna' IU Cover Makeup l</strong> <br />
												이사배(RISABAE Makeup)</h2>
											</header>
											<p>
												<a href="#" class="image featured"><iframe width="720px" height="450px" src="https://www.youtube.com/embed/OFoUKC6mB4Y"></iframe></a>
											</p>
											
											<h3>[영상 정보]</h3>
											<p>
											
										
											
											
호텔 델루나 장만월 아이유 커버메이크업</br>
'Hotel Del Luna' IU Cover Makeup l</br>
이사배(RISABAE Makeup)</br>
</p>
										</article>

								</div>

							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium" style="padding: 42px 0 0 0px;">

									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date"> </span>
																<h3><a href="#"></br></br></br></br>★영상속 제품 확인★</a></h3>
															</header>
															
													<div style="height: 120px; width: 200px; float; display: inline-block">
													<b>Base</b>
													<br>
													-머지(MERZY)<br>
													더 퍼스트 쿠션 커버 #C01 포슬린<br>
													<br>
													-메이크업포에버(MAKE UP FOR EVER)<br>
													UHD 스틱 파운데이션 #Y245<br>
													</div>
													
													<img src="images/arrow.png" style=" width:70px; height: 70px; padding: 0 20 0 0 ; display: inline-block;">
													
													<div style="height:120px; width:200px; float; display: inline-block"> 
													<b>추천 화장품</b> <br>
													 <br>
													 <br>
															</div>
														<li></li>

															<div style="height: 120px; width: 200px; top:100; float; display: inline-block">
													<b>Eyes</b>
													<br>
											-머지(MERZY)<br>
											더 퍼스트 이지드로잉 젤 아이라이너 EG2.체스트넛<br>
											<br>
											-릴리바이레드(lilybyred)<br>
											무드 치트킷 02핑크스윗츠<br>
											(잉글롯 42T INGLOT 42T) <br>
													</div>
													
													<img src="images/arrow.png" style=" width:60px; height: 60px; padding: 0 20 0 0 ; display: inline-block">
													
													<div style="height:120px; width:150px; float; display: inline-block"> 
													<b>추천 화장품</b> <br>
													에뛰드<br>
													클리오<br>
															</div>
														<li></li>
														
														<div style="height: 120px; width: 200px; float; display: inline-block">
													<b>Lip</b> <br>
													미샤 <br>
													클리오 <br>
													</div>
													
													<img src="images/arrow.png" style=" width:80px; height: 80px; padding: 0 20 0 0 ; display: inline-block">
													
													<div style="height:200px; width:120px; float; display: inline-block"> 
													<b>추천 화장품</b> <br>
													에뛰드 <br>
													클리오 <br>
															</div>
														<li></li>

														<div style="height: 120px; width: 150px; float; display: inline-block">
													<b>Contouring</b> <br>
													미샤 <br>
													클리오 <br>
													</div>
													
													<img src="images/arrow.png" style=" width:80px; height: 80px; padding: 0 20 0 0 ; display: inline-block">
													
													<div style="height:200px; width:120px; float; display: inline-block"> 
													<b>추천 화장품</b> <br>
													에뛰드 <br>
													클리오 <br>
															</div>
														<li></li>


												</li>
											</ul>
										</section>

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