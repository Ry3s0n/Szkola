const imgDiv = document.querySelector('img');
const images = ["libelle1.jpg", "libelle2.jpg", "libelle3.jpg", "libelle4.jpg", "libelle5.jpg", "libelle6.jpg"];
const movtxt = document.querySelector('#movingTxt');

let i = 1;

function changeImg(){
  imgDiv.src=`img/${images[i++]}`;
  if(i==images.length){
    i=0;
  }
  setTimeout(changeImg,2000);
}

changeImg();

function animTxt(){
  if(parseInt(movtxt.style.left)<50){
    movtxt.style.left='500px';
  }
  else{
    movtxt.style.left=`${parseInt(movtxt.style.left)-3}px`
  }
}

animTxt(); // added function call
