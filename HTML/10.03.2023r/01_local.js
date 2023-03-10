const form = document.getElementById('colors');
const h2 = document.getElementById('result');

if(localStorage.getItem('myChoice'!==null)){
    choice = localStorage.getItem('myChoice')
    h2.innerHTML = `twój ulubiony kolor to ${choice}`;
}

form.addEventListener('submit',(event)=>{
    event.preventDefault();
    const choice = document.querySelector('input[name="choice"]:checked').value;
    h2.innerHTML = `Twój ulubiony kolor to ${choice}`;
    localStorage.setItem('myChoice',choice);
});