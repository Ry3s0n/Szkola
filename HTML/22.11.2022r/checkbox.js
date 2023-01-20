const button = document.getElementById('button');
document.addEventListener("button",oblicz);



function oblicz(){
const Piling = document.getElementById('Piling');
const Maska = document.getElementById('Maska');
const Masaz = document.getElementById('Masaz');
const Regulacja = document.getElementById('Regulacja');
const zabieg = document.getElementById('zabieg');

let cena = 0;
    if(Piling.checked){
        cena+=45;
    }
    else if(Maska.checked){
        cena+=30;
    }
    else if(Masaz.checked){
        cena+=20; 
    }
    else if(Regulacja.checked){
        cena+=5;
    }

    zabieg.innerHTML = `Cena zabiegów ${cena}`;
}