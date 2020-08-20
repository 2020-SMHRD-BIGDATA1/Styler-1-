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
		</style>

	</head>
		<%
			MemberDTO info = (MemberDTO)session.getAttribute("info");
		%>
	<body class="right-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container" style="background-color:white; position:fixed; left:0px; top:0px; width:100%; height:200px; text-align:center; z-index:1000;">

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
												<h2> 내 파우치 속 <strong> 화장품들 </strong> 키워드와<br />
												유통기한 모두 똑똑하게 관리하자! </h2>
											</header>
											
											<span class="image featured"><img src="images/pic04.jpg" alt="" /></span>
											<h3 id="base">My Base-makeup products</h3>
											<p>
											product1
											</p>
											<p>
											product2
											</p>
											<p>
											product3
											</p>
											
											<h3 id="eye">My Eye-makeup products</h3>
											<p>
											product1
											</p>
											<p>
											product2
											</p>
											
											<h3 id="lip">My lip-makeup products</h3>
											<p>
											product1
											</p>
											<p>
											product2
											</p>
											
											<h3 id="contour">My contouring products</h3>
											<p>
											product1
											</p>
											<p>
											product2
											</p>
											
										</article>

								</div>

							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium">

									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="base_makeup_box">
															<header>
																<button type="button" class="basebox" style="margin: 0 0 10px 0";>베이스 메이크업 박스</button>
																<br>
																<h3><a href="#">가지고 계신 제품들은...</a></h3>
															</header>
															<p>커버력이 좋은 23호 제품들을 사용하고 계시네요! 
															#봄웜 #커버력 #라벨링
															</p>
														</article>
														<script type="text/javascript">
														 $(document).ready(function(event){
															 $(".basebox").on("click",function(){
																 var offset = $('#base').offset();
																 $('html').animate({scrollTop: offset.top}, 400);
															}) 
														 })
														</script>
												</li>
												<li>
<!-- aaaaaa -->
													<!-- Excerpt -->
														<article class="eye_makeup_box">
															<header>
																<button type="button" class="eyebox" style="margin: 0 0 10px 0";>아이 메이크업 박스</button>
																<br>
																<h3><a href="#">가지고 계신 제품들은...</a></h3>
															</header>
															<p> 펄을 좋아하시나봐요?
															#글리터 #금펄 #가루날림 #포인트메이크업 </p>
														</article>
														<script type="text/javascript">
														 $(document).ready(function(event){
															 $(".eyebox").on("click",function(){
																 var offset = $('#eye').offset();
																 $('html').animate({scrollTop: offset.top}, 400);
															}) 
														 })
														</script>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="lip_makeup_box">
															<header>
																<button type="button" class="lipbox" style="margin: 0 0 10px 0";>립 메이크업 박스</button>
																<br>
																<h3><a href="#">가지고 계신 제품들은...</a></h3>
															</header>
															<p> MLBB 처돌이
															#매트립 #가을여자 #누드 #자연스러운 </p>
														</article>
														<script type="text/javascript">
														 $(document).ready(function(event){
															 $(".lipbox").on("click",function(){
																 var offset = $('#lip').offset();
																 $('html').animate({scrollTop: offset.top}, 400);
															}) 
														 })
														</script>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="contouring_makeup_box">
															<header>
																<button type="button" class="contouring" style="margin: 0 0 10px 0";>컨투어링 메이크업 박스</button> <!-- //이게 버튼이어서 내려 주면 좋겠음. --> 
																<br>
																<h3><a href="#">가지고 계신 제품들은...</a></h3>
															</header>
															<p> 국민 쉐도우
															#붉은기가 없는 #자연스러운 #데일리</p>
														</article>
														<script type="text/javascript">
														 $(document).ready(function(event){
															 $(".contouring").on("click",function(){
																 var offset = $('#contour').offset();
																 $('html').animate({scrollTop: offset.top}, 400);
															}) 
														 })
														</script>

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
																<h3><a href="#">newly released</a></h3>
															</header>
															<a href="#" class="image left"><img src="images/pic07.jpg" alt="" /></a>
															<p>신상처돌이들을 위한 신상 추천 >_<.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

												</li>
												
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#"> 곧 버려야해요~ </a></h3>
															</header>
															<a href="#" class="image left"><img src="images/pic07.jpg" alt="" /></a>
															<p> 아까워하지말고 피부를 위해서 과감히 버리는 건 어때요? 
																개봉한지 2년이 넘었어요! 
															</p>
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