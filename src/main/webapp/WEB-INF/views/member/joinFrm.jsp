<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinFrm</title>
</head>
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
    margin-bottom: 10px;
    padding-bottom: 20px;
    position: relative;
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
    width: 70%;
    margin-right: 10px;
    height: 18px;
}
.email-box{
    display: flex;
}

</style>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
    <div class="main">
        <div class="content">   
            <div class="navi">
                <div class="navi1">
                    <ul class="n1">
                        <li><a href="#">회원가입</a></li>
                    </ul>
                </div>
                <div class="navi2">
                    <ul class="n1">
                        <li><a href="#">멤버십 업그레이드</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="profile">
                <h1>Member</h1>

                <div class="simple">
                    <div>
                    <h2>멤버십 선택 약관</h2>
                    </div>
                </div>

                <div class="container">
                    <form action="/join.do" id="form" class="form" method="post">
                        <h2 class="email-toggle" onclick="toggleButton()">이메일로 가입</h2>
                        <div class="show-nav" id="email-join">
                            <div class="form-control">
                                <label for="username">이름</label>
                                <input type="text" id="username" name="memberName" placeholder="이름을 입력하세요">
                                <small>Error message</small>
                            </div> 
                            <div class="form-control">
                                <label for="email">이메일</label>
                                <div class="email-box"></div>
                                <div class="email-box">
                                    <input type="text" id="email" name="email" placeholder="이메일을 입력하세요">
                                    <button type="button"
                                    class="email-confirm">중복확인</button>
                                </div>
                                <small>Error message</small>
                            </div>
                            <div class="form-control">
                                <label for="password">비밀번호</label>
                                <input type="password" id="password" name="memberPw" placeholder="비밀번호를 입력하세요">
                                <small>Error message</small>
                            </div>
                            <div class="form-control">
                                <label for="password2">비밀번호 확인</label>
                                <input type="password" id="password2" placeholder="비밀번호를 다시 입력하세요">
                                <small>Error message</small>
                            </div>
                            <button type="submit">회원가입</button>
                        </div>
                    </form>
                </div>

            
            </div> <!--profile-->
        </div><!--content-->
    </div>  



<script>
const form = document.getElementById('form');
const username = document.getElementById('username');
//const email = document.getElementById('email');
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
//----------------------------------------------------------------------


/*Check email is valid - 이메일 정규표현식
function checkEmail(input){
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    //return re.test(String(email).toLowerCase());
    //정규표현식 test : 매칭 확인 후 true / false

    if(re.test(input.value.trim())){ //true
        showSuccess(input);
    }else{
        showError(input,`Email is not valid`);
    }
}
*/
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
        showError(input,"최소 글자 이상이어야 합니다");
    }else if(input.value.length > max){
        showError(input,"최대 글자 이하여야 합니다.");
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

//get FieldName(input)
function getFieldName(input){
    //첫글자만 대문자로 + 나머지는 두번째 글자부터 소문자로 쭉
    return input.id.charAt(0).toUpperCase() + input.id.slice(1); 
}




//Event Listeners
form.addEventListener('submit',function(e){
    //event parameter : 모든 속성, 함수 등을 넣는 매개변수
    //e.preventDefault(); //실제 제출되는 것(깜박임) 막음
    //console.log(username.value);
    
    checkRequired([username,password,password2]);
    checkLength(username,2,15);
    checkLength(password,4,25);
    //checkEmail(email);
    checkPasswordsMatch(password,password2);

    /*리팩토링-------------------------
    if(username.value ===''){
        //alert('Username is required');
        showError(username,'Username is required');
    }else{
        showSuccess(username);
    }

    if(email.value ===''){ //아무것도 안적혔을 때
        //alert('Username is required');
        showError(email,'Email is required');
    }else if(!isValidEmail(email.value)){ //유효성 검사에 위배
        showError(email,'Email is not valid');
    }else{
        showSuccess(email);
    }

    if(password.value ===''){
        //alert('Username is required');
        showError(password,'Password is required');
    }else{
        showSuccess(password);
    }

    if(password2.value ===''){
        //alert('Username is required');
        showError(password2,'Password2 is required');
    }else{
        showSuccess(password2);
    }
    */
});



/*이메일 가입 클릭
const emailToggle = document.getElementById('email-toggle');


emailToggle.addEventListener('click',function(){
});

function toggleButton(){
    const emailJoin = document.getElementById('email-join');
    console.log(emailJoin);
    emailJoin.classList.toggle('show-nav');

}*/
</script>	
	
</body>
</html>