const form = document.getElementById('form');
const img = document.getElementById('img');
const sign = document.getElementById('sign');
const picture = document.getElementById('picture');
const pictureSign = document.getElementById('pictureSign');

let saveObject = {
    img: '',
    sign: ''
};

if(localStorage.getItem('object')!==null){
    let localObject = JSON.parse(localStorage.getItem('object'));
    picture.src = localObject.img
    pictureSign.textContent = localObject.sign;
}

form.addEventListener('submit', (event) => {
    event.preventDefault();
    picture.setAttribute('src', img.value);
    pictureSign.textContent = sign.value;
    saveObject.img = img.value;
    saveObject.sign = sign.value;

    localStorage.setItem('object',JSON.stringify(saveObject));
});
