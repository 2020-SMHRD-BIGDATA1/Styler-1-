<%@page import= "com.model.MemberDAO" %>
<%@page import= "com.model.MemberDTO" %>

<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<%request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
<link href="http://fonts.googleapis.com/earlyaccess/jejugothic.css" rel="stylesheet"/>
<style>
	body { padding: 100px;
	background: #fff;
	}
	.popup{
	font-family: 'Jeju Gothic';
	position: fixed; 
	left: 50%; top: 50%; 
	z-index: 100;
	padding: 50px 60px 50px;
	width: 800px; height: 400px; 
	transform: translate(-50%, -50%); 
	box-sizing: border-box;
	background : #fff;
	}
	.popup h2 {
	padding : 0 0 15px;
	border-bottom : 3px solid #444;
	font-weight : normal;
	font-size: 30px;
	color: #222;
	text-align: center;
	line-height: 100%
	}
	.popup .close{
	position: absolute;
	right: 10px;
	top: 10px;
	width: 41px;
	height: 41px;
	background-image: url("../images/btn-close.jpg") no-repeat;
	
	}
	.popup .content{
	padding: 0px 130px 30px 130px;
	border-bottom: 1px solid #e8e8e8;
	text-align: center;
	}
	
	table.type1 th{
	font-size: 13px;
	color:#222;
	text-align : left;
	font-weight: normal;
	
	}
	#box{
	padding:20px;
	width: 50px;
	}
	
	#id1{
	text-align:center; 
	width:300px; 
	height:30px; 
	}
	#pw1{
	text-align:center; 
	width:300px; 
	height:30px; 
	}
	.btn_finish{

	display: inline-block;
	width: 170px;
	height: 40px;
	background: #de4f41;
	color:#fff;
	text-align: center;
	border-radius: 3px;
	padding-top: 3px;
	box-sizing: border-box;
	
	}
	.txt_center{
	text-align: center;
	padding: 30px 0 0 ;
	}
	
	.dim{ 
	position : fixed;
	left: 0;
	top :0;
	z-index: 99;
	width: 100%;
	height:100%;
	background: rgba(0,0,0,0.5) ;
	
	}
</style>
<script src="assets/js/jquery.min.js"></script>

</head>
<body>
<form action = "../identification" id="loginForm" method = "post" accept-charset="euc-kr">
	<div class="popup">
		<h2> 본인확인 </h2>
		<div class="content">
		<table class="login1">
			<caption>

			</caption>
			<colgroup>
			<col style="width: 40px">
			<col>
			</colgroup>
				<tbody>
				 <th id="box"><label for="id1">ID : </label> </th>
				 <td><input type="text" name="id" id="id1" placeholder="아이디를 입력해주세요"></td>
				 </tr> 
				 <tr>
				 <th id="box"><label for="pw1">PW : </label> </th>
				 <td><input type="password" name="pw" id="pw1" placeholder="비밀번호를 입력해주세요"></td>
				 </tr>
				</tbody>
		</table>
		</div>
		<div class="txt_center">
		<input type="submit" value="본인확인" class="btn_finish" >
		</div>
		<a href="#" onClick="history.back(-1);" class="close"> <img src="images/btn-close1.jpg" style="width: 41px;"></a>	
		</div>
		<div class="dim"></div>
</form>
</body>
</html>