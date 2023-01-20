-- 1.Imię i nazwisko pracownika oraz region, w którym pracuje.

-- dane wybierz z tabel: Pracownicy oraz Oddziały, pola łączące to NrRozliczOddz z tabeli Pracownicy oraz NrRozlicz z tabeli Oddziały
SELECT imie, nazwisko, region
FROM Pracownicy
    INNER JOIN Oddziały ON Pracownicy.NrRozlczOddz=oddzialy.MrRozlicz;
-- 2.Imię i nazwisko pracownika, nazwa i ilość sprzedanych produktów.
SELECT imie,nazwisko, NazwaProduktu, Ilosc
FROM pracownicy
    INNER JOIN Sprzedaz ON Pracownicy.Nr=sprzedaz.NrPracownika
    INNER JOIN Produkty ON sprzedaz.NazwaProduktu=produkty.nazwa;
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)
-- 3.Imię i nazwisko pracownika, nazwa i punktacja produktu oraz ilość sprzedanych produktów.
SELECT imie,nazwisko,nazwa,ilosc*punktacja
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr=sprzedaz.NrPracownika
    INNER JOIN produky ON sprzedaz.NazwaProduktu=produkty.nazwa;
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)
-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)
-- 4.Imię i nazwisko pracownika, nazwa i suma punktów ze sprzedaży produktu.
SELECT imie,nazwisko,nazwa,ilosc*punktacja
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr=sprzedaz.NrPracownika
    INNER JOIN produky ON sprzedaz.NazwaProduktu=produkty.nazwa;
-- sumę punktów odnajdziesz, gdy pomnożysz Ilosc i Punktacje
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)
-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)
-- 5.Imię i nazwisko pracownika, nazwa i suma punktów ze sprzedaży produktu – tylko dla pracowników z oddziału w Warszawie
SELECT imie,nazwisko,nazwa,ilosc*punktacja
FROM pracownicy
    INNER JOIN sprzedaz ON pracownicy.nr=sprzedaz.NrPracownika
    INNER JOIN produky ON sprzedaz.NazwaProduktu=produkty.nazwa;
    INNER JOIN Oddzialy ON pracownicy.nr= 
-- sumę punktów odnajdziesz, gdy pomnożysz Ilosc i Punktacje
-- potrzebne tabele to Pracownicy i Sprzedaż (pole łączące to NrPracownika i Nr)
-- do tego dodaj tabelę Produkty (pole łączące to NazwaProduktu i Nazwa)
-- do tego dodaj tabelę Odziały, pola łączące to NrRozliczOddz z tabeli Pracownicy oraz NrRozlicz z tabeli Oddziały
-- w warunku wybierz tylko Miejscowsc 'Warszawa'
-- 6.Imiona, nazwiska i numery pracowników wyróżnionych w zeszłym okresie.

-- połącz tabelę Pracownicy i Wyroznieni (pole łączące to NrPracownika i Nr), w zestawieniu pojawią się tylko Ci pracownicy, których numery są w tabeli Wyróżnieni - sprawdź