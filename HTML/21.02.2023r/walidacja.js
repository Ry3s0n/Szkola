const formUser = document.getElementById('form-User');
formUser.addEventListener('submit', (event)=>{
    event.preventDefault()
    console.log('test');
    const inputName = document.getElementById('input-name');
    const inputEmail = document.getElementById('input-email');
    const inputPostal = document.getElementById('input-postal-code');
    const inputAddress = document.getElementById('input-address')
    const inputError = document.getElementById('input-error');
    const errorName = document.getElementById('errorName');

    let UserData="Podałeś dane: <br>";

    if(inputName.value.length>=3){
      UserData+= inputName.value + "<br>";
      errorName.innerHTML = ""
      inputName.classList.remove('input-error')
    }
    else{
      inputName.classList.add('input-error')
      errorName.innerHTML = 'Nazwisko za krótkie!'
    }

    const regEmail=/@/i

    if(inputEmail.value.length>=6 && regEmail.test(inputEmail.value)){
        
    }
    Result.innerHTML=UserData;
});


