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

/*content-----------------------------*/

.content{
    min-height: 100vh;
    margin: 0 auto;
    width: 1200px;
    overflow: hidden;
}
.navi{
    margin-left: 40px;
    width: 200px;
    height: 820px;
    /*border: 1px solid red;*/
    float: left;
    
}
.navi ul{
    margin: 0;
    padding: 0;
    list-style-type: none
}
.navi ul>li{
    text-align: center;
}
.navi ul>li>a{
    rgb(224, 220, 183);
    text-decoration: none;
    border: 1px solid rgb(93, 69, 30);
    font-size: 17px;
    height: 55px;
    line-height: 55px;
    display: block;
    margin-left: 5px;
    margin-top: 5px;
    margin-bottom: 5px;
}

.navi1{
    margin-top: 20px;
    margin-bottom: 10px;
    font-weight: 900;
}

.navi1>ul>li>a{
    color: rgb(206, 121, 11);
    font-size: 17px;
    border-radius: 10px;
    background-color: rgb(246, 222, 189);
}

.navi2>ul>li>a:hover{
    color: rgb(206, 121, 11);
    font-size: 17px;
    font-weight: 900;
    border-radius: 10px;
    background-color: rgb(246, 222, 189);
}

/*profile-----------------------*/
.profile{
    float: right;
    width: 900px;
    height: 700px;
    margin: 0;
    /*border: 1px solid orange;*/
}

h1{
    font-family: 'Dancing Script',sans-serif;
}



@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap');

/*root : scope 정해서 변수로 사용*/
:root{
    --success-color:#2ecc71;
    --error-color:#e74c3c;
}
.simple{
    background-color: rgb(83, 83, 83);
    border-radius: 5px;
    border: 1px solid rgb(186, 185, 185);
    box-shadow: 5px 5px 15px rgba(255, 255, 255, 0.3);
    width: 500px;
}
.simple div{
    padding:30px 40px;
}

/*이메일 가입---------*/
.container{
    margin-top: 50px;
    background-color: #fff;
    border-radius: 5px;
    border: 1px solid rgb(186, 185, 185);

    box-shadow: 5px 5px 15px rgba(255, 255, 255, 0.3);
    width: 500px;
}

h2{
    text-align: center;
    margin: 0;
}

.show-nav{
    display: ;
}


.form{
    padding:30px 40px;
}

.form-control:nth-child(1){
    margin-top: 20px;
}
.form-control{
    margin-bottom: 20px;
    position: relative;
    margin-bottom:30px;
    /*부모요소에 relative*/
}

.form-control label{
    color: #777;
    display: block;
    margin-bottom: 5px;
}

.form-control input{
    border: 2px solid #675625;
    border-radius: 4px;
    display: block;
    width: 95%;
    padding: 10px; /*input안에 패딩요소!*/
    font-size: 14px;
}
.form-control input:focus{
    outline: 0;
    border-color: #777;
}

/*성공, 에러 여기서 다룸*/
.form-control.success input{
    border-color: var(--success-color);
}
.form-control.error input{
    border-color: var(--error-color);
}

.form-control small{
    color: #e74c3c;
    position: absolute;
    bottom: 0;
    left: 0;
    /*숨겨두고 js에서 수정함*/
    visibility: hidden;
    /*display: none; 주변에 영향 줌*/
}
/*error 클래스 추가될 때 에러 메시지 뜨도록*/
.form-control.error small{
    visibility: visible;
}


.form button{
    cursor: pointer;
    background-color: #866a1e;
    border: 2px solid #866a1e;
    border-radius: 4px;
    color: #fff;
    display: block;
    font-size: 16px;
    padding: 10px; /*버튼에도 이렇게 넣어줌*/
    margin-top: 20px;
    width: 100%;
}

.form .email-confirm{
    width: 22%;
    margin-top: 0;
    background-color: #4d411b;
    
}
#email{
    margin-right: 10px;
    height: 18px;
}
.email-box{
    display: flex;
}

