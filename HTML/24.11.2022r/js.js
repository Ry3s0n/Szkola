const add = document.getElementById("add");
// const odejmowanie = document.getElementById('odejmowanie');
// const mnozenie = document.getElementById('mnozenie');
// const dzielenie = document.getElementById('dzielenie');

document.addEventListener("add",sprawdzWar);
// document.addEventListener('odejmowanie',odejmowanie1);
// document.addEventListener('mnozenie',mnozenie1);
// document.addEventListener('dzielenie',dzielenie1);

function sprawdzWar(){
    const secondNumber = document.getElementById('secondNumber').value;
    const firstNumber = document.getElementById('firstNumber').value;
    if(firstNumber ===NaN || secondNumber ===NaN){
        console.log('pola puste');
    }
    else{
        console.log('jest git');
    }
}
firstNumber = parseInt(firstNumber);
secondNumber= parseInt(secondNumber);

switch(sign){
    case '+':
        sprawdzWar.innerHTML = `${firstNumber}+${secondNumber}=${firstNumber+secondNumber}}`
        break;
    case '-':
        sprawdzWar.innerHTML = `${firstNumber}-${secondNumber}=${firstNumber-secondNumber}}`
        break;
    case '*': 
         sprawdzWar.innerHTML = `${firstNumber}*${secondNumber}=${firstNumber*secondNumber}}`
        break;
    case '/':
        if(secondNumber ===0){
            sprawdzWar.innerHTML= 'Nie mozna dzielic przez zero';
        }
        break;
}