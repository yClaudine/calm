<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600;700&family=Shadows+Into+Light&display=swap');
*{
    background-color: rgb(0, 0, 0);
    color: rgb(224, 217, 203);
}
h1{
    font-family: 'Dancing Script',sans-serif;
}

/*main-----------------------------*/
.main-img{
    background-image: url(/resources/img/light.jpg);
    height: 1390px;
    position: relative;
    z-index: ;
}
.img-cover{
    width: 100%;
    height: 1290px;
    background-color: rgba(0, 0, 0, 0.5);
    position: absolute;
    padding: 50px 0px;
}
.contents{
    z-index: 10;
    margin: 0 auto;
    width: 1200px;
    /*border: 1px solid blue;*/
    overflow: hidden;
    background-color: rgba(0, 0, 0, 0.1);
}
.navi{
    width: 200px;
    /*border: 1px solid red;*/
    float: left;
    background-color: rgba(0, 0, 0, 0.1);    
    
}
.navi ul{
    margin: 0;
    padding: 0;
    list-style-type: none
}
.navi ul>li{
    text-align: center;
    margin-top: 5px;
    margin-bottom: 5px;
}
.navi ul>li>a{
    color: rgb(224, 220, 183);
    text-decoration: none;
    border: 1px solid rgb(93, 69, 30);
    font-size: 15px;
    height: 55px;
    line-height: 55px;
    display: block;

}

.navi1{
    margin-top: 20px;
    margin-bottom: 50px;
    font-weight: 900;
    background-color: rgba(0, 0, 0, 0.5);
}
.navi ul>li>a{
    background-color: rgba(0, 0, 0, 0.5);

}
.navi3>.n3>li>.nn{
    color: rgb(248, 242, 206);
    background: linear-gradient(to right, #fbfcb9be, #ffcdf3aa, #65d3ffaa);
}
.navi3{
    font-weight: 900;
}
.navi1>ul>li>a:hover{
    color: rgb(206, 121, 11);
    font-size: 16px;
    font-weight: bold;
    border-radius: 10px;
    background-color: rgb(246, 222, 189);
}
.navi2>ul>li>a:hover{
    color: rgb(206, 121, 11);
    font-size: 16px;
    font-weight: bold;
    border-radius: 10px;
    background-color: rgb(246, 222, 189);
}
.navi3>ul>li>a:hover{
    color: rgb(246, 246, 206);
    font-size: 16px;
    border-radius: 10px;
    background-color: rgb(223, 195, 103);
}
.navi3{
    margin-top: 100px;
}
/*items-----------------------*/
.items{
    float: right;
    width: 900px;
    margin: 0;
    background-color: rgba(0, 0, 0, 0.5);
}
.items>h1{
    background-color: rgba(0, 0, 0, 0.1);
    margin-top: 10px;
}
.items>ul{
    list-style-type: none;
    padding: 0;
    overflow: hidden;
}
.item{
    float: left;
    height: px;
    width: calc(100% / 3);
    padding: 20px;
    box-sizing: border-box;
}
.item>a{
    text-decoration: none;
    display: block;
    padding-bottom: 20px;
    border: 3px solid transparent;
}
.item-box{
    width: 90%;
    margin: 0 auto;
}

.img-box>img{
    width: 100%;
    height: 200px;
    border-radius: 20px;
    position: relative;
}
.img-box>img>.cover{

}
.info{
    width: 90%;
    margin: 0 auto;
    text-align: right;
}
.sleep{
    font-size: 17px;
}
.review>.r{
    font-size: 17px;
}
.item>a:hover{
    box-shadow: 0 4px 20px 0 rgba(218, 210, 210, 0.2);
    font-weight: bolder;
    border: 3px solid rgb(58, 52, 52);
    border-radius: 20px;

}
.item>a:hover>img{

}

/*footer------------------------*/
.footer{
    width: auto;
    height: 180px;
    border-top: 1px solid rgb(106, 96, 116);
    margin: 0 auto;
}
.footer div>*{
    color: rgb(146, 145, 145);
}
.footer div:first-child{
    width: 1200px;
    margin: 0 auto;

}
.footer div:last-child{
    width: 1200px;
    margin: 0 auto;
}
.links{
    list-style-type: none;
    padding: 0;
    margin: 0;
    margin-bottom: 10px;
    width: 1200px;
    overflow: hidden;
}
.links>li{
    float: left;
    width: 150px;
    height: 30px;
    line-height: 30px;
    border: 1px solid rgb(98, 98, 98);
}
.links>li>a{
    display: block;
    text-decoration: none;
    text-align: center;
    color: rgb(146, 145, 145);
}


</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>

    <div class="main">
        <div class="main-img"><!--image---여기가 배경이니까------>
            <div class="img-cover">
                <!--이게 검정색 뷸러효과-->
                <div class="contents">   
                    <div class="navi">
                        <div class="navi1">
                            <ul class="n1">
                                <li><a href="http://127.0.0.1:5500/prac_220224/profile.html">멤버십 프로필</a></li>
                            </ul>
                        </div>
                        <div class="navi2">
                            <ul class="n2">
                                <li><a href="#">수면</a></li>
                                <li><a href="#">명상</a></li>
                                <li><a href="#">기분 / 분위기</a></li>
                            </ul>
                        </div>
                        <div class="navi3">
                            <ul class="n3">
                                <li><a href="#" class="nn">멤버십 구독</a></li>
                                <li><a href="#">데스크톱앱 설치</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="items">
                        <h1>Today top10</h1>
                        <ul>
                            <li class="item">
                                <a href="#">
                                    <div class="img-box">
                                        <img src="/resources/img/1.jpg">
                                            <div class="cover"></div>
                                    </div>
                                    <div class="info">
                                        <div class="sleep">잠이 안와요?</div>
                                        <div class="review">
                                            <span class="r">review(879)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="item">
                                <a href="#">
                                    <div class="img-box">
                                        <img src="/resources/img/2.jpg">
                                    </div>
                                    <div class="info">
                                        <div class="sleep">짧은 집중이 필요할 때</div>
                                        <div class="review">
                                            <span class="r">review(989)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        <li class="item">
                            <a href="#">
                                <div class="img-box">
                                    <img src="/resources/img/3.jpg">
                                </div>
                                <div class="info">
                                    <div class="sleep">자다 깼을 때</div>
                                    <div class="review">
                                        <span class="r">review(334)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="item">
                            <a href="#">
                                <div class="img-box">
                                    <img src="/resources/img/4.jpg">
                                </div>
                                <div class="info">
                                    <div class="sleep">1시간 집중</div>
                                    <div class="review">
                                        <span class="r">review(478)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="item">
                            <a href="#">
                                <div class="img-box">
                                    <img src="/resources/img/5.jpg">
                                </div>
                                <div class="info">
                                    <div class="sleep">여행가고 싶을 때</div>
                                    <div class="review">
                                        <span class="r">review(999+)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="item">
                            <a href="#">
                                <div class="img-box">
                                    <img src="/resources/img/6.jpg">
                                </div>
                                <div class="info">
                                    <div class="sleep">일하다 졸릴 때</div>
                                    <div class="review">
                                        <span class="r">review(250)</span>
                                    </div>
                                </div>
                            </a>
                        </li>     
                        </ul>
                    </div> 
                </div>
            </div>
        </div>
            
        </div>               
    </div>
</body>
</html>