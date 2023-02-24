--0. dodaj klicz do tabeli kontakty
ALTER TABLE moje_kontakty
ADD id INT PRIMARY KEY AUTO_INCREMENT;

-- 1. podział zainteresowań, z uwagi na możliwość uszkodzenia danych, zabezpiecz się transakcją
START TRANSACTION;

-- A. dodaj nowe kolumny zainteresowanie1, zainteresowanie2, zainsteresowanie3
ALTER TABLE moje_kontakty
ADD zainteresowanie1 VARCHAR(255),
ADD zainteresowanie2 VARCHAR(255),
ADD zainteresowanie3 VARCHAR(255);

-- B. do kolumny zainteresowanie1 wstaw pierwsze zainteresowanie z kolumny zainteresowania. Dane są oddzielone przecinkiem, użyj substring_index
UPDATE moje_kontakty
SET zainteresowanie1 = SUBSTRING(zainteresowania,','1);
COMMIT;

-- C. usuń z kolumny zainteresowanie pierwsze zainteresowanie. Wstaw do pola zaintersowanie wartość od pozycji długość pierwszego zainteresowania+2, użyj substr, length i trim
START TRANSACTION;
UPDATE moje_kontakty
SET zainteresowanie2 trim(SUBSTRING(zainteresowania,length(zainteresowanie1)+2));
COMMIT;

-- D. powtórz powyższe kroki, a przenieść pozostałe zainteresowania do kolumny zainteresowanie2 i zaintersowanie3
-- E. usuń kolumnę zainteresowania
ALTER TABLE moje_kontakty
DROP Zainteresowania;

-- 2. nowa tabela słownikowa z zainteresowaniami
-- A. utwórz nową tabelę słownikową Zainteresowania z nazwami zainteresowań wybranymi z  z pół zainteresowanie1. zainteresowanie2, zainteresowanie3 tabeli moje_kontakty
CREATE TABLE zainteresowania AS 
SELECT zainteresowanie1 FROM moje_kontakty
UNION
SELECT zainteresowanie2 FROM moje_kontakty;

-- B. dodaj pole klucza podstawowego id z autoinkrementacją.
 ALTER TABLE moje_kontakty
ADD ID INT PRIMARY KEY AUTO_INCREMENT FIRST;

-- 3. tabela pośrednicząca kto_jakie 
-- A. utwórz tabelę kto_jakie z polami: kto i jakie, pola całkowite, klucz na obu polach
CREATE TABLE kto_jakie(
kontakt INT,
zainteresowanie INT,
PRIMARY KEY(kontakt,zainteresowanie)
);

-- B. wystaw do niej id kontaktu i id zainteresowania dla wierszy, w których zainteresowanie1 jest równe nazwie zainteresowania
SELECT moje_kontakty.id,zainteresowania.id
FROM moje_kontakty,zainteresowania

-- C. powtórz dla kolumn zaintersowanie2 i zainteresowanie3 


-- 4. usuń zbędne kolumny z tabeli moje_kontakty
