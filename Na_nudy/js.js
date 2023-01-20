console.log("test");
alert ("Skrypt działa");
let shoppingList = document.getElementById('shoppingList');
let products = ['chleb','cukier','cytryny','ocet','gruszki'];
for(let product of products){
    addProduct(product);
}

function addProduct(product){
let li = document.createElement('li')
li.innerText = products;
shoppingList.appendChild(li)
}

let dolaczobrazek = document.getElementById('dolaczobrazek');
let obrazki = ['1.jpg','2.jpg','3.jpg','4.jpg']
for(let obrazek of obrazki){
    dolaczobrazek1(obrazek);
}

function dolaczobrazek1(obrazki){
let img = document.createElement('img');
img.src = obrazki;
dolaczobrazek.appendChild(img)
}





const lorem = "Lorem ipsum dolor, sit amet consectetur adipisicing elit.Mollitia accusantium, culpa rerum ipsam natus quas nemo fugiat eaque optio consequuntur? Vitae optio voluptate atque dicta! Ad cum ipsa laboriosam quod."

let mainLorem = document.getElementById('mainLorem');

function genereLorem(){
    let p = document.createElement('p');
    p.innerText = lorem;
    mainLorem.appendChild(p);
}
console.log(lorem);
