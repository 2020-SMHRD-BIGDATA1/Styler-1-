<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.CosmeticDAO"%>
<%@page import="com.model.CosmeticDTO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="assets/js/jquery.min.js"></script>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css"
   rel="stylesheet" />



<script src="assets/js/jquery.min.js"></script>
<script>
   $(document).ready(function() {

      $(".open1").on('click', function() {
         $(".dim1").show();
         $(".popup1").show();
      });
      $(".popup1 .close1").on('click', function() {
         $(this).parent().hide();
         $(".dim1").hide();
      });

   });
   
   $(document).ready(function() {

      $(".open2").on('click', function() {
         $(".dim2").show();
         $(".popup2").show();
      });
      $(".popup2 .close2").on('click', function() {
         $(this).parent().hide();
         $(".dim2").hide();
      });

   });
   
   $(document).ready(function() {

      $(".open3").on('click', function() {
         $(".dim3").show();
         $(".popup3").show();
      });
      $(".popup3 .close3").on('click', function() {
         $(this).parent().hide();
         $(".dim3").hide();
      });

   });
   
   $(document).ready(function() {

      $(".open4").on('click', function() {
         $(".dim4").show();
         $(".popup4").show();
      });
      $(".popup4 .close4").on('click', function() {
         $(this).parent().hide();
         $(".dim4").hide();
      });

   });
</script>

<style>
.modelpop {
   padding: 100px;
   background: #fff;
}

.popup1 {
   display: none;
   font-family: 'Jeju Gothic';
   position: fixed;
   left: 50%;
   top: 50%;
   z-index: 100;
   padding: 50px 60px 50px;
   width: 800px;
   height: 800px;
   transform: translate(-50%, -50%);
   box-sizing: border-box;
   background: #fff;
}

.popup1 h2 {
   padding: 0 0 15px;
   border-bottom: 3px solid #444;
   font-weight: normal;
   font-size: 30px;
   color: #222;
   text-align: center;
   line-height: 100%
}

.popup1 .close1 {
   position: absolute;
   right: 10px;
   top: 10px;
   width: 41px;
   height: 41px;
   background-image: url("../images/btn-close.jpg") no-repeat;
}

.popup1 .content1 {
   padding: 0px 10px 30px 10px;
   border-bottom: 1px solid #e8e8e8;
   text-align: center;
}

.popup2 {
   display: none;
   font-family: 'Jeju Gothic';
   position: fixed;
   left: 50%;
   top: 50%;
   z-index: 100;
   padding: 50px 60px 50px;
   width: 800px;
   height: 800px;
   transform: translate(-50%, -50%);
   box-sizing: border-box;
   background: #fff;
}

.popup2 h2 {
   padding: 0 0 15px;
   border-bottom: 3px solid #444;
   font-weight: normal;
   font-size: 30px;
   color: #222;
   text-align: center;
   line-height: 100%
}

.popup2 .close2 {
   position: absolute;
   right: 10px;
   top: 10px;
   width: 41px;
   height: 41px;
   background-image: url("../images/btn-close.jpg") no-repeat;
}

.popup2 .content2 {
   padding: 0px 10px 30px 10px;
   border-bottom: 1px solid #e8e8e8;
   text-align: center;
}

.popup3 {
   display: none;
   font-family: 'Jeju Gothic';
   position: fixed;
   left: 50%;
   top: 50%;
   z-index: 100;
   padding: 50px 60px 50px;
   width: 800px;
   height: 800px;
   transform: translate(-50%, -50%);
   box-sizing: border-box;
   background: #fff;
}

.popup3 h2 {
   padding: 0 0 15px;
   border-bottom: 3px solid #444;
   font-weight: normal;
   font-size: 30px;
   color: #222;
   text-align: center;
   line-height: 100%
}

.popup3 .close3 {
   position: absolute;
   right: 10px;
   top: 10px;
   width: 41px;
   height: 41px;
   background-image: url("../images/btn-close.jpg") no-repeat;
}

.popup3 .content3 {
   padding: 0px 10px 30px 10px;
   border-bottom: 1px solid #e8e8e8;
   text-align: center;
}

.popup4 {
   display: none;
   font-family: 'Jeju Gothic';
   position: fixed;
   left: 50%;
   top: 50%;
   z-index: 100;
   padding: 50px 60px 50px;
   width: 800px;
   height: 800px;
   transform: translate(-50%, -50%);
   box-sizing: border-box;
   background: #fff;
}

.popup4 h2 {
   padding: 0 0 15px;
   border-bottom: 3px solid #444;
   font-weight: normal;
   font-size: 30px;
   color: #222;
   text-align: center;
   line-height: 100%
}

.popup4 .close4 {
   position: absolute;
   right: 10px;
   top: 10px;
   width: 41px;
   height: 41px;
   background-image: url("../images/btn-close.jpg") no-repeat;
}

.popup4 .content4 {
   padding: 0px 10px 30px 10px;
   border-bottom: 1px solid #e8e8e8;
   text-align: center;
}

table.type1 th {
   font-size: 13px;
   color: #222;
   text-align: left;
   font-weight: normal;
}

#box {
   padding: 0px;
   width: 100px;
}

#id1 {
   text-align: center;
   width: 300px;
   height: 30px;
}

#pw1 {
   text-align: center;
   width: 300px;
   height: 30px;
}

.btn_finish {
   display: inline-block;
   width: 170px;
   height: 40px;
   font-size: 2em;
   background: #de4f41;
   color: #fff;
   text-align: center;
   border-radius: 3px;
   padding-top: 12px;
   box-sizing: border-box;
}

.txt_center {
   text-align: center;
   padding: 30px 0 0;
}

.dim1 {
   display: none;
   position: fixed;
   left: 0;
   top: 0;
   z-index: 99;
   width: 100%;
   height: 100%;
   background: rgba(0, 0, 0, 0.5);
   #
   main
   {
   font-family
   :
   'Jeju Gothic';
}

.dim2 {
   display: none;
   position: fixed;
   left: 0;
   top: 0;
   z-index: 99;
   width: 100%;
   height: 100%;
   background: rgba(0, 0, 0, 0.5);
   #
   main
   {
   font-family
   :
   'Jeju Gothic';
}

.dim3 {
   display: none;
   position: fixed;
   left: 0;
   top: 0;
   z-index: 99;
   width: 100%;
   height: 100%;
   background: rgba(0, 0, 0, 0.5);
   #
   main
   {
   font-family
   :
   'Jeju Gothic';
}

.dim4 {
   display: none;
   position: fixed;
   left: 0;
   top: 0;
   z-index: 99;
   width: 100%;
   height: 100%;
   background: rgba(0, 0, 0, 0.5);
   #
   main
   {
   font-family
   :
   'Jeju Gothic';
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

#ppap {
   width: 500px !important;
   position: absolute !important;
   top: 0px !important;
}
</style>

</head>
<%
   MemberDTO info = (MemberDTO) session.getAttribute("info");
%>
<body class="right-sidebar is-preload">


   <!-- Header -->
   <section id="header">
      <div class="container">
         <!-- Logo -->
         <h1 id="logo">
            <a href="main.jsp">#MOTD</a>
         </h1>

         <p>
            <%
               if (info == null) {
            %>
         
         <h2>What is your makeup for today?</h2>
         <!-- Button -->
         <button id="join" value='join' onclick="location.href='join.jsp'">Join
         </button>
         <button id="login" value='login' onclick="location.href='login.jsp'">LogIn</button>
         <%
            } else {
         %>
         <h2>
            Good day~  "<%=info.getName()%>" !!! let's decide your makeup for today. </h2>
            <button id="myPage" value='myPage' onclick="location.href='mypage1.jsp'">My Page</button>
                     <button id="logout" value='logout' onclick="location.href='logout.jsp'">Logout</button> 
        
         <%
            }
         %>
         </p>


         


         <!-- Nav -->
         <nav id="nav">
            <ul>
               <li><a class="icon solid fa-home" href="main.jsp"><span>Home</span></a></li>
               <li><a class="icon solid fa-cog" href="makeupsearch.jsp"><span>Makeup</span></a></li>
               <li><a class="icon solid fa-retweet" href="mypouch.jsp"><span>My
                        Pouch</span></a></li>
               <li><a class="icon solid fa-sitemap" href="community.jsp"><span>Community</span></a></li>
            </ul>
         </nav>

      </div>
   </section>

   <section id="main">
      <div class="container">
         <div class="row">
            <%
               if (info == null) {
            %>
            <h1>로그인하시면 파우치를 등록하실 수 있습니다.</h1>
            <%
               } else {
            %>

            <div class="row">

               <!-- Content -->
               <div id="content" class="col-8 col-12-medium">

                  <!-- Post -->
                  <article class="box post">
                     <header>
                        <h2>
                           내 파우치 속 <strong> 화장품들 </strong> 키워드와<br /> 유통기한 모두 똑똑하게 관리하자!
                        </h2>
                     </header>

                     <span class="image featured"><img src="images/pic04.jpg"
                        alt="" /></span>
                     <h3 id="base">My Base-makeup products</h3>
                     <div>
                        <!-- 아이디하고 비밀번호가 어떻게 되나여  에이 에이 ㅋㅋㅋㅋ  어디서 시작해야함?로그인 제이에스section-->
                        <%
                           CosmeticDAO dao2 = new CosmeticDAO();
                        System.out.println("null Check : " + info.getId());
                        ArrayList<CosmeticDTO> list1 = dao2.makebaseList(info.getId());
                        %>

                        <%
                           if (list1 != null) {
                        %>
                        <%
                           for (int i = 0; i < list1.size(); i++) {
                        %>
                        <p class="product">
                        <table style="border: 1px solid black;">
                           <tr>
                              <th>이름:</th>
                              <td><%=list1.get(i).getPch_name()%></td>
                           </tr>
                           <tr>
                              <td colspan="2"><img src="#" alt="" /> picture</td>
                              <!-- <td> </td> -->
                           </tr>
                           <tr>
                              <th>종류 :</th>
                              <td><%=list1.get(i).getParttype()%></td>
                           </tr>
                           <tr>
                              <th>브랜드 : <br> 용량 :
                              </th>
                              <td><%=list1.get(i).getBrand()%> <br> <%=list1.get(i).getVolume()%></td>
                           </tr>
                           <tr>
                              <th>색상 :</th>
                              <td><%=list1.get(i).getColor()%></td>
                           </tr>
                           <tr>
                              <th>개봉일 :</th>
                              <td><%=list1.get(i).getOpendate()%></td>
                           </tr>
                           <tr>
                              <th>#키워드</th>
                              <td><%=list1.get(i).getKeyword()%></td>
                           </tr>
                        </table>
                        </p>
                        <%
                           }
                        }
                        %>

                        <p id="addbase">

                           <a href="#a" class="open1"> 화장품 추가하기 </a>

                        </p>

                        <form action="../Addtopouch" method="post">
                           <div class="modelpop">
                              <div class="popup1">
                                 <h2>베이스 화장품 추가하기</h2>
                                 <div class="content1">
                                    <table class="add1">
                                       <caption>베이스 화장품(파운데이션, 비비, 씨씨, 쿠션 등) 새로 사셨어요?</caption>
                                       <colgroup>
                                          <col style="width: 40px">
                                          <col>
                                       </colgroup>
                                       <tbody>
                                          <tr>
                                             <th id="box" name="pch_name"><label
                                                for="productname">상품명 : </label></th>
                                             <td><input type="text" id="productname"
                                                placeholder="상품명을 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box"><label for="part">화장품 종류</label></th>
                                             <td><input type="radio" name="part" value="base"
                                                checked="checked">베이스 <input type="radio"
                                                name="part" value="eye">아이 <input type="radio"
                                                name="part" value="lip">립 <input type="radio"
                                                name="part" value="contouring">컨투어링</td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="parttype"><label for="parttype">카테고리
                                                   : </label></th>
                                             <td><select name="parttype" id="parttype">
                                                   <option value="foundation">파운데이션</option>
                                                   <option value="finishpowder">피니시파우더</option>
                                                   <option value="concealer">컨실러</option>
                                                   <option value="base/primer">베이스/프라이머</option>
                                                   <option value="BBcream">BB크림</option>
                                                   <option value="CCcream">CC크림</option>
                                                   <option value="makeupfixer">메이크업픽서</option>
                                             </select></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="brand"><label for="brand">브랜드
                                                   : </label></th>
                                             <td><input type="text" id="brand"
                                                placeholder="브랜드를 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="color"><label for="color">색상
                                                   : </label></th>
                                             <td><input type="text" id="color"
                                                placeholder="색상을 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="opendate"><label for="opendate">개봉일
                                                   : </label></th>
                                             <td><input type="date" id="opendate"
                                                placeholder="개봉일을 입력해주세요"></td>
                                          </tr>

                                       </tbody>
                                    </table>
                                 </div>
                                 <div class="txt_center">
                                    <input type="submit" value="Add to Pouch" class="btn_finish">
                                 </div>
                                 <a href="#" onClick="history.back(-1);" class="close1"> <img
                                    src="images/btn-close1.jpg" style="width: 41px;"></a>
                              </div>
                              <div class="dim1"></div>
                           </div>
                        </form>
                     </div>

                     <h3 id="eye">My Eye-makeup products</h3>
                     <div>

                        <%
                           ArrayList<CosmeticDTO> list2 = dao2.makeeyeList(info.getId());
                        %>

                        <%
                           if (list2 != null) {
                        %>
                        <%
                           for (int i = 0; i < list2.size(); i++) {
                        %>
                        <%
                           System.out.println("데이터 확인 " + list2.get(i).getPch_name());
                        %>
                        <%
                           System.out.println("데이터 확인 " + list2.get(i).getParttype());
                        %>
                        <%
                           System.out.println("데이터 확인 " + list2.get(i).getBrand());
                        %>
                        <%
                           System.out.println("데이터 확인 " + list2.get(i).getColor());
                        %>

                        <p class="product">
                        <table style="border: 1px solid black;">
                           <tr>
                              <th class='myName'>이름:</th>
                              <td><%=list2.get(i).getPch_name()%></td>
                           </tr>
                           <tr>
                              <td><img src="#" alt="" /></td>
                              <td>picture</td>
                           </tr>
                           <tr>
                              <th>종류 :</th>
                              <td><%=list2.get(i).getParttype()%></td>
                           </tr>
                           <tr>
                              <th>브랜드 : <br> 용량 :
                              </th>
                              <td><%=list2.get(i).getBrand()%> <br> <%=list2.get(i).getVolume()%></td>
                           </tr>
                           <tr>
                              <th>색상 :</th>
                              <td><%=list2.get(i).getColor()%></td>
                           </tr>
                           <tr>
                              <th>개봉일 :</th>
                              <td><%=list2.get(i).getOpendate()%></td>
                           </tr>
                           <tr>
                              <th>#키워드</th>
                              <td><%=list2.get(i).getKeyword()%></td>
                           </tr>
                        </table>
                        </p>
                        <%
                           }
                        }
                        %>




                        <p id="addeye">
                           <a href="#a" class="open2"> 화장품 추가하기 </a>

                        </p>

                        <form action="../Addtopouch" method="post">
                           <div class="modelpop">
                              <div class="popup2">
                                 <h2>eye-makeup 화장품 추가하기</h2>
                                 <div class="content2">
                                    <table class="add1">
                                       <caption>눈 화장품(아이섀도우) 새로 사셨어요?</caption>
                                       <colgroup>
                                          <col style="width: 40px">
                                          <col>
                                       </colgroup>
                                       <tbody>
                                          <tr>
                                             <th id="box" name="pch_name"><label
                                                for="productname">상품명 : </label></th>
                                             <td><input type="text" id="productname"
                                                placeholder="상품명을 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box"><label for="part">화장품 종류</label></th>
                                             <td><input type="radio" name="part" value="base">베이스
                                                <input type="radio" name="part" value="eye"
                                                checked="checked">아이 <input type="radio"
                                                name="part" value="lip">립 <input type="radio"
                                                name="part" value="contouring">컨투어링</td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="parttype"><label for="parttype">카테고리
                                                   : </label></th>
                                             <td><select name="parttype" id="parttype">
                                                   <option value="eyeshadow">eyeshadow</option>
                                                   <option value="eyeliner">eyeliner</option>
                                                   <option value="eyebrow">eyebrow</option>
                                                   <option value="maskara">maskara</option>
                                                   <option value="eyeprimer">eyeprimer</option>


                                             </select></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="brand"><label for="brand">브랜드
                                                   : </label></th>
                                             <td><input type="text" id="brand"
                                                placeholder="브랜드를 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="color"><label for="color">색상
                                                   : </label></th>
                                             <td><input type="text" id="color"
                                                placeholder="색상을 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="opendate"><label for="opendate">개봉일
                                                   : </label></th>
                                             <td><input type="date" id="opendate"
                                                placeholder="개봉일을 입력해주세요"></td>
                                          </tr>

                                       </tbody>
                                    </table>
                                 </div>
                                 <div class="txt_center">
                                    <input type="submit" value="Add to Pouch" class="btn_finish">
                                 </div>
                                 <a href="#" onClick="history.back(-1);" class="close2"> <img
                                    src="images/btn-close1.jpg" style="width: 41px;"></a>
                              </div>
                              <div class="dim2"></div>
                           </div>
                        </form>
                     </div>

                     <h3 id="lip">My lip-makeup products</h3>
                     <div>

                        <%
                           ArrayList<CosmeticDTO> list3 = dao2.makelipList(info.getId());
                        %>

                        <%
                           if (list3 != null) {
                        %>
                        <%
                           for (int i = 0; i < list3.size(); i++) {
                        %>
                        <p class="product">
                        <table style="border: 1px solid black;">
                           <tr>
                              <th>이름:</th>
                              <td><%=list3.get(i).getPch_name()%></td>
                           </tr>
                           <tr>
                              <td><img src="#" alt="" /></td>
                              <td>picture</td>
                           </tr>
                           <tr>
                              <th>종류 :</th>
                              <td><%=list3.get(i).getParttype()%></td>
                           </tr>
                           <tr>
                              <th>브랜드 : <br> 용량 :
                              </th>
                              <td><%=list3.get(i).getBrand()%> <br> <%=list3.get(i).getVolume()%></td>
                           </tr>
                           <tr>
                              <th>색상 :</th>
                              <td><%=list3.get(i).getColor()%></td>
                           </tr>
                           <tr>
                              <th>개봉일 :</th>
                              <td><%=list3.get(i).getOpendate()%></td>
                           </tr>
                           <tr>
                              <th>#키워드</th>
                              <td><%=list3.get(i).getKeyword()%></td>
                           </tr>
                        </table>
                        </p>
                        <%
                           }
                        }
                        %>

                        <p id="addlip">

                           <a href="#a" class="open3"> 화장품 추가하기 </a>

                        </p>

                        <form action="../Addtopouch" method="post">
                           <div class="modelpop">
                              <div class="popup3">
                                 <h2>lip-makeup 화장품 추가하기</h2>
                                 <div class="content3">
                                    <table class="add1">
                                       <caption></caption>
                                       <colgroup>
                                          <col style="width: 40px">
                                          <col>
                                       </colgroup>
                                       <tbody>
                                          <tr>
                                             <th id="box" name="pch_name"><label
                                                for="productname">상품명 : </label></th>
                                             <td><input type="text" id="productname"
                                                placeholder="상품명을 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box"><label for="part">화장품 종류</label></th>
                                             <td><input type="radio" name="part" value="base">베이스
                                                <input type="radio" name="part" value="eye">아이 <input
                                                type="radio" name="part" value="lip" checked="checked">립
                                                <input type="radio" name="part" value="contouring">컨투어링
                                             </td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="parttype"><label for="parttype">카테고리
                                                   : </label></th>
                                             <td><select name="parttype" id="parttype">
                                                   <option value="lipstick">lipstick</option>
                                                   <option value="liptint/locker">
                                                      liptint/liplocker</option>
                                                   <option value="lippencil">lip-pencil</option>
                                                   <option value="lipglose">lip-glose</option>
                                                   <option value="lipbase">lip-base</option>
                                                   <option value="lipcare">-- lip-care</option>


                                             </select></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="brand"><label for="brand">브랜드
                                                   : </label></th>
                                             <td><input type="text" id="brand"
                                                placeholder="브랜드를 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="color"><label for="color">색상
                                                   : </label></th>
                                             <td><input type="text" id="color"
                                                placeholder="색상을 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="opendate"><label for="opendate">개봉일
                                                   : </label></th>
                                             <td><input type="date" id="opendate"
                                                placeholder="개봉일을 입력해주세요"></td>
                                          </tr>

                                       </tbody>
                                    </table>
                                 </div>
                                 <div class="txt_center">
                                    <input type="submit" value="Add to Pouch" class="btn_finish">
                                 </div>
                                 <a href="#" onClick="history.back(-1);" class="close3"> <img
                                    src="images/btn-close1.jpg" style="width: 41px;"></a>
                              </div>
                              <div class="dim3"></div>
                           </div>
                        </form>
                     </div>

                     <h3 id="contour">My contouring products</h3>
                     <div>
                        <%
                           ArrayList<CosmeticDTO> list4 = dao2.makecontourList(info.getId());
                        %>

                        <%
                           if (list4 != null) {
                        %>
                        <%
                           for (int i = 0; i < list4.size(); i++) {
                        %>
                        <p class="product">
                        <table style="border: 1px solid black;">
                           <tr>
                              <th>이름:</th>
                              <td><%=list4.get(i).getPch_name()%></td>
                           </tr>
                           <tr>
                              <td><img src="#" alt="" /></td>
                              <td>picture</td>
                           </tr>
                           <tr>
                              <th>종류 :</th>
                              <td><%=list4.get(i).getParttype()%></td>
                           </tr>
                           <tr>
                              <th>브랜드 : <br> 용량 :
                              </th>
                              <td><%=list4.get(i).getBrand()%> <br> <%=list4.get(i).getVolume()%></td>
                           </tr>
                           <tr>
                              <th>색상 :</th>
                              <td><%=list4.get(i).getColor()%></td>
                           </tr>
                           <tr>
                              <th>개봉일 :</th>
                              <td><%=list4.get(i).getOpendate()%></td>
                           </tr>
                           <tr>
                              <th>#키워드</th>
                              <td><%=list4.get(i).getKeyword()%></td>
                           </tr>
                        </table>
                        </p>

                        <%
                           }
                        %>

                        <%
                           }
                        %>


                        <p id="addcontour">

                           <a href="#a" class="open4"> 화장품 추가하기 </a>

                        </p>

                        <form action="../Addtopouch" method="post">
                           <div class="modelpop">
                              <div class="popup4">
                                 <h2>contouring 화장품 추가하기</h2>
                                 <div class="content4">
                                    <table class="add1">
                                       <caption>컨투어링 화장품(블러셔, 쉐딩, 하이라이터) 새로 사셨어요?</caption>
                                       <colgroup>
                                          <col style="width: 40px">
                                          <col>
                                       </colgroup>
                                       <tbody>
                                          <tr>
                                             <th id="box" name="pch_name"><label
                                                for="productname">상품명 : </label></th>
                                             <td><input type="text" id="productname"
                                                placeholder="상품명을 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box"><label for="part">화장품 종류</label></th>
                                             <td><input type="radio" name="part" value="base">베이스
                                                <input type="radio" name="part" value="eye">아이 <input
                                                type="radio" name="part" value="lip">립 <input
                                                type="radio" name="part" value="contouring"
                                                checked="checked">컨투어링</td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="parttype"><label for="parttype">카테고리
                                                   : </label></th>
                                             <td><select name="parttype" id="parttype">
                                                   <option value="blusher">blusher</option>
                                                   <option value="shading">shading</option>
                                                   <option value="highlighter">highlighter</option>
                                                   <option value="contouringpalate">contouringpalate</option>


                                             </select></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="brand"><label for="brand">브랜드
                                                   : </label></th>
                                             <td><input type="text" id="brand"
                                                placeholder="브랜드를 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="color"><label for="color">색상
                                                   : </label></th>
                                             <td><input type="text" id="color"
                                                placeholder="색상을 입력해주세요"></td>
                                          </tr>

                                          <tr>
                                             <th id="box" name="opendate"><label for="opendate">개봉일
                                                   : </label></th>
                                             <td><input type="date" id="opendate"
                                                placeholder="개봉일을 입력해주세요"></td>
                                          </tr>

                                       </tbody>
                                    </table>
                                 </div>
                                 <div class="txt_center">
                                    <input type="submit" value="Add to Pouch" class="btn_finish">
                                 </div>
                                 <a href="#" onClick="history.back(-1);" class="close4"> <img
                                    src="images/btn-close1.jpg" style="width: 41px;"></a>
                              </div>
                              <div class="dim4"></div>
                           </div>
                        </form>
                  </article>


               </div>
               <div id="ppap" class="col-4 col-12-medium">

                  Excerpts
                  <section>
                     <ul class="divided">
                        <li>Excerpt
                           <article class="base_makeup_box">
                              <header>
                                 <button type="button" class="basebox"
                                    style="margin: 0 0 10px 0";>베이스 메이크업 박스</button>
                                 <br>
                                 <h3>
                                    <a href="#">가지고 계신 제품들은...</a>
                                 </h3>
                              </header>
                              <p>커버력이 좋은 23호 제품들을 사용하고 계시네요! #봄웜 #커버력 #라벨링</p>
                           </article> <script type="text/javascript">
                              $(document)
                                    .ready(
                                          function(event) {
                                             $(".basebox")
                                                   .on(
                                                         "click",
                                                         function() {
                                                            var offset = $(
                                                                  '#base')
                                                                  .offset();
                                                            $(
                                                                  'html')
                                                                  .animate(
                                                                        {
                                                                           scrollTop : offset.top
                                                                        },
                                                                        400);
                                                         })
                                          })
                           </script>
                        </li>
                        <li>Excerpt
                           <article class="eye_makeup_box">
                              <header>
                                 <button type="button" class="eyebox"
                                    style="margin: 0 0 10px 0";>아이 메이크업 박스</button>
                                 <br>
                                 <h3>
                                    <a href="#">가지고 계신 제품들은...</a>
                                 </h3>
                              </header>
                              <p>펄을 좋아하시나봐요? #글리터 #금펄 #가루날림 #포인트메이크업</p>
                           </article> <script type="text/javascript">
                              $(document)
                                    .ready(
                                          function(event) {
                                             $(".eyebox")
                                                   .on(
                                                         "click",
                                                         function() {
                                                            var offset = $(
                                                                  '#eye')
                                                                  .offset();
                                                            $(
                                                                  'html')
                                                                  .animate(
                                                                        {
                                                                           scrollTop : offset.top
                                                                        },
                                                                        400);
                                                         })
                                          })
                           </script>

                        </li>
                        <li>Excerpt
                           <article class="lip_makeup_box">
                              <header>
                                 <button type="button" class="lipbox"
                                    style="margin: 0 0 10px 0";>립 메이크업 박스</button>
                                 <br>
                                 <h3>
                                    <a href="#">가지고 계신 제품들은...</a>
                                 </h3>
                              </header>
                              <p>MLBB 처돌이 #매트립 #가을여자 #누드 #자연스러운</p>
                           </article> <script type="text/javascript">
                              $(document)
                                    .ready(
                                          function(event) {
                                             $(".lipbox")
                                                   .on(
                                                         "click",
                                                         function() {
                                                            var offset = $(
                                                                  '#lip')
                                                                  .offset();
                                                            $(
                                                                  'html')
                                                                  .animate(
                                                                        {
                                                                           scrollTop : offset.top
                                                                        },
                                                                        400);
                                                         })
                                          })
                           </script>

                        </li>
                        <li>Excerpt
                           <article class="contouring_makeup_box">
                              <header>
                                 <button type="button" class="contouring"
                                    style="margin: 0 0 10px 0";>컨투어링 메이크업 박스</button>
                                 //이게 버튼이어서 내려 주면 좋겠음. <br>
                                 <h3>
                                    <a href="#">가지고 계신 제품들은...</a>
                                 </h3>
                              </header>
                              <p>국민 쉐도우 #붉은기가 없는 #자연스러운 #데일리</p>
                           </article> <script type="text/javascript">
                              $(document)
                                    .ready(
                                          function(event) {
                                             $(".contouring")
                                                   .on(
                                                         "click",
                                                         function() {
                                                            var offset = $(
                                                                  '#contour')
                                                                  .offset();
                                                            $(
                                                                  'html')
                                                                  .animate(
                                                                        {
                                                                           scrollTop : offset.top
                                                                        },
                                                                        400);
                                                         })
                                          })
                           </script>

                        </li>
                     </ul>
                  </section>


                  Highlights
                  <section>
                     <ul class="divided">

                        <li>Highlight
                           <article class="box highlight">
                              <header>
                                 <h3>
                                    <a href="#">newly released</a>
                                 </h3>
                              </header>
                              <a href="#" class="image left"><img src="images/pic07.jpg"
                                 alt="" /></a>
                              <p>신상처돌이들을 위한 신상 추천 >_<.</p>
                              <ul class="actions">
                                 <li><a href="#" class="button icon solid fa-file">Learn
                                       More</a></li>
                              </ul>
                           </article>

                        </li>

                        <li>Highlight
                           <article class="box highlight">
                              <header>
                                 <h3>
                                    <a href="#"> 곧 버려야해요~ </a>
                                 </h3>
                              </header>
                              <a href="#" class="image left"><img src="images/pic07.jpg"
                                 alt="" /></a>
                              <p>아까워하지말고 피부를 위해서 과감히 버리는 건 어때요? 개봉한지 2년이 넘었어요!</p>
                              <ul class="actions">
                                 <li><a href="#" class="button icon solid fa-file">Learn
                                       More</a></li>
                              </ul>
                           </article>

                        </li>
                     </ul>
                  </section>

               </div>
            </div>
   </section>









   <!-- Sidebar -->
   <
   <!-- div id="ppap" class="col-4 col-12-medium">

      Excerpts
      <section>
         <ul class="divided">
            <li>
               Excerpt
               <article class="base_makeup_box">
                  <header>
                     <button type="button" class="basebox" style="margin: 0 0 10px 0";>베이스
                        메이크업 박스</button>
                     <br>
                     <h3>
                        <a href="#">가지고 계신 제품들은...</a>
                     </h3>
                  </header>
                  <p>커버력이 좋은 23호 제품들을 사용하고 계시네요! #봄웜 #커버력 #라벨링</p>
               </article> <script type="text/javascript">
                  $(document).ready(function(event) {
                     $(".basebox").on("click", function() {
                        var offset = $('#base').offset();
                        $('html').animate({
                           scrollTop : offset.top
                        }, 400);
                     })
                  })
               </script>
            </li>
            <li>
               Excerpt
               <article class="eye_makeup_box">
                  <header>
                     <button type="button" class="eyebox" style="margin: 0 0 10px 0";>아이
                        메이크업 박스</button>
                     <br>
                     <h3>
                        <a href="#">가지고 계신 제품들은...</a>
                     </h3>
                  </header>
                  <p>펄을 좋아하시나봐요? #글리터 #금펄 #가루날림 #포인트메이크업</p>
               </article> <script type="text/javascript">
                  $(document).ready(function(event) {
                     $(".eyebox").on("click", function() {
                        var offset = $('#eye').offset();
                        $('html').animate({
                           scrollTop : offset.top
                        }, 400);
                     })
                  })
               </script>

            </li>
            <li>
               Excerpt
               <article class="lip_makeup_box">
                  <header>
                     <button type="button" class="lipbox" style="margin: 0 0 10px 0";>립
                        메이크업 박스</button>
                     <br>
                     <h3>
                        <a href="#">가지고 계신 제품들은...</a>
                     </h3>
                  </header>
                  <p>MLBB 처돌이 #매트립 #가을여자 #누드 #자연스러운</p>
               </article> <script type="text/javascript">
                  $(document).ready(function(event) {
                     $(".lipbox").on("click", function() {
                        var offset = $('#lip').offset();
                        $('html').animate({
                           scrollTop : offset.top
                        }, 400);
                     })
                  })
               </script>

            </li>
            <li>
               Excerpt
               <article class="contouring_makeup_box">
                  <header>
                     <button type="button" class="contouring"
                        style="margin: 0 0 10px 0";>컨투어링 메이크업 박스</button>
                     //이게 버튼이어서 내려 주면 좋겠음.
                     <br>
                     <h3>
                        <a href="#">가지고 계신 제품들은...</a>
                     </h3>
                  </header>
                  <p>국민 쉐도우 #붉은기가 없는 #자연스러운 #데일리</p>
               </article> <script type="text/javascript">
                  $(document).ready(function(event) {
                     $(".contouring").on("click", function() {
                        var offset = $('#contour').offset();
                        $('html').animate({
                           scrollTop : offset.top
                        }, 400);
                     })
                  })
               </script>

            </li>
         </ul>
      </section>


      Highlights
      <section>
         <ul class="divided">

            <li>
               Highlight
               <article class="box highlight">
                  <header>
                     <h3>
                        <a href="#">newly released</a>
                     </h3>
                  </header>
                  <a href="#" class="image left"><img src="images/pic07.jpg"
                     alt="" /></a>
                  <p>신상처돌이들을 위한 신상 추천 >_<.</p>
                  <ul class="actions">
                     <li><a href="#" class="button icon solid fa-file">Learn
                           More</a></li>
                  </ul>
               </article>

            </li>

            <li>
               Highlight
               <article class="box highlight">
                  <header>
                     <h3>
                        <a href="#"> 곧 버려야해요~ </a>
                     </h3>
                  </header>
                  <a href="#" class="image left"><img src="images/pic07.jpg"
                     alt="" /></a>
                  <p>아까워하지말고 피부를 위해서 과감히 버리는 건 어때요? 개봉한지 2년이 넘었어요!</p>
                  <ul class="actions">
                     <li><a href="#" class="button icon solid fa-file">Learn
                           More</a></li>
                  </ul>
               </article>

            </li>
         </ul>
      </section>

   </div> -->
   <%
      }
   %>

   </section>




   <!-- Footer -->
   <section id="footer">
      <div class="container">
         <header>
            <h2>
               Questions or comments? <strong>Get in touch:</strong>
            </h2>
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
                           <a href="#"
                              class="form-button-submit button icon solid fa-envelope">Send
                              Message</a>
                        </div>
                     </div>
                  </form>
               </section>
            </div>
            <div class="col-6 col-12-medium">
               <section>
                  <p>Erat lorem ipsum veroeros consequat magna tempus lorem
                     ipsum consequat Phaselamet mollis tortor congue. Sed quis mauris
                     sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu
                     malesuada.</p>
                  <div class="row">
                     <div class="col-6 col-12-small">
                        <ul class="icons">
                           <li class="icon solid fa-home">1234 Somewhere Road<br />
                              Nashville, TN 00000<br /> USA
                           </li>
                           <li class="icon solid fa-phone">(000) 000-0000</li>
                           <li class="icon solid fa-envelope"><a href="#">info@untitled.tld</a>
                           </li>
                        </ul>
                     </div>
                     <div class="col-6 col-12-small">
                        <ul class="icons">
                           <li class="icon brands fa-twitter"><a href="#">@untitled</a>
                           </li>
                           <li class="icon brands fa-instagram"><a href="#">instagram.com/untitled</a>
                           </li>
                           <li class="icon brands fa-dribbble"><a href="#">dribbble.com/untitled</a>
                           </li>
                           <li class="icon brands fa-facebook-f"><a href="#">facebook.com/untitled</a>
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
            <li>&copy; Untitled. All rights reserved.</li>
            <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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