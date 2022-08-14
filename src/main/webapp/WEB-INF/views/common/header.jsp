<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<script src="resources/js/jquery-3.6.0.js"></script>
<!-- font awesome 5 cdn-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600;700&family=Shadows+Into+Light&display=swap');

*{
    background-color: rgb(0, 0, 0);
    color: rgb(224, 217, 203);
}

.header-top{
    width: 1200px;
    margin: 0 auto;
    margin-top: 10px;
    overflow: hidden;
}

.logo{
    font-family: 'Dancing Script',sans-serif;
    margin-left: 10px;
    float: left;
}

.logo>a{
    letter-spacing: 3px;
    font-size: 50px;
    font-weight: bold;
    text-decoration: none;  
    color: rgb(209, 191, 162);
    display: block;
    height: 80px;
    line-height: 80px;
    width: 150px;
}

.link-box{
    line-height: 80px;
    height: 80px;
}
.link-box>button{
    font-family: 'Dancing Script',sans-serif;
    float: right;
    border: none;
    text-decoration: none;
    font-size: 20px;
    color: #eacb75;
    margin: 20px;
}
.link-box>button:nth-last-child(2){
    margin-right: 100px;
}
.link-box>button:hover{
    color: rgb(227, 203, 126);
}

.nav-wrap{
    border-top: 1px solid rgb(66, 65, 65);
    border-bottom: 1px solid rgb(66, 65, 65);
}
.nav{
    list-style-type: none;
    width: 800px;
    margin: 0 auto;
    padding: 0;
    overflow: hidden;
}

.nav>li{
    float: left;
}
.nav>li>a{
    display: block; /*왜??*/
    width: calc(800px / 4);
    font-size: 14px;
    line-height: 40px;
    height: 34px;
    border-top: 3px solid transparent;
    border-bottom: 3px solid transparent;
    text-align: center;
    text-decoration: none;
}
.nav>li>a:hover{
    border-bottom: 3px solid #afafaf;
    color: #d8b963;
    font-size: 15px;
    font-weight: 900;
}
button:hover{
    cursor: pointer;
}
</style>
</head>
<body>
	<div class="header"><!--header-------------->
	    <div class="header-top"><!--header-top-->
	        <div class="logo">
	            <a href="/">Calm</a>
	        </div>
	        <div class="link-box">
	            <button class="cta-btn" id="open">login</button>
	            <button onclick="location.href='/join.do'" class="cta-btn">sign up</button>
	        </div>
	    </div>   
	    <div class="nav-wrap"><!--nav-wrap-->
	        <ul class="nav">
	            <li><a href="#">청음실</a></li>
	            <li><a href="rest.html">쉬다</a></li>
	            <li><a href="#">함께하다</a></li>
	            <li><a href="#">about Calm</a></li>
	        </ul>
	    </div>
	</div>
</body>
</html>