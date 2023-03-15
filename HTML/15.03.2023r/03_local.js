// Łapiemy elementy
const form = document.querySelector('#form');
const txt = document.querySelector('#txt');

// Jeśli jest element w localStorage ustawiamy wartość w textarea
if (localStorage.getItem('text') !== null) {
    txt.value = localStorage.getItem('text');
}

// Podczas wpisywania do textarea aktualizujemy localStorage
txt.addEventListener('input', (event) => {
    localStorage.setItem('text', txt.value);
    console.log(localStorage.getItem('text'));
});

// Gdy użytkownik wysłał formularz czyścimy localStorage
form.addEventListener('submit',(event) => {
    localStorage.removeItem('text');
});
