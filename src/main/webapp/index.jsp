<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<style>
/*video*/
.content{
    width: 100vw;
    /*height: 100vh;*/
    height: 800px;
    overflow: hidden;
    position: absolute;
}
video{
    width: 100vw;
    position: absolute;
}

@media screen and (max-aspect-ratio: 1280/720) {
    video{
        width: auto;
        height: 100vh;
    }
} 
.video-cover{
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.1);
    position: absolute;
}	
</style>
</head>

<body>
	<%@include file="WEB-INF/views/common/header.jsp" %>
	<div class="content"><!--video------------->
       <video src="resources/video/Fireplace.mp4" muted autoplay loop></video>
       <div class="video-cover"></div>
    </div>
</body>
</html>