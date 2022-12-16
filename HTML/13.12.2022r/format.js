// let square = document.getElementById('square');
// square.addEventListener('click',textFormat);

function textFormat(color){
    const textChange = document.getElementById('textChange');
    const textSize = document.getElementById('textSize');
    const result = document.getElementById('result');

    result.style.color = color;
    result.style.fontStyle = textChange.value;
    result.style.fontSize = textSize.value+'%'
}