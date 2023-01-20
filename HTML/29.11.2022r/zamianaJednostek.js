function kelwin(){
    const celsius = document.getElementById('celsius');
    const resoultDiv = document.getElementById('resoultDiv');
    if(celsius.value==='' || isNaN(celsius.value)){
        alert('Błąd danych');
    }else{
        const degress = parseInt(celsius.value)
        resoultDiv.textContent=degress+273.15
    }
}
function farenheit(){
    if(celsius.value==='' || isNaN(celsius.value)){
        alert('Błąd danych');
    }else{
        const degress = parseInt(celsius.value)
        resoultDiv.textContent=(degress*1.8)+32
    }
}
