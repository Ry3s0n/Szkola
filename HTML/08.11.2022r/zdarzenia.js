let p1 = document.getElementById('p1');
let p2 = document.getElementById('p2');

let change = a => {
console.log(a);

if(a === 'p1'){
    p1.innerHTML = 'Szarość';
    p1.style.color='grey';
    p2.innerHTML = 'Czerwień'; 
    p2.style.color='red';
}
else{
    p1.innerHTML = 'Czerwień';
    p1.style.color='red';
    p2.innerHTML = 'Szarość';
    p2.style.color='grey';
}
}
let mouse = document.getElementById('mouse');

function toGrey(){
    mouse.src='szare.jpg'
}
function toColor(){
    mouse.src='obrazek1.png'
}
function toRed(){
    mouse.src='czerwona.jpg'
}