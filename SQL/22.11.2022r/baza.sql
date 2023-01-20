CREATE DATABASE 4eP_matura;
USE 4eP_matura;

CREATE TABLE Klasy
(
    IDKlasy int PRIMARY KEY AUTO_INCREMENT,
    Profil varchar(50)
);

CREATE TABLE Przedmioty
(
    IDPrzedmiotu int PRIMARY KEY AUTO_INCREMENT,
    Nazwa varchar(250)
);

CREATE TABLE Uczniowie
(
    NumerLegitymacji int AUTO_INCREMENT PRIMARY KEY,
    Imie varchar(20),
    Nazwisko varchar(100),
    IDKlasy int
);

ALTER TABLE Uczniowie
ADD FOREIGN KEY (IDKlasy)
REFERENCES Klasy(IDKlasy);

CREATE TABLE Matura
(
    NumerLegitymacji INT,
    IDPrzedmiotu INT,
    PRIMARY KEY(NumerLegitymacji, IDPrzedmiotu);
);

ALTER TABLE Matura
ADD FOREIGN KEY(NumerLegitymacji)
REFERENCES Uczniowie(NumerLegitymacji),
ADD FOREIGN KEY(IDPrzedmiotu)
REFERENCES Przedmioty(IDPrzedmiotu);


INSERT INTO Klasy VALUES(NULL,'LOGISTYK');
INSERT INTO Przedmioty VALUES(NULL,'Matematyka');
INSERT INTO Przedmioty VALUES(NULL,'Biologia');
INSERT INTO Uczniowie VALUES(NULL,'Piotr','Nowak',1);
INSERT INTO Matura VALUES(2,1);
INSERT INTO Matura VALUES(2,2);

CREATE TABLE studenci(
    idStudenta int AUTO_INCREMENT PRIMARY KEY;
    Nazwisko varchar(250);

)

DROP TABLE Matura;
DROP TABLE Przedmioty;

CREATE TABLE Przedmioty(
    IDPrzedmiotu INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa varchar(50)
);
CREATE TABLE Oceny(
    IdOceny int AUTO_INCREMENT PRIMARY KEY,
    Ocena int,
    IDPrzedmiotu int FOREIGN KEY REFERENCES Przedmioty(IDPrzedmiotu),id
);


----------------------------------------------------------------
-- 1. policz ilość wszystkich rekordów (zapisów) ;
SELECT COUNT(rodzaj)
FROM towar;

-- 2. z opisami - największą i najmniejsza CENĘ, oraz średnią arytmetyczną CENY ;
SELECT MAX(cena),MIN(cena),AVG (cena)
FROM towar;

-- 3.sumę wartości towarów, średnią arytmetyczną wartości (ILOSC * CENA) ;
SELECT SUM(ilosc * cena), AVG(ilosc *  cena)
FROM towar;

-- 4. policz średnią arytmetyczną ceny, a później policz ręcznie średnią arytmetyczną ceny = suma CENY / ilość rekordów. 
SELECT AVG(cena),SUM(cena) / COUNT(rodzaj)
FROM towar; 

-- 5. Wyświetl średnią cenę wszystkich towarów o cenie pomiędzy 10 a 1000 zł
SELECT AVG(cena)
FROM towar
WHERE cena BETWEEN 10 AND 1000; 
-- 6, wyświetl sumę masy (ilosc * waga) , ale tylko dla rodzaju  GD i TR
SELECT SUM(ilosc * waga)
FROM towar
WHERE rodzaj IN('GD','TR');

-- 7. Wyświetl łączną ilość wszystkich zamówionych produktów,
SELECT COUNT(zamow)
FROM towar
WHERE zamow='prawda';
-- 8. wyświetl największą wartość (ilosc * cena)  towarów wyprodukowanych w 1997 roku
SELECT MAX(ilosc * cena)
FROM towar
WHERE data_prod LIKE ('1997-%-%');

-- 9. policz ile rekordów jest w każdym RODZAJU 
SELECT COUNT(*)
FROM towar
GROUP BY rodzaj;
-- 10. policz ile rekordów jest w każdym RODZAJU, posortuj malejąco wg RODZAJU;
SELECT COUNT(*),rodzaj
FROM towar
GROUP BY rodzaj;
ORDER BY rodzaj DESC;

-- 11. policz sumę i średnią arytmetyczną wartości (ilość * cena) i minimalnej i maksymalnej masie (ilość * waga) dla każdego RODZAJU towaru ;
SELECT

-- 12. policz ile rekordów jest w każdym RODZAJU - wyświetl ilości rekordów większe od 15 ;
SELECT

-- 13. policz średnią arytmetyczną ceny dla każdego RODZAJU - wyświetl średnie mniejsze od 500;
SELECT

-- 14. dla każdego rodzaju towarów wyświetl ilość rekordów, średnią wagę, średnią ilość, maksymalną i minimalną cenę dla ilości rekordów w RODZAJU mniejszej od 15.
SELECT

-- 15. dla każdego rodzaju towarów wyświetl maksymalną cenę dla ilości rekordów w RODZAJU większe od 10. Uwzględnij tylko towary zamówione.
SELECT

-- 16. Oblicz minimalną cenę towarów niezamówionych dla każdego rodzaju. 
SELECT

-- 17. oblicz średnią cenę towarów zamówionych (zamow) i nie zamówionych
SELECT

-- 18. oblicz średnią cenę towarów wyprodukowanych w 1999 roku  dla poszczególnych rodzajów towaru
SELECT
