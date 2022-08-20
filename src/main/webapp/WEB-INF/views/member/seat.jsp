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



.item{
    margin-top: 30px;
    margin-left: 600px;
    width: 700px;
    height: 500px;
    background-color: rgba(153, 124, 86, 0.1);
}
@import url('https://fonts.googleapis.com/css2?family=Lato:wght@300&family=Open+Sans:wght@300&display=swap');

*{
    box-sizing: border-box;
}

.item{
    color: #fff;
    display: flex; /*수직, 수평 무조건 맞추는*/
    flex-direction: column;
    align-items: center;
    justify-content: center;
    font-family: 'Lato',sans-serif;
    margin: 0;
}

.movie-container{
    margin: 20px 0;
}

.movie-container select{
    background-color: rgb(161, 136, 62);
    border: 0;
    border-radius: 5px;
    font-size: 14px;
    margin-left: 10px;
    padding: 5px 15px 5px 15px;
    
    /*select는 윈도우마다 다를 수 있음*/
    -moz-appearance: none; /*firefox*/
    -webkit-appearance: none; /* Safari and Chrome */
    appearance: none; /* 화살표 없애기 공통 */
}


.container{
    /*원근법 : 숫자가 커질수록 멀리서 보는 느낌*/
    perspective: 1000px;
    margin-bottom: 30px;
}

.seat {
    background-color: #6a6a70;
    height: 12px;
    width: 15px;
    margin: 3px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
}

.seat.selected{
    background-color: rgb(157, 126, 33);
}
.seat.occupied{
    background-color: #fff;
}

.seat:nth-of-type(2){
    margin-right: 18px;
}
.seat:nth-last-of-type(2){
    margin-left: 18px;
}

.seat:not(.occupied):hover{
    cursor: pointer;
    transform: scale(1.2);/*scaleX는 x축으로, scaleY는 y축으로 확대, 축소*/
}

.showcase .seat:not(.occupied):hover{
    cursor: default;
    transform: scale(1);/*scaleX는 x축으로, scaleY는 y축으로 확대, 축소*/
}

.showcase {
    background-color: rgba(0, 0, 0, 0.1);
    padding: 5px 10px;
    border-radius: 5px;
    color: #777;
    list-style-type: none;
    display: flex;
    justify-content: space-between; /*칸 안에서 넓직하게 정렬*/
}
.showcase li{
    display: flex;
    align-items: center; /*수직*/
    justify-content: center; /*수평*/
    margin: 0 10px;
}

.showcase li small{
    margin-left: 2px;
}

.row{
    display: flex;
}

.screen{
    background-color: rgb(199, 186, 148);
    height: 70px;
    width: 100%;
    margin: 15px 0;
    /*매개 변수로 지정된 각도를 통해 X축으로 3차원 방식으로 회전처리*/
    transform: rotateX(-45deg);
    /*x-position y-position blur spread color*/
    box-shadow: 0 3px 10px rgba(255, 255, 255, 0.7);
}

p.text{
    background-color: transparent !important;
    margin: 5px 0;
    color:  rgb(224, 217, 203) rgb(224, 217, 203) rgb(224, 217, 203);
    font-weight: 600;
}

p.text span{
    background-color: transparent !important;
    color: rgb(248, 187, 114);
    font-weight: 500;
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
                                <li><a href="http://127.0.0.1:5500/prac_220224/profile.html">청음실 좌석 선택</a></li>
                            </ul>
                        </div>
                        <div class="navi2">
                            <ul class="n2">
                                <li><a href="#">공부하기</a></li>
                                <li><a href="#">일하기</a></li>
                            </ul>
                        </div>
                        <div class="navi3">
                            <ul class="n3">
                                <li><a href="#" class="nn">멤버십 구독</a></li>
                                <li><a href="#">데스크톱앱 설치</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="item">
                        <div class="movie-container">
                            <label>청음실 선택</label>
                            <select id="movie">
                                <option value="10">오전 3시간 순공 채우기</option>
                                <option value="12">자기전 1시간 독서</option>
                                <option value="8">불면증 6시간</option>
                                <option value="9">명상 11:50 pm부터 10분</option>
                            </select>
                        </div>
                    
                        <ul class="showcase">
                            <li>
                                <div class="seat"></div>
                                <small>빈 좌석</small>
                            </li>
                            <li>
                                <div class="seat selected"></div>
                                <small>선택</small>
                            </li>
                            <li>
                                <div class="seat occupied"></div>
                                <small>현재 선택된 좌석</small>
                            </li>
                        </ul>
                    
                        <div class="container">
                            <div class="screen"></div>
                    
                            <div class="row">
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                            </div>
                            <div class="row">
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat occupied"></div>
                                <div class="seat occupied"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                            </div>
                            <div class="row">
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat occupied"></div>
                                <div class="seat occupied"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                            </div>
                            <div class="row">
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                            </div>
                            <div class="row">
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat occupied"></div>
                                <div class="seat occupied"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                            </div>
                            <div class="row">
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                                <div class="seat occupied"></div>
                                <div class="seat occupied"></div>
                                <div class="seat occupied"></div>
                                <div class="seat"></div>
                                <div class="seat"></div>
                            </div>
                        </div>
                    
                        <p class="text">선택 좌석 :  총 <span id="count">0</span> 개 <br>요금 : 총 <span id="total">0</span> 도토리</p>
                    
                    </div>
        </div> <!--content-->              
    </div><!--img-cover-->
    
<script>
const container = document.querySelector('.container');
const seats = document.querySelectorAll('.row .seat:not(.occupied)');//array랑 비슷
const count = document.getElementById('count');
const total = document.getElementById('total');
const movieSelect = document.getElementById('movie');

populateUI();


//let으로 해야 선택한 영화에 따라 들어가는 값 바뀜
//안바꾸면 Error : Assignment to constant variable
let ticketPrice = +movieSelect.value; //숫자로 만들어줌(parseInto도 가능)
//console.log(typeof ticketPrice); //string

//Save selected movie index and price
//localStorage(2) 선택사항 저장하기!!!!-----------------------
function setMovieData(movieIndex, moviePrice){
    localStorage.setItem('selectedMovieIndex',movieIndex);
    localStorage.setItem('selectedMoviePrice',moviePrice);
}


//update total and count (선택한 해당 영화 좌석수, 티켓값)
function updateSelectedCount(){
    const selectedSeats = document.querySelectorAll('.row .seat.selected');
    //console.log(selectedSeats); //NodeList로 개수 보여줌
    
    //1. Copy selected seats into arr
    //2. Map through array
    //3. return a new array of indexes
    //... 깊은복사(원본데이터 안건드리고 복사만)
    //map() : forEach는 return X, map은 return을 array로 해줌
    const seatsIndex = [...selectedSeats].map(seat => [...seats].indexOf(seat)); 
    //function(seat), return 하나여서 이렇게 이어쓸 수 있음
    //return [...seats].indexOf(seat)
    console.log(seatsIndex); //[15,37,46] 이런 폼으로 보여줌
    //const maxSeat = Math.max(...seatsIndex.values()); 가장 큰 좌석수 (test용)
    
    //localStorage(1) 선택사항 저장하기!!!! (저장은 무조건 string이어야)------
    //seatsIndex는 array이므로 json형태로 문자화해서 저장함(반대는 parse())
    localStorage.setItem('selectedSeats',JSON.stringify(seatsIndex));

    const selectedSeatsCount = selectedSeats.length;
    // console.log(selectedSeatsCount);
    count.innerText = selectedSeatsCount;
    total.innerText = selectedSeatsCount * ticketPrice; 
    //여기까지 바뀐 영화는 적용 X (아래 movie select event)
}

//Get data from localStrage and populate UI
function populateUI(){
    const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));
    //console.log(selectedSeats);
    //빈 배열이 아니고, 길이가 0보다 클 때
    if(selectedSeats !== null && selectedSeats.length > 0){
        seats.forEach((seat,index)=>{ //(배열 각각의 요소, 배열 인덱스)
            if(selectedSeats.indexOf(index) > -1){ 
                //배열에 해당 인덱스번호가 존재할 때
                seat.classList.add('selected');
            }
        })
    }
    //reload했을 때 선택했던 영화정보가 남아있게
    const selectedMovieIndex = localStorage.getItem('selectedMovieIndex');
    if(selectedMovieIndex !== null){
        movieSelect.selectedIndex = selectedMovieIndex;
        //= e.target.selectedIndex
    }
}

//Movie select event (선택한 영화에 따라 값 바뀌게)
movieSelect.addEventListener('change',e => {
    ticketPrice = +e.target.value;
    //선택된 영화 인덱스도 localStorage(2)에 저장하기
    //console.log(e.target.selectedIndex, e.target.value); 
    setMovieData(e.target.selectedIndex, e.target.value); 

    updateSelectedCount();
});

//Seat click event------------------------------
container.addEventListener('click',e => { //function이랑 같음
    //console.log(e.target); //e.target : 클릭된 것을 타깃팅
    if(e.target.classList.contains('seat') && !e.target.classList.contains('occupied')){ 
        //클릭된 classList 중 seat에만 반응하게
        //console.log(e.target); 
        e.target.classList.toggle('selected');

        updateSelectedCount(); //좌석 선택 수 반영한 선택좌석 수, 매표값
    }
});

//Initial count and total set - reload했을 때 선택 좌석수, 티켓가격 남아있게
updateSelectedCount(); //=updateSelectedCound and total    

</script>
</body>
</html>