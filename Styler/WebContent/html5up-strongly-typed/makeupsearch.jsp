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
			.checkbox{
				width : 150px;
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
							
							<button id="myPage" value='myPage' onclick="location.href='mypage1.jsp'">My Page</button>
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
					<img src="whiteBG.png" width="100%"; height= "240px";>
					
		<!-- 검색창 -------------------------------------------------------------------------------- -->
					
				<!-- 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
					<form name="search" align="left" style="margin-right:70px;" method = "get"  action ="../makeupsearchresult.jsp" onsubmit="return keyword_check()">
					<td>

 						 <input type="text" name="keyword"> 

 					</td>

					<td>
					
						<input type="submit" value="search">
					
					</td>   -->

		<!-- 체크박스 -------------------------------------------------------------------------------- -->
		<div class="row">
			<form action = "../MakeupSearchInfo" >		
				<div>
					<table>
						<tr>
							<td>상황</td>
							<td><input type = "checkbox" name = "situation" value = "면접">면접</td>
							<td><input type = "checkbox" name = "situation" value = "데일리">데일리</td>
							<td><input type = "checkbox" name = "situation" value = "왕초보">왕초보</td>
						</tr>	
					</table>
				</div>
				
				<div>
					<table>
						<tr>
							<td>피부톤</td>
							<td><input type = "checkbox" name = "tone" value = "레드브라운">레드브라운</td>
							<td><input type = "checkbox" name = "tone" value = "데이트">데이트</td>
							<td><input type = "checkbox" name = "tone" value = "핑크">핑크</td>
						</tr>		
					</table>
				</div>
				
				<div>
					<table>
						<tr>
							<td>집에가기</td>
							<td><input type = "checkbox" name = "homecomming" value = "여름">여름</td>
							<td><input type = "checkbox" name = "homecomming" value = "파티">파티</td>
							<td><input type = "checkbox" name = "homecomming" value = "물놀이">물놀이</td>
						</tr>		
					</table>
				</div>
				<input type = "submit" value = "검색하기">
				
			</form>
		</div>
<!-- -------------------------------------------------------------------------------- -->
		<p></p>
					<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><strong>말죽거리잔혹사</strong></h2>
											</header>
											
											<span class="image featured"><iframe width="700" height="500" src="https://www.youtube.com/embed/GEWbwh0Zdmo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></span>
											
										</article>

								</div>
						
							<!-- Sidebar -->
								
								<div id="sidebar" class="col-4 col-12-medium">

									<!-- Excerpts -->
									<div></div>
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">hot 데이트</span>
																
															</header>
															<p>어떤녀석이 나한테 우유를 던졌어.
															<br>
															아주 신선한 우유를
															<br>
															난 그녀석을 잡고싶다구
															<br>
															Ah~ 빨리 나와줬음 좋겠어 친구
															<br>
															안그러면 밥을 부셔버릴거야!</p>
															
														</article>

												</li>
											</ul>
										</section>		
								</div>
						</div>
<!-- --------------------------------------------------------------------------------------- -->
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><strong>해바라기</strong></h2>
											</header>
											
											<span class="image featured"><iframe width="700" height="500" src="https://www.youtube.com/embed/imrUFiYeh50" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></span>
											
										</article>

								</div>
						
							<!-- Sidebar -->
								
								<div id="sidebar" class="col-4 col-12-medium">

									<!-- Excerpts -->
									<div></div>
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">hot 데이트</span>
																
															</header>
															<p>꼭 그렇게
															<br>
															다 가져 가야만
															<br>
															속이 후련했
															<br>
															냐!</p>
													
														</article>

												</li>
											</ul>
										</section>		
								</div>
						</div>
<!-- --------------------------------------------------------------------------------------- -->
					
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