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
<!-- 카카오 로그인 js -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f639cc1a44bf70b37b6f29c1aea5a77c"></script>
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
/*video---------------------*/
.content{
    width: 100vw;
    /*height: 100vh;*/
    height: 800px;
    overflow: hidden;
    position: absolute;
    	z-index:-1;
    
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
/*text----------------------*/
.text-box{
    z-index: 10;
    background-color:rgba(226, 184, 116, 0.5);
    ;
    height: 100px;
    width: 100px;
    border: 1px solid red;
    position: absolute;
    margin-left: 200px;
    margin-top: 150px;
}

footer------------------------
.footer{
    height: 200px;
}
.footer div>*{
    color: rgb(146, 145, 145);
}
.footer div:first-child{
    width: 1200px;
    margin: 820px auto 20px auto;
}

.footer div:last-child{
    width: 1200px;
    margin: 0 auto;
}
.footer>div>h3,p{
    color: rgb(146, 145, 145);

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


/*modal------------------*/
button, input[type='submit']{
    background-color: var(--secondary-color);
    border: 0; /*항상 border 기본*/
    border-radius: 5px;
    cursor: pointer;
    padding: 8px 12px;
}

button:focus{
    outline: none;
}
button:hover{
    cursor: pointer;
}

.cta-btn{
    padding: 15px 10px;
    font-size: 20px; /*버튼은 항상 padding주고, 폰트크기가 버튼크기에 적용됨*/
}


.modal-container{ /*모달 배경*/
    background-color: rgba(0, 0, 0, 0.6);
    display: none;/*초기설정 : 안보이게*/
    position: fixed;
    /*전체 페이지 덮을 수 있게*/
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

/*show-modal 클래스 추가 됐을 때================*/
.modal-container.show-modal{
    display: block;
}

.modal{
	z-index:1;
}
.modal *{
    background-color: rgb(222, 204, 138);
    color: #333;        
}

.modal input{
    border: 1px solid #333;
    margin-left: 10px;
}

.modal{ /*모달 실제 창*/
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    position: absolute; /*위에 fixed - absolute*/
    overflow: hidden; /*스크롤바 등 안보이게*/
    top: 500px;
    left: 800px;
    transform: translate(-50%, -50%);
    max-width: 100%;
    width: 400px;
    /*맨 아래에 키프레임 생성!!!!!!*/
    animation-name: modalopen;
    animation-duration: var(--modal-duration);
}

.modal-header{
    padding: 15px;
}
.modal-header h3{
    margin: 0;
}

.modal-content{
    padding: 20px;
}
.modal-form div{
    margin: 15px 0; /*padding으로 하면 두 배로 간격이 넓어짐*/
    width: 320px;

}
.modal-form label{
    display: block; /*label 다음줄 input 줄 바꿈*/
    margin-bottom: 5px;
}
.modal-form .form-input{
    padding: 10px; /*input 높이 조절*/
    width: 100%;
    margin-bottom: 15px;
}

.close-btn{
    background: transparent;
    font-size: 25px;
    position: absolute; /*위 요소 modal도 absolute라서?*/
    top: 0;
    right: 0;
}
.join-cta{
    float: left;
    margin-top: 0;
    margin-right:30px;
    color: rgb(67, 67, 67);
    font-weight: 700;
}
.find-password{
    float: right;
    margin-top: 0;
    color: rgb(67, 67, 67);
    font-weight: 700;
}


/*애니메이션 키프레임---------------------------*/
@keyframes modalopen{ /*1초 투명도 설정*/
    from{
        opacity: 0;
    }
    to{
        opacity: 1;
    }
}

img{
	padding-left:30px;
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
	        	<c:choose>
	                <c:when test="${empty sessionScope.m}">
		            	<button class="cta-btn" id="open">login</button>
		            	<button onclick="location.href='/joinFrm.do'" class="cta-btn">sign up</button>
		            </c:when>
		            <c:when test="${!empty sessionScope.m && sessionScope.m.grade == 1}">
		            	<button onclick="location.href='/logout.do'" class="cta-btn" style="font-size:15px;">로그아웃</button>	            
		            	<button class="cta-btn" id="open"onclick="location.href='/mypage.do'" style="font-size:15px;">${sessionScope.m.memberName }님</button>
		            </c:when>
		            <c:when test="${!empty sessionScope.m && sessionScope.m.grade == 0}">
		            	<button onclick="location.href='/logout.do'" class="cta-btn" style="font-size:15px;">로그아웃</button>	            
		               	<button class="cta-btn" id="open"onclick="location.href='/admin.do'" style="font-size:15px;">관리자 페이지</button>
		            </c:when>
	        	</c:choose>
	            
	        </div>
	    </div>   
	    <div class="nav-wrap"><!--nav-wrap-->
	        <ul class="nav">
	            <li><a href="#">청음실</a></li>
	            <li><a href="/rest.do">쉬다</a></li>
	            <li><a href="#">함께하다</a></li>
	            <li><a href="#">about Calm</a></li>
	        </ul>
	    </div>
	</div>
	
	<!--로그인 모달--------------->
    <div class="modal-container" id="modal"><!--모달 배경-->

        <div class="modal" id="real-modal"><!--실제 모달-->
            <button class="close-btn" id="close">
                <i class="fa fa-times"></i>
            </button>
            <div class="modal-header" id="modal-header"><!--헤더-->
                <h3>로그인</h3>
            </div>

            <div class="modal-content"><!--내용-->
                <form class="modal-form" action="/login.do" method="post">
                    <div>
                        <label for="name">이메일</label>
                        <input type="text" id="name" placeholder="이메일을 입력하세요" class="form-input" name="email">
                    </div>
                    <div>
                        <label for="pw">비밀번호</label>
                        <input type="password" id="pw" placeholder="비밀번호를 입력하세요" class="form-input" name="memberPw">
                    </div>
                    <span class="buttons">
	                    <button type="button" class="join-cta" onclick="location.href='/joinFrm.do'">회원가입</button>
	                    <button type="button" class="find-password" onclick="location.href='/mypage.do'">비밀번호를 잊어버리셨나요?</button>
	                    <button type="submit" style="color:rgb(222, 204, 138)">로그인</button>    
                    </span>
                </form>
                <div>------------------------ or ------------------------</div>
                <div>
                	<button onclick="location.href='/kakao.do'">
                	<img src="resources/img/kakao.png">
                	</button>                	
                </div>
            </div>
        </div><!--실제 모달-->
    </div><!--전체 모달-->

    
<script>

	const close = document.getElementById('close');
	const open = document.getElementById('open');
	const modal = document.getElementById('modal');
	
	//Show modal
	open.addEventListener('click', () => modal.classList.add('show-modal'));
	
	//Hide modal
	close.addEventListener('click', () => modal.classList.remove('show-modal'));
	
	//Hide modal on outside click
	//window 는 가장 상위 
	window.addEventListener('click',e => e.target == modal ? modal.classList.remove('show-modal') : false);
</script>
</body>
</html>