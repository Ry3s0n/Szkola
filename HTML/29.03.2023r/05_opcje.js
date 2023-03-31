const form = document.getElementById('form');
const button = document.getElementById('chooise');

form.addEventListener('submit',(event)=>{
    event.preventDefault();
    const selectedColor= document.querySelector('input[name="button"]:checked');
    button.style.backgroundColor= selectedColor.value;
})