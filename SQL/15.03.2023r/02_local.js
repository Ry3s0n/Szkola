const object = {
    imie: 'Wiktor',
    nazwisko: 'Kowalski',
    wiek: 188
}

localStorage.setItem('LocalObject',JSON.stringify(object));

const storageObject = JSON.parse(localStorage.getItem('localObject'));
console.log(storageObject);
console.log(storageObject.imie);