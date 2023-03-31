// function welcome(){
//     alert('elo');
// }

// setInterval(welcome,1000);
const timeH1 = document.querySelector('#time');
const tiemh1v2 = document.querySelector('#timeh1v2');
let count = 10;
function showTime(){
    let dateTime = new Date();
    let time=dateTime.toLocaleTimeString();
    timeh1v2.innerHTML=count;
    timeH1.innerHTML = time;
    count--;
    if(count>0){
        setInterval(showTime,1000);
    }else{
        tiemh1v2.innerHTML('BOOM');
        return true;
    }
}