</style>
</head>
<body>	
	<%@include file="/WEB-INF/views/common/header.jsp" %>
    <div class="main">
        <div class="content">   
            <div class="navi">
                <div class="navi1">
                    <ul class="n1">
                        <li><a href="#">비밀번호 변경</a></li>
                    </ul>
                </div>
                <div class="navi2">
                    <ul class="n1">
                        <li><a href="#">회원정보 변경</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="profile">
                <h1>My Page</h1>

                <div class="container">
                    <form action="/newPw.do" id="form1" class="form">
                        <h2 class="email-toggle" onclick="toggleButton()">비밀번호 변경</h2>
                        <div class="show-nav" id="email-join">
                            <div class="form-control">
                                <label for="username">기존 비밀번호</label>
                                <input type="text" id="username" name="memberpW" placeholder="기존 비밀번호를 입력하세요">
                                <small>Error message</small>
                            </div> 
                            <div class="form-control">
                                <label for="password">새 비밀번호</label>
                                <div class="form-control">
                                    <input type="text" id="password" name="memberPwNew" placeholder="새 비밀번호를 입력하세요">
                                </div>
                                <small>Error message</small>
                            </div>
                            <div class="form-control">
                                <label for="password2">새 비밀번호 확인</label>
                                <div class="form-control">
                                    <input type="text" id="password2" placeholder="새 비밀번호를 다시 입력하세요">
                                </div>
                                <small>Error message</small>
                            </div>
        
                            <input type="hidden" name="memberName">
                            <button type="submit">비밀번호 변경</button>
                        </div>
                    </form>
                </div>

                <div class="container">
                    <form action="" id="form2" class="form">
                        <h2 class="email-toggle" onclick="toggleButton()">비밀번호 찾기</h2>
                        <div class="show-nav" id="email-join">
                            <div class="form-control">
                                <label for="username">이름</label>
                                <input type="text" id="username" placeholder="이름을 입력하세요">
                                <small>Error message</small>
                            </div> 
                            <div class="form-control">
                                <label for="email">Email</label>
                                <div class="form-control">
                                    <input type="text" id="email" placeholder="이메일을 입력하세요">
                                </div>
                                <small>Error message</small>
                            </div>
                            <button type="submit">비밀번호 찾기</button>
                        </div>
                    </form>
                </div>

            
            </div> <!--profile-->
        </div><!--content-->
    </div>  
    
<script>
	const form1 = document.getElementById('form');
	const password = document.getElementById('password');
	const password2 = document.getElementById('password2');   
	
	
	//Show error message - 에러메세지
	function showError(input,message){
	    const formControl = input.parentElement; //부모요소
	    formControl.className = 'form-control error'; //error 클래스 추가하면 small보임
	    const small = formControl.querySelector('small');
	    small.innerText = message;
	}
	//Show success outline - 성공
	function showSuccess(input){
	    const formControl = input.parentElement; //부모요소
	    formControl.className = 'form-control success';
	}
	
	//check required fields - 공백 시 에러 메세지에 변경되서 적용
	function checkRequired(inputArr){
	    inputArr.forEach(function(input){
	        console.log(input.value);
	        //trim : 공백 제거
	        if(input.value.trim() === ''){
	            //whatever the iteration is, 모두 적용가능
	            //console.log(input.id);
	            showError(input,"모두 입력해주세요");//함수로
	        }else{
	            showSuccess(input);//pass in
	        }
	    });
	}
	
	//check input length - 이름, 비밀번호 길이 제한
	function checkLength(input, min, max){
	    if(input.value.length < min){
	        showError(input,"4글자 이상이어야 합니다");
	    }else if(input.value.length > max){
	        showError(input,"15글자 이하여야 합니다.");
	    }else{
	        showSuccess(input);
	    }
	}

	//check passwords match - 비밀번호 일치 확인
	function checkPasswordsMatch(input1, input2){
	    if(input1.value != input2.value){
	        showError(input2, "비밀번호가 일치하지 않습니다");
	    }
	}
	
	//Event Listeners
	form.addEventListener('submit',function(e){
	    //event parameter : 모든 속성, 함수 등을 넣는 매개변수
	    e.preventDefault(); //실제 제출되는 것(깜박임) 막음
	    //console.log(username.value);
	    
	    checkRequired([username,password,password2]);
	    checkLength(username,2,15);
	    checkLength(password,4,25);
	    //checkEmail(email);
	    checkPasswordsMatch(password,password2);
	});
	
</script>
</body>
</html>