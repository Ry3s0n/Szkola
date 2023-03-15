-- 1. Wyświetl aktualną datę w formacie miesiąc dzień, rok
-- przykładowa data: 2021-05-26
-- wynik: May 26, 2021 rok
SELECT DATA_FORMAT(CURDATE(), '%M %d, %Y');
-- 2. wyświetl aktualną datę w formacie dzień miesiac rok

-- przykładowa data: 2021-05-26
-- wynik: Wednesday May 2021r.
SELECT DATA_FORMAT(CURDATE(), '%W %M %r.');
-- 3. Wyświetl imiona i nazwiska pracowników zatrudnionych w czerwcu i sierpniu, wraz z miesiącem i rokiem zatrudnienia
SELECT imie,nazwisko, data_zatrudnienia 
FROM pracownicy
WHERE MONTH(data_zatrudnienia) IN (6,8);
-- 4. Wyświetl imion, nazwiska i daty zatrudnienia pracowników w formacie amerykańskim (miesiąc/dzień/rok, np. 05/26/2021)
SELECT imie,nazwisko, DATA_FORMAT(data_zatrudnienia, '%m/%d/&Y')
FROM pracownicy
-- 5. Zaktualizuj bazę danych - zwiększ wszystkie daty o 20 lat
SELECT data_zatrudnienia, DATE_ADD(data_zatrudnienia, INTERVAL 20 YEAR)
FROM pracownicy;
-- 6. Zaimportuj dane pracowników filii. Dodaj dane z tej tabeli do tabeli pracownicy.  (STR_TO_DATE)

-- 7. Jak wstawić dane, jeśli mamy datę podaną w formacie brytyjskim? dodaj nowego pracownika, data zatrudnienia to 06/05/2021

INSERT INTO pracownicy
(pracownik_id,nazwisko,email,data_zatrudnienia,stanowisko_id)
values
(208,'Kowalski','kowalski@gmail.com',STR_TO_DATE('17/06/2025', '%d/%M/%Y'), 'AD_VP');

SELECT STR_TO_DATE('17/06/2015','%d/%m/%Y');

--8. Zmien datę zatrudnienia użytkownika o id 100 na 03/21/2022 - format amerykański

SELECT STR_TO_DATE('03/21/2022', '%m/%d/%Y');

UPDATE pracownicy
SET data_zatrudnienia= STR_TO_DATE('03/21/2022', '%m/%d/%Y')
WHERE pracownik_id = 100;