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
      <link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet" />
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
         #page-wrapper {
            font-family :'Jeju Gothic';
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
               <img src="whiteBG.png" width="100%"; height= "240px";>
                  <header>
                     <h2>매일 똑같은 메이크업 이젠 지겹지 않니? 찾아봐, <strong>너에게 맞는 메이크업 </strong>!</h2>
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
                              <a href="#" class="image featured"><img src="images/goldenrosy2.jpg" alt="" /></a>
                              <header>
                                 <h3> Summer Rose? no, GOLDENROSY!... (autumn daily makeup) </h3>
                              </header>
                              <p>PONY's new makeup for...<strong>GOLDENROSY</strong><br>
                              분위기 있는 가을 여자의 느낌 
                              <br> 에뛰드 베이크하우스와 함께하는 <br> 가을 데일리 음영 메이크업!
                              <br> 일상 속 가을의 무드를 흠뻑, 포니와 함께하세요 :)
                              </p>
                           </section>

                     </div>
                     <div class="col-4 col-6-medium col-12-small">

                        <!-- Feature -->
                           <section>
                              <a href="#" class="image featured"><img src="images/makeup1bright.jpg" alt="" /></a>
                              <header>
                                 <h3>TOP는 커피이름이다?</h3>
                              </header>
                              <p>
                              T : time <br>
                              O : occasion <br>
                              P : place <br>
                           <!--  시간, 분위기, 장소에 걸맞는 메이크업 필요하지 않으세요? -->
                              <strong>#MOTD(makeup of today)</strong>와 함께, <br>그날 그날에 맞는 메이크업으로 
                              <br> 완벽한 아웃룩을 완성 >_<
                              </p>
                           </section>

                     </div>
                     <div class="col-4 col-6-medium col-12-small">

                        <!-- Feature -->
                           <section>
                              <a href="#" class="image featured"><img src="images/trendevent.png" alt="" /></a>
                              <header>
                                 <h3>쉴새없이 바뀌는 뷰티 트랜드! <br> 2020's beauty trend?</h3>
                              </header>
                              <p>
                              #MOTD와 함께라면 당신은 더이상 팔로워가 아닙니다. 
                              <br> 내 스타일에 맞춰 화장하면 당신이 이미 메이크업 리더 
                              <br> <strong>나는 나만의 길을 갈래!</strong> 이제 한번 외쳐볼까요?
                              </p>
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
                  <p>Use this website for <strong>managing your POUCH</strong>.<br />
                  or <strong>Find your own makeup style</strong></p>
               </div>
            </section>

      

         <!-- Footer -->
            <section id="footer">
               <div class="container">
                  <header>
                     <h2>찾는 제품이 없으신가요? 웹페이지 사용에 문제가 있으신가요? <strong>Get in touch:</strong></h2>
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
                           <p>
                           
                           </p>
                           <div class="row">
                              <div class="col-6 col-12-small">
                                 <ul class="icons">
                                    <li class="icon solid fa-home">
                                       56176 Euljiro 32<br />
                                       Jongro gu - Seoul<br />
                                       REPUBLIC OF KOREA
                                    </li>
                                    <li class="icon solid fa-phone">
                                       (02) 782-0901
                                    </li>
                                    <li class="icon solid fa-envelope">
                                       <a href="#">motd#styler@gmail.com</a>
                                    </li>
                                 </ul>
                              </div>
                              <div class="col-6 col-12-small">
                                 <ul class="icons">
                                    <li class="icon brands fa-twitter">
                                       <a href="#">@motd#styler</a>
                                    </li>
                                    <li class="icon brands fa-instagram">
                                       <a href="#">instagram.com/motd#styler</a>
                                    </li>
                                    <li class="icon brands fa-dribbble">
                                       <a href="#">dribbble.com/motd#styler</a>
                                    </li>
                                    <li class="icon brands fa-facebook-f">
                                       <a href="#">facebook.com/motd#styler</a>
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