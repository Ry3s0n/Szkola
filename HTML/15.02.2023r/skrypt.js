// 1. trzy cyfry obok siebie gdziekolwiek
console.log("1. trzy cyfry obok siebie gdziekolwiek")
const reg1=/[0-9]{3}/i
console.log(reg1.test('12sdf123jj123')) // prawda
console.log(reg1.test('sdj123jj')) // falsz


// 2. trzy cyfry  tylko i wyłącznie
console.log("2.trzy cyfry tylko i wyłącznie")
const reg2=/^[0-9]{3}$/i
console.log(reg12.test('123')) // prawda
console.log(reg2.test('sdj123jj')) // falsz


// 3. trzy cyfry obok siebie na początku i dodatkowe trzy obok siebie  na końcu
console.log("2.trzy cyfry obok siebie na początku i dodatkowe trzy obok siebie  na końcu")
const reg3=/^[0-9]{3}.*[0-9]{3}$/i
console.log(reg3.test("123dsdsa123")) // prawda
console.log(reg3.test("123")) // falsz

// 4. co najmniej cztery znaki alfanumeryczne
console.log(" 4. co najmniej cztery znaki alfanumeryczne")
const reg4=/[A-Z0-9]{4}/i
console.log(reg4.test("123dsD")) //prawda
console.log(reg4.test("12a-a")) //falsz


// 5. wyłącznie małe lub wielkie litery a, b, d lub f
console.log("5. wyłącznie małe lub wielkie litery a, b, d lub f")
const reg5=/^[abdf]/i
console.log(reg5.test("adbfABD")) //prawda
console.log(reg5.test("polklq")) //falsz


// 6. na początku nie może być litery x ani litery z
console.log(" 6. na początku nie może być litery x ani litery z")
const reg6=/^x||z{0}$/i
console.log(reg6.test("fjhg")) //prawda
console.log(reg6.test("xzfdsi")) //falsz


// 7. kod pocztowy
console.log(" 7. kod pocztowy")
const reg7=/^[0-9]{2}-[0-9]{3}$/i
console.log(reg7.test("89-100")) //prawda
console.log(reg7.test("12-123f")) //falsz


// 8. można wpisać tylko cyfry
console.log("8. można wpisać tylko cyfry")
const reg8=/^[0-9]+$/i
console.log(reg8.test("122314")) //prawda
console.log(reg8.test("f12s")) //falsz


// 9. we wzorcu musi wystąpić znak / (np. AC/DC)
console.log("9. we wzorcu musi wystąpić znak / (np. AC/DC)")
const reg9=/[/]/gi
console.log(reg9.test("sgss/sass")) //prawda
console.log(reg9.test("sassas")) //falsz


// 10. we wzorcu musi być kropka
console.log("10. we wzorcu musi być kropka")
const reg10=/[.]/
console.log(reg10.test("fsdfsd.sdfsd")) //prawda
console.log(reg10.test("sadasddaf")) //falsz


// 11. we wzorcu musi być na końcu kropka i od 2 do 3 liter od a do z (duże też pasują)
console.log("11. we wzorcu musi być na końcu kropka i od 2 do 3 liter od a do z (duże też pasują)")
const reg11=/\.[a-z]{2,3}$/i
console.log(reg11.test("fsfsd.sdf")) //prawda
console.log(reg11.test("sdaddaddadf")) //falsz


// 12. adres e-mail znaki(litera, cyfra,_.-), małpa, znaki alfanumeryczne razem z _ kroka i od 2 do 3 znaków (liter bez _)
console.log("12. adres e-mail znaki(litera, cyfra,_.-), małpa, znaki alfanumeryczne razem z _ kroka i od 2 do 3 znaków (liter bez _)")
const reg12=/^[a-z0-9_-]+[@]\w+[.][a-z]{2,4}$/i
console.log(reg12.test("staszic_szkola@info.pl")) //prawda
console.log(reg12.test("asddasdada")) //falsz


// 13. imię i nazwisko (co najmniej dwie litery, biały znak, co najmniej dwie litery). I dlaczego to nie jest takie proste?
console.log("13. imię i nazwisko (co najmniej dwie litery, biały znak, co najmniej dwie litery). I dlaczego to nie jest takie proste?")
const reg13=/^[a-z]{2,}\s[a-z]{2,}$/i
console.log(reg12.test("staszic_szkola@info.pl")) //prawda
console.log(reg12.test("asddasdada")) //falsz