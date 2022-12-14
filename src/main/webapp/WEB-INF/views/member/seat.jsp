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
    display: flex; /*??????, ?????? ????????? ?????????*/
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
    
    /*select??? ??????????????? ?????? ??? ??????*/
    -moz-appearance: none; /*firefox*/
    -webkit-appearance: none; /* Safari and Chrome */
    appearance: none; /* ????????? ????????? ?????? */
}


.container{
    /*????????? : ????????? ???????????? ????????? ?????? ??????*/
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
    transform: scale(1.2);/*scaleX??? x?????????, scaleY??? y????????? ??????, ??????*/
}

.showcase .seat:not(.occupied):hover{
    cursor: default;
    transform: scale(1);/*scaleX??? x?????????, scaleY??? y????????? ??????, ??????*/
}

.showcase {
    background-color: rgba(0, 0, 0, 0.1);
    padding: 5px 10px;
    border-radius: 5px;
    color: #777;
    list-style-type: none;
    display: flex;
    justify-content: space-between; /*??? ????????? ???????????? ??????*/
}
.showcase li{
    display: flex;
    align-items: center; /*??????*/
    justify-content: center; /*??????*/
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
    /*?????? ????????? ????????? ????????? ?????? X????????? 3?????? ???????????? ????????????*/
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
        <div class="main-img"><!--image---????????? ???????????????------>
            <div class="img-cover">
                <!--?????? ????????? ????????????-->
                <div class="contents">   
                    <div class="navi">
                        <div class="navi1">
                            <ul class="n1">
                                <li><a href="http://127.0.0.1:5500/prac_220224/profile.html">????????? ?????? ??????</a></li>
                            </ul>
                        </div>
                        <div class="navi2">
                            <ul class="n2">
                                <li><a href="#">????????????</a></li>
                                <li><a href="#">?????????</a></li>
                            </ul>
                        </div>
                        <div class="navi3">
                            <ul class="n3">
                                <li><a href="#" class="nn">????????? ??????</a></li>
                                <li><a href="#">??????????????? ??????</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="item">
                        <div class="movie-container">
                            <label>????????? ??????</label>
                            <select id="movie">
                                <option value="10">?????? 3?????? ?????? ?????????</option>
                                <option value="12">????????? 1?????? ??????</option>
                                <option value="8">????????? 6??????</option>
                                <option value="9">?????? 11:50 pm?????? 10???</option>
                            </select>
                        </div>
                    
                        <ul class="showcase">
                            <li>
                                <div class="seat"></div>
                                <small>??? ??????</small>
                            </li>
                            <li>
                                <div class="seat selected"></div>
                                <small>??????</small>
                            </li>
                            <li>
                                <div class="seat occupied"></div>
                                <small>?????? ????????? ??????</small>
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
                    
                        <p class="text">?????? ?????? :  ??? <span id="count">0</span> ??? <br>?????? : ??? <span id="total">0</span> ?????????</p>
                    
                    </div>
        </div> <!--content-->              
    </div><!--img-cover-->
    
<script>
const container = document.querySelector('.container');
const seats = document.querySelectorAll('.row .seat:not(.occupied)');//array??? ??????
const count = document.getElementById('count');
const total = document.getElementById('total');
const movieSelect = document.getElementById('movie');

populateUI();


//let?????? ?????? ????????? ????????? ?????? ???????????? ??? ??????
//???????????? Error : Assignment to constant variable
let ticketPrice = +movieSelect.value; //????????? ????????????(parseInto??? ??????)
//console.log(typeof ticketPrice); //string

//Save selected movie index and price
//localStorage(2) ???????????? ????????????!!!!-----------------------
function setMovieData(movieIndex, moviePrice){
    localStorage.setItem('selectedMovieIndex',movieIndex);
    localStorage.setItem('selectedMoviePrice',moviePrice);
}


//update total and count (????????? ?????? ?????? ?????????, ?????????)
function updateSelectedCount(){
    const selectedSeats = document.querySelectorAll('.row .seat.selected');
    //console.log(selectedSeats); //NodeList??? ?????? ?????????
    
    //1. Copy selected seats into arr
    //2. Map through array
    //3. return a new array of indexes
    //... ????????????(??????????????? ??????????????? ?????????)
    //map() : forEach??? return X, map??? return??? array??? ??????
    const seatsIndex = [...selectedSeats].map(seat => [...seats].indexOf(seat)); 
    //function(seat), return ???????????? ????????? ????????? ??? ??????
    //return [...seats].indexOf(seat)
    console.log(seatsIndex); //[15,37,46] ?????? ????????? ?????????
    //const maxSeat = Math.max(...seatsIndex.values()); ?????? ??? ????????? (test???)
    
    //localStorage(1) ???????????? ????????????!!!! (????????? ????????? string?????????)------
    //seatsIndex??? array????????? json????????? ??????????????? ?????????(????????? parse())
    localStorage.setItem('selectedSeats',JSON.stringify(seatsIndex));

    const selectedSeatsCount = selectedSeats.length;
    // console.log(selectedSeatsCount);
    count.innerText = selectedSeatsCount;
    total.innerText = selectedSeatsCount * ticketPrice; 
    //???????????? ?????? ????????? ?????? X (?????? movie select event)
}

//Get data from localStrage and populate UI
function populateUI(){
    const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));
    //console.log(selectedSeats);
    //??? ????????? ?????????, ????????? 0?????? ??? ???
    if(selectedSeats !== null && selectedSeats.length > 0){
        seats.forEach((seat,index)=>{ //(?????? ????????? ??????, ?????? ?????????)
            if(selectedSeats.indexOf(index) > -1){ 
                //????????? ?????? ?????????????????? ????????? ???
                seat.classList.add('selected');
            }
        })
    }
    //reload?????? ??? ???????????? ??????????????? ????????????
    const selectedMovieIndex = localStorage.getItem('selectedMovieIndex');
    if(selectedMovieIndex !== null){
        movieSelect.selectedIndex = selectedMovieIndex;
        //= e.target.selectedIndex
    }
}

//Movie select event (????????? ????????? ?????? ??? ?????????)
movieSelect.addEventListener('change',e => {
    ticketPrice = +e.target.value;
    //????????? ?????? ???????????? localStorage(2)??? ????????????
    //console.log(e.target.selectedIndex, e.target.value); 
    setMovieData(e.target.selectedIndex, e.target.value); 

    updateSelectedCount();
});

//Seat click event------------------------------
container.addEventListener('click',e => { //function?????? ??????
    //console.log(e.target); //e.target : ????????? ?????? ?????????
    if(e.target.classList.contains('seat') && !e.target.classList.contains('occupied')){ 
        //????????? classList ??? seat?????? ????????????
        //console.log(e.target); 
        e.target.classList.toggle('selected');

        updateSelectedCount(); //?????? ?????? ??? ????????? ???????????? ???, ?????????
    }
});

//Initial count and total set - reload?????? ??? ?????? ?????????, ???????????? ????????????
updateSelectedCount(); //=updateSelectedCound and total    

</script>
</body>
</html>