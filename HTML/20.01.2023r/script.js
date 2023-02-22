const btnCalc = document.getElementById('btn-calc')
const distanceDiv = document.getElementById('s')
const fuelUsageDiv = document.getElementById('fuel-usage')
const resultDiv = document.getElementById('result')

function calculateUsage(){
    const distance = distanceDiv.value
    const fuelUsageDiv = distanceDiv.value

    resultDiv.textContent = distance * fuelUsageDiv;
}

btnCalc.addEventListener('click',calculateUsage)