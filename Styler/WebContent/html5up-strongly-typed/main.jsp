<%@page import="java.io.PrintWriter"%>
<%@page import= "com.model.MemberDAO" %>
<%@page import= "com.model.MemberDTO" %>

<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
	<head>
		<title>Strongly Typed by HTML5 UP</title>
		<meta charset="EUC-KR" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
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
			
		</style>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container" style="padding: 10em 0 8em 0; background-color:white; position:fixed; left:0px; top:0px; width:100%; height:200px; text-align:center; z-index:1000;">
   					
						<!-- Logo -->
							<h1 id="logo"><a href="main.jsp">#MOTD</a></h1>
							<p>What is your makeup for today?</p>
						
						<!-- Button -->
							<% 	
								MemberDTO info = (MemberDTO)session.getAttribute("id");
								if(info == null){
								System.out.print("로그인정보 못받아옴");
							%>
							
							<button id="join" value='join' onclick="location.href='join.jsp'" >Join </button>
							<button id="login" value='login' onclick="location.href='login.jsp'">LogIn</button>  
							<% }else { %>
							
							<button id="myPage" value='myPage' onclick="">My Page</button>
							<button id="logout" value='logout' onclick="location.href='logout.jsp'">Logout</button>  
							
							<% } %>
							
							<!-- <button id ="login" value ='login' type="submit" form="loginForm">Login</button> -->

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

			<!-- Features -->
				<section id="features">
					<div class="container">
					<img src="whiteBG.png" width="100%"; height= "280px";>
						<header>
							<h2>Gentlemen, behold! This is <strong>Strongly Typed</strong>!</h2>
							<% if(info == null){ %>
										<h2>로그인을 해주세요.^^</h2>
							<%}else{  %>
										<h2><%= info.getName() %> 님 환영합니다.</h2>
							<%} %>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
										<header>
											<h3>O.kay, so what is this?</h3>
										</header>
										<p>This is <strong>Strongly Typed</strong>, a free, fully responsive site template
										by <a href="http://html5up.net">HTML5 UP</a>. Free for personal and commercial use under the
										<a href="http://html5up.net/license">CCA 3.0 license</a>.</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
										<header>
											<h3>Nice! What is HTML5 UP?</h3>
										</header>
										<p><a href="http://html5up.net">HTML5 UP</a> is a side project of <a href="http://twitter.com/ajlkn">AJ’s</a> (= me).
										I started it as a way to both test my responsive tools and sharpen up my coding
										and design skills a bit.</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" /></a>
										<header>
											<h3>What's this built with?</h3>
										</header>
										<p><strong>Responsive Tools</strong> is a simple set of tools for building responsive
										sites and apps. All of my templates at <a href="http://html5up.net">HTML5 UP</a> are built using these tools.</p>
									</section>

							</div>
							<div class="col-12">
								<ul class="actions">
									<li><a href="#" class="button icon solid fa-file">Tell Me More</a></li>
								</ul>
							</div>
						</div>.
					</div>
				</section>

			<!-- Banner -->
				<section id="banner">
					<div class="container">
						<p>Use this space for <strong>profound thoughts</strong>.<br />
						Or an enormous ad. Whatever.</p>
					</div>
				</section>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><a href="#">I don’t want to say <strong>it’s the aliens</strong> ...<br />
												but it’s the aliens.</a></h2>
											</header>
											<a href="#" class="image featured"><img src="images/pic04.jpg" alt="" /></a>
											<h3>I mean isn't it possible?</h3>
											<p>Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit
											ligula vel quam viverra sit amet mollis tortor congue. Sed quis mauris
											sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada
											in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
											magna tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros
											consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
											justo mattis pharetra. Fusce suscipit ligula vel quam viverra sit amet
											mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique.
											Curabitur leo nibh, rutrum eu malesuada in tristique.</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">Continue Reading</a></li>
											</ul>
										</article>

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><a href="#">By the way, many thanks to <strong>regularjane</strong>
												for these awesome demo photos</a></h2>
											</header>
											<a href="#" class="image featured"><img src="images/pic05.jpg" alt="" /></a>
											<h3>You should probably check out her work</h3>
											<p>Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit
											ligula vel quam viverra sit amet mollis tortor congue. Sed quis mauris
											sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada
											in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
											consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
											in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
											magna tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros
											consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
											justo mattis pharetra. Fusce suscipit ligula vel quam viverra sit amet
											mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique.
											Curabitur leo nibh, rutrum malesuada.</p>
											<p>Erat lorem ipsum veroeros consequat magna tempus lorem ipsum consequat
											Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit ligula
											vel quam viverra sit amet mollis tortor congue. Sed quis mauris sit amet
											magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada in,
											tristique at erat. Curabitur leo nibh, rutrum eu malesuada in, tristique
											at erat lorem ipsum dolor sit amet lorem ipsum sed consequat magna
											tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros consequat
											magna tempus.</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">Continue Reading</a></li>
											</ul>
										</article>

								</div>

							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium">

									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 30</span>
																<h3><a href="#">Just another post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 28</span>
																<h3><a href="#">And another post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 24</span>
																<h3><a href="#">One more post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
											</ul>
										</section>

									<!-- Highlights -->
										<section>
											<ul class="divided">
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of note</a></h3>
															</header>
															<a href="#" class="image left"><img src="images/pic06.jpg" alt="" /></a>
															<p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel quam
															viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio facilisis
															convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum tempus
															facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

												</li>
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of less note</a></h3>
															</header>
															<a href="#" class="image left"><img src="images/pic07.jpg" alt="" /></a>
															<p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel quam
															viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio facilisis
															convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum tempus
															facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

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