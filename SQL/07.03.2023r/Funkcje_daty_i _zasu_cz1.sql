-- 1. Wyświetl aktualną datę. 
SELECT CURDATE() AS dzisiaj;
-- 2. wyświetl bieżący czas 
SELECT CURTIME() AS czas;
-- 3, Ilu pracowników zatrudniono w poszczególnych miesiącach. MONTH(data)  (MONTHNAME)
SELECT MONTHNAME(data_zatrudnienia),COUNT(*)
FROM pracownicy
GROUP BY MONTHNAME(data_zatrudnienia);
 
-- 4. Ile dni pracownicy byli zatrudnieni na poszczególnych stanowiskach (DATEDIFF(data1, data2) );  (historia_pracy)
SELECT DATEDIFF(koniec, poczatek), stanowisko_ID
FROM historia_pracy;

-- 5. Wyświetl datę zatrudnienia w formacie dzień-miesiąc-rok (DATE_FORMAT(data, format)
SELECT DATE_FORMAT(data_zatrudnienia, '%d-%m-%Y')
FROM pracownicy;

-- 6. Pracownik o id 102 będzie pracował na stanowisku FI_MGR w dziale 20 od dzisiaj przez  miesiąc (DATE_ADD(data, interwał)
SELECT DATE_ADD(CURDATE(), INTERVAL 1 MONTH)
INSERT INTO historia_pracy
(pracownik_ID,poczatek,koniec,stanowisko_ID,dzial_ID)
VALUES
(102,CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 MONTH),'FI_MGR',20);
-- 7. Dodaj nowego pracownika, zatrudnionego dzisiaj (CURDATE())

