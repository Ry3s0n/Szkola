document.addEventListener("wyslij",sendImg);


function sendImg(){
    const wyslij = document.getElementById('wyslij');
    const obrazek = document.getAnimations('obrazek');
    const niebo = document.getElementById('niebo');
    const lawka = document.getAnimations('lawka');
    const zamek = document.getAnimations('zamek');

    if(niebo.checked){
        img.src =  'obrazek.png';
    }
    else if(lawka.checked){
        img.src ='obrazek1.png';
    }
    else{
        img.src ='obrazek2.png';
    }
}