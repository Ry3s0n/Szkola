-- CONCAT

-- 1. Z tabeli Customers Wypisz w jednym polu Address, PostalCode, City jako Addres, oddzielone spacją

-- 2. Wypisz nazwy produktów i ich ceny. Każda cena powinna być poprzedzona znakiem $

-- CONCAT_WS

-- 3. Z tabeli Suppliers Wypisz w jednym polu Address, PostalCode, City jako Addres, oddzielone spacją. Użyj funkcji CONCAT_WS

-- SUBSTRING    SUBSTR   MID pozycja może być ujemna (liczymy wtedy od końca)

-- 4. Z nazwy produkt od trzeciego znaku dwa znaki

-- 5 Shippers, wyświetlamy sam numer kierunkowy

-- 6. wyświetlamy przedostatni znak z Phone (pesel)

-- LEFT

-- 7. Wypisz 12 pierwszych znaków z nazwy każdego klienta

-- 8. Wypisz pierwsze 7 znaków nazwy produktu i dodaj na końcu znaki ...

-- REPLACE

-- REVERSE

-- CHAR_LENGTH długość w znakach

-- 9. Wypisz kraje, z których pochodzą dostawcy, a w osobnej kolumnie długość nazwy kraju 

-- 10. Ile najwięcej znaków mają nazwy klientów? Wypisz.

-- 11. Dodatkowo wypisz najdłuższą nazwę lub nazwy

-- LENGTH długość w bajtach

-- 12. Wypisz długości nazw produktów używając funkcji char_length i length. Czy jest jakaś różnica?
SELECT PorductName, length(PorductName),char_length(PorductName)
FROM Products
WHERE length(PorductName) != char_length(PorductName);
-- UPPER 

-- 13. Wypisz nazwy kategorii zapisane wielkimi literami
SELECT UPPER(CategoryName) FROM Categories;
-- LOWER

-- 14. Wypisz nazwy produktów małymi literami
SELECT LOWER(CategoryName)
FROM Categories;
-- SUBSTRING_INDEX

-- 15. oddziel imie i nazwisko z pola  ContactName
SELECT SUBSTRING_INDEX(ContactName,'',1) AS FirstName, SUBSTRING_INDEX(ContactName,'',-1) AS LastName
FROM Customers;
-- FORMAT   pl_PL
SELECT FORMAT(Price,1,'pl_PL')
FROM Products;
-- 16. Wypisz ceny produktów zaokrąglone do jednego miejsca po przeciniku
SELECT CategoryName, FROMAT(AVG(Price), 2,'pl_PL')
FROM Products
INNER JOIN Category ON Products.CategoryId=Categories.CategoryId
GROUP BY Categories.CategoryId;
-- 17. Dla poszczególnych kategorii wypisz średnie ceny, zaokrąglone do jednego miejsca po przecinku. 

-- LOCATE (napis1, napis2) zwraca pozycję pierwszego wystąpienia napisu1 w napisie2 POSITION (napis1 IN napis2)

-- REPEAT (napis, ile) powtarza napis określoną ilość razy

-- REPLACE (napis, from_string), new_string)

-- INSERT ?

-- FIELD?