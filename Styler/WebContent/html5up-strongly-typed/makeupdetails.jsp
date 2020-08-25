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
								System.out.print("�α������� ���޾ƿ�");
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
												<h2>ȣ�� ���糪 �常�� ������ Ŀ������ũ��  <br /> <strong>'Hotel Del Luna' IU Cover Makeup l</strong> <br />
												�̻��(RISABAE Makeup)</h2>
											</header>
											<p>
												<a href="#" class="image featured"><iframe width="600px" height="350px" src="https://www.youtube.com/embed/OFoUKC6mB4Y"></iframe></a>
											</p>
											
											<h3>[��ǰ����]</h3>
											<p>
											
										
											
											
ȣ�� ���糪 �常�� ������ Ŀ������ũ��</br>
'Hotel Del Luna' IU Cover Makeup l</br>
�̻��(RISABAE Makeup)</br>
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
																<h3><a href="#"></br></br></br></br></br></br>��õ ��ǰ</a></h3>
															</header>
															<p>[��ǰ����]

#�����̸�</br>
-�ڵ�</br>
CODE</br>
�� ��ġ��� �����̸�</br>
N.Peach Blanc Primer</br>
[��Ƽ���� Beauty Blender]</br>
</br>
#���̽�</br>
-����</br>
MERZY</br>
�� �۽�Ʈ ��� Ŀ�� #C01 ������</br>
The First Cushion Cover #C01 Porcelain</br>
</br>
-����ũ��������</br>
MAKE UP FOR EVER</br>
UHD ��ƽ �Ŀ�̼� #Y245</br>
Ultra HD Stick Foundation  #Y245</br>
</br>
#���Ƿ�</br>
-������</br>
JUNGSAEMMOOL</br>
��Ƽ��Ʈ ���Ƿ� �ȷ�Ʈ #��Ų</br>
Artist Concealer Palette #Skin</br>
(ȭȫ M258 HWAHONG M258)</br>
</br>
-�ټ�</br>
COURCELLES</br>
���Ƿ� ũ���� #CC700</br>
Concealer Crayon #CC700</br>
</br>
#�Ŀ��</br>
-��ī</br>
BECCA</br>
���̵�� �̽�Ʈ ��Ʈ&�������� �Ŀ��</br>
Hydra-Mist Set&Refresh Powder</br>
</br>
(����ũ�������� 128 MAKE UP FOR EVER 128)</br>
</br>
#����</br>
-�߾�</br>
BBIA</br>
��Ʈ ���� 4XL #�ǳӺ�ν�</br>
Last Blush 4XL #Peanut Blossom</br>
(�� 140S MAC 140s)</br>
(�� 224S MAC 224s)</br>
(������ ���̼����� ����Ʈ JUNGSAEMMOOL Eye Shadow Point</br>
(���Ƶ��� Soo Ador)</br>
</br>
#��</br>
-����</br>
MERZY</br>
�� �۽�Ʈ ��������� �� ���̶��̳� #EG2.ü��Ʈ��</br>
The First Easydrawing Gel Eyeliner #EG2.Chestnut</br>
</br>

</p>
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