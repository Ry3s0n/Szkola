const result=document.getElementById('result')
const errorName=document.getElementById('error-name')
const formUser=document.getElementById('form-user')

formUser.addEventListener('submit', (event )=>{
    event.preventDefault()
    const inputName=document.getElementById('input-name')
    const inputEmail=document.getElementById('input-email')
    const inputPostal=document.getElementById('input-postal-code')
    const inputAddress=document.getElementById('input-address')
  
    let userData="Podałeś dane: <br> ";

    if(inputName.value.length>=3){
        userData+= inputName.value + "<br>";
        errorName.innerHTML = ""
        inputName.classList.remove('input-error')

    }
    else{
        inputName.classList.add('input-error')
        errorName.innerHTML = "Nazwisko za krótkie!" 
    }

    const regEmail=/&.{4,}@staszic\.eu$/i

    if(regEmail.test(inputEmail.value)){
      userData+= inputEmail.value + "<br>";
      errorEmail.innerHTML = ""
      inputEmail.classList.remove('input-error')
    }else{
      inputEmail.classList('input-error')
      errorEmail.innerHTML="Adres musi być z domeny staszic"
    }

    // if(regEmail.test(inputEmail.value)){
        
    // }
    const regPostalCode=/^[0-9]{2}-[0-9]{3}$/

    if(regPostalCode.test(inputPostalCode.value)){
      userData+=inputPostalCode.value + "<br>";
      errorPostalCode.innerHTML = ""
      inputPostalCode.classList.remove('input-error')
    }
    else{
      inputPostalCode.classList('input-error')
      errorinputPostalCode.innerHTML="Kod pocztowy się nie zgadza!"
    }

    const regAddress=^[A-ZĄĘŁÓŚĆŻ]{3,}.*[0-9]$/i

    
    if(regAddress.test(regAddress.value)){
      userData+=inputAdress.value + "<br>";
      errorAddress.innerHTML = ""
      inputAddress.classList.remove('input-error')
    }
    else{
      inputAddress.classList('input-error')
      errorinputAddress.innerHTML="Kod pocztowy się nie zgadza!"
    }
    result.innerHTML=userData;

})