const password = document.querySelector('#password');
const checkPass = document.querySelector('#checkPass');
const textSpace = document.querySelector('#textSpace');

checkPass.addEventListener('click',(e=>{
    if(password.value.length===0){
        textSpace.innerHTML = 'WPISZ HASŁO';
        textSpace.style.color = 'red';
    }else if(password.value.length>=7){
        textSpace.innerHTML = 'DOBRE'
        textSpace.style.color = 'green';
    }else if(password.value.length>=4){
        textSpace.innerHTML = 'ŚREDNIE'
        textSpace.style.color = 'blue';
    }else{
        textSpace.innerHTML = 'SŁABE'
        textSpace.style.color = 'gold';
    }
}))

