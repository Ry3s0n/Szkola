const form = document.getElementById('#form');
const img = document.getElementById('#img');
const sign = document.getElementById('#sign');
const picture = document.getElementById('#picture');
const pictureSign = document.getElementById('#pictureSign');

form.addEventListener('submit',(event)=>{
    event.preventDefault()
    picture.src = img.value;
    pictureSign.textContent = sign.value;
});