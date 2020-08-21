<%@page import= "com.model.MemberDAO" %>
<%@page import= "com.model.MemberDTO" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<script src="assets/js/jquery.min.js"></script>
		<title>Right Sidebar - Strongly Typed by HTML5 UP</title>
		<meta charset="utf-8" />
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
					<div class="container">

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
							
											<table>
											<tr>
												<th>Product1</th>
											</tr>
											
											<tr>
												<td><img src="images/pic03.jpg" alt="" /></td>
											</tr>
											
											<tr>
												<td>이름 : </td> <td> 땡미라클 디비에서 가져오기 </td>
											</tr>
											
											<tr>
												<td>색상 : </td> <td> 땡미라클 23호 디비에서 가져오기 </td>
											</tr>
											
											<tr>
												<td>개봉일 : </td> <td> 디비에서 가져오기 </td>
											</tr>
											
											</table>
											
											
											</p>
											<p>
											product2
											</p>
											<p>
											product3
											</p>
											
											<h3 id="eye">My Eye-makeup products</h3>
											<p>
											
											<ul data-v-991c3c50="" class="contents__product-info"><li data-v-991c3c50="" class="contents__product-info__li contents__product-info__image"><div data-v-4aaf0415="" data-v-991c3c50="" class="image-and-labels contents__product-info__image__section"><section data-v-4aaf0415="" class="image-and-labels__section"><ul data-v-4aaf0415="" class="image-and-labels__section__ul labels"><li data-v-4aaf0415="" class="labels__item"><span data-v-4aaf0415="" class="labels__item__rank_info">매트립스틱 3위</span></li> <li data-v-4aaf0415="" class="labels__item sns-links"><a data-v-4aaf0415="" class="sns-links__buttons icon-sprite link-kakao-color"></a> <a data-v-4aaf0415="" class="sns-links__buttons sns-links__open_popup"><span data-v-4aaf0415="" class="sns-links__buttons__icon icon-sprite btn-share"></span></a></li></ul> <figure data-v-4aaf0415="" class="image-and-labels__section__figure"><div data-v-43fb444d="" data-v-4aaf0415="" class="product-image-wrapper image-and-labels__section__figure__img"><div data-v-1c7d6d15="" data-v-43fb444d="" role="img" aria-label="" class="image product-image__detail--desktop image--loaded" style="width: 100%; height: 100%;"><meta data-v-1c7d6d15="" itemprop="image" content="https://dn5hzapyfrpio.cloudfront.net/home/glowmee/upload/20190927/1569572490271.jpg"> <!----> <div data-v-1c7d6d15="" title="" class="image__background-image" style="width: 100%; height: 100%; background-image: url(&quot;https://dn5hzapyfrpio.cloudfront.net/home/glowmee/upload/20190927/1569572490271.jpg&quot;);"></div></div> <div data-v-1c7d6d15="" data-v-43fb444d="" role="img" aria-label="" class="image product-image__detail--mobile image--loaded" style="width: 100%; height: 100%;"><meta data-v-1c7d6d15="" itemprop="image" content="https://dn5hzapyfrpio.cloudfront.net/home/glowmee/upload/20190927/1569572490271.jpg"> <!----> <div data-v-1c7d6d15="" title="" class="image__background-image" style="width: 100%; height: 100%; background-image: url(&quot;https://dn5hzapyfrpio.cloudfront.net/home/glowmee/upload/20190927/1569572490271.jpg&quot;);"></div></div></div></figure></section></div></li> <li data-v-991c3c50="" class="contents__product-info__li contents__product-info__text"><section data-v-7c039372="" data-v-991c3c50="" class="product-main-info"><p data-v-7c039372="" class="product-main-info__brand_name">
        지방시 뷰티 (Givenchy Beauty)
    </p> <h1 data-v-7c039372="" class="product-main-info__product_name"><span data-v-7c039372="" class="product-main-info__product_name__text"><!---->
            르 루즈
        </span></h1> <div data-v-7c039372="" class="sns-links"><a data-v-7c039372="" class="sns-links__button link-pop-up"><span data-v-7c039372="" class="sns-links__button__icon icon-sprite btn-share"></span></a></div> <div data-v-7c039372="" class="product-main-info__data_wrapper"><div data-v-7c039372="" class="product-main-info__volume_price">
            3.4g / <span data-v-7c039372="" class="product-main-info__volume_price--bold">48,000</span>원
        </div> <div data-v-7c039372="" class="product-main-info__ratings ratings"><span data-v-7c039372="" class="ratings__score">4.39</span> <div data-v-7c039372="" class="ratings__heart_graph"><ul data-v-4385e41e="" data-v-7c039372=""><li data-v-4385e41e=""><article data-v-14354dc6="" data-v-4385e41e="" class="heart-comp"><div data-v-14354dc6="" class="wrap" style="width: 100%;"><div data-v-14354dc6="" class="graphic"></div></div></article></li><li data-v-4385e41e=""><article data-v-14354dc6="" data-v-4385e41e="" class="heart-comp"><div data-v-14354dc6="" class="wrap" style="width: 100%;"><div data-v-14354dc6="" class="graphic"></div></div></article></li><li data-v-4385e41e=""><article data-v-14354dc6="" data-v-4385e41e="" class="heart-comp"><div data-v-14354dc6="" class="wrap" style="width: 100%;"><div data-v-14354dc6="" class="graphic"></div></div></article></li><li data-v-4385e41e=""><article data-v-14354dc6="" data-v-4385e41e="" class="heart-comp"><div data-v-14354dc6="" class="wrap" style="width: 100%;"><div data-v-14354dc6="" class="graphic"></div></div></article></li><li data-v-4385e41e=""><article data-v-14354dc6="" data-v-4385e41e="" class="heart-comp"><div data-v-14354dc6="" class="wrap" style="width: 39%;"><div data-v-14354dc6="" class="graphic"></div></div></article></li></ul></div> <span data-v-7c039372="" class="ratings__review_count">(187)</span></div></div> <div data-v-7c039372="" class="product-main-info__brand_wrapper brand_info"><figure data-v-7c039372="" class="brand_info__logo"><div data-v-fedb599a="" data-v-7c039372="" class="brand-image brand_info__logo__img brand-image--long-height"><div data-v-1c7d6d15="" data-v-fedb599a="" role="img" aria-label="브랜드 명 지방시 뷰티 (Givenchy Beauty)의 로고 이미지" class="image image--loaded" style="width: 100%; height: 100%;"><meta data-v-1c7d6d15="" itemprop="image" content="https://dn5hzapyfrpio.cloudfront.net/home/glowmee/upload/20191102/1572681083333_160.jpg"> <!----> <div data-v-1c7d6d15="" title="브랜드 명 지방시 뷰티 (Givenchy Beauty)의 로고 이미지" class="image__background-image" style="width: 100%; height: 100%; background-image: url(&quot;https://dn5hzapyfrpio.cloudfront.net/home/glowmee/upload/20191102/1572681083333_160.jpg&quot;);"></div></div></div></figure> <span data-v-7c039372="" class="brand_info__brand-name">지방시 뷰티 (Givenchy Beauty)</span> <button data-v-31c80b71="" data-v-7c039372="" type="button" class="button-link"><span data-v-31c80b71="" class="button-link__text">브랜드홈</span> <span data-v-31c80b71="" class="button-link__icon icon-sprite btn-more-small-black"></span> <span data-v-31c80b71="" class="button-link__icon icon-sprite btn-more-small-white"></span></button></div></section> <!----> <section data-v-71605cff="" data-v-991c3c50="" class="ingredient contents__product-info__text__section"><div data-v-f520a820="" data-v-71605cff="" class="product-info-contents contents"><div data-v-f520a820="" class="contents__icon"><span data-v-f520a820="" class="contents__icon__span"><span data-v-f520a820="" class="contents__icon__span__sprite icon-sprite label-ingredient"></span></span></div> <div data-v-f520a820="" class="contents__text"><span data-v-f520a820="" class="contents__text__title">
            유의해야 할 성분 향료
        </span> <span data-v-f520a820="" class="contents__text__sub">
                ·등급미정 성분1개 포함
            </span></div> <span data-v-f520a820="" class="contents__arrow-icon"><span data-v-f520a820="" class="icon-sprite btn-move-black"></span></span> <span data-v-f520a820="" class="contents__link-button"><button data-v-31c80b71="" data-v-f520a820="" type="button" class="button-link"><span data-v-31c80b71="" class="button-link__text">성분정보</span> <span data-v-31c80b71="" class="button-link__icon icon-sprite btn-more-small-black"></span> <span data-v-31c80b71="" class="button-link__icon icon-sprite btn-more-small-white"></span></button></span></div> <button data-v-71605cff="" class="ingredient__mobile-button"></button></section> <section data-v-3b7c2262="" data-v-991c3c50="" class="info contents__product-info__text__section"><div data-v-f520a820="" data-v-3b7c2262="" class="product-info-contents contents"><div data-v-f520a820="" class="contents__icon"><span data-v-f520a820="" class="contents__icon__span"><span data-v-f520a820="" class="contents__icon__span__sprite icon-sprite label-pdtinfo"></span></span></div> <div data-v-f520a820="" class="contents__text"><span data-v-f520a820="" class="contents__text__title">
            제품정보 자세히 보기
        </span> </div> <span data-v-f520a820="" class="contents__arrow-icon"><span data-v-f520a820="" class="icon-sprite btn-move-black"></span></span> <!----></div> <button data-v-3b7c2262="" class="info__mobile-button"></button> <table data-v-3b7c2262="" class="info__table"><tbody data-v-3b7c2262=""><tr data-v-3b7c2262="" class="info__category-list info__tr"><th data-v-3b7c2262="" class="info__th"><span data-v-3b7c2262="" class="title">카테고리</span></th> <td data-v-3b7c2262="" class="info__td"><div data-v-3b7c2262="" class="info__category-wrap"><p data-v-3b7c2262="" class="info__categories"><span data-v-3b7c2262="" class="info__category">
                                립스틱 매트립스틱
                            </span></p> <button data-v-31c80b71="" data-v-3b7c2262="" type="button" class="button-link"><span data-v-31c80b71="" class="button-link__text">랭킹확인</span> <span data-v-31c80b71="" class="button-link__icon icon-sprite btn-more-small-black"></span> <span data-v-31c80b71="" class="button-link__icon icon-sprite btn-more-small-white"></span></button></div><div data-v-3b7c2262="" class="info__category-wrap"><p data-v-3b7c2262="" class="info__categories"><span data-v-3b7c2262="" class="info__category">
                                립스틱
                            </span></p> <button data-v-31c80b71="" data-v-3b7c2262="" type="button" class="button-link"><span data-v-31c80b71="" class="button-link__text">랭킹확인</span> <span data-v-31c80b71="" class="button-link__icon icon-sprite btn-more-small-black"></span> <span data-v-31c80b71="" class="button-link__icon icon-sprite btn-more-small-white"></span></button></div></td></tr> <!----> <tr data-v-3b7c2262="" class="info__description-box info__tr"><th data-v-3b7c2262="" class="info__th"><span data-v-3b7c2262="" class="title">설명</span></th> <td data-v-3b7c2262="" class="info__td"><div data-v-3b7c2262="" class="info__description">부드럽고 편안한 밀착감의 빛나는 매트 피니쉬 립스틱</div> <p data-v-3b7c2262="" class="info__description__button-wrap"><button data-v-3b7c2262="" class="info__description__show-more-button">
                            더보기
                        </button></p></td></tr> <tr data-v-3b7c2262="" class="info__color-type info__tr"><th data-v-3b7c2262="" class="info__th"><span data-v-3b7c2262="" class="title">컬러/타입</span></th> <td data-v-3b7c2262="" class="info__td"><div data-v-3b7c2262="" class="info__color-type-list">
                        N100 베이지 카라망 / N102 베이지 플럼 / N103 브륀 크레아테르 / N105 브륀 빈티지 / N110 로즈 디아판 / 
N201 로즈 타프타 / N202 로즈 드레싱 / N204 로즈 부두아 / N205 푸시아 이레지스터블 / N209 로즈 퍼펙토 / N214 로즈 브로드리 / N218 바이올렛 오데셔스 / 
N301매그놀리아 오간자 / N302 히비스커스 익스클루시브 / N303 코랄 데콜테 / N304 만다린 볼레로 / N305 루즈 에제리 / N306 카민 에스카르핀 / N307 그레나 이니시에 / 
N315 벨벳 프람부아즈 / N316 오렌지 압솔뤼 / N317 코랄 시그니쳐 / N323 프람부아즈 꾸뛰르 / N324 코랄 백스테이지 / N325 류즈 페티쉐 / N326 퍼플 엣지 / 
N333 랑떼르디 / N334 그레나 볼롱테
                    </div></td></tr> <tr data-v-3b7c2262="" class="info__tag-list info__tr"><th data-v-3b7c2262="" class="info__th"><span data-v-3b7c2262="" class="title">태그</span></th> <td data-v-3b7c2262="" class="info__td"><p data-v-3b7c2262=""><span data-v-3b7c2262="" class="info__tags">
                            보습
                        </span><span data-v-3b7c2262="" class="info__tags">
                            생기부여
                        </span><span data-v-3b7c2262="" class="info__tags">
                            영양공급
                        </span></p></td></tr></tbody></table></section></li></ul>
                        
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