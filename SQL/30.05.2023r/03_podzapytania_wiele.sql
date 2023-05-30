-- 1. wyświetl nazwę i cenę towarów, które zostały zamówione (kiedykolwiek) w ilości co najmniej 20 sztuk (Quantity )

-- 2. wyświetl nazwę i cenę towarów, które zawsze są zamawiane w ilości co najmniej 20 sztuk (Quantity ) (o ile były zamówione)

-- 3. Wyświetl nazwiska i imiona pracowników, którzy nie sprzedali niczego do Argentyny.

-- 4. Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe.
SELECT CustomerName FROM [Customers]
WHERE CustomerID NOT IN (SELECT CustomerID FROM [Orders]
WHERE OrderDate LIKE '1997-%%-%%')
-- 5. Wybierz nazwy i adresy klientów, którzy nie kupili żadnego produktu z kategorii seafood 
SELECT CustomerName,address, city,country 
FROM customers WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders INNER JOIN IN (SELECT productID FROM products WHERE categoryID=(SEKECT categoryID FROM )))
-- 6. Wypisz nazwy i kraje klientów, którzy zawsze zamawiali tylko jeden produkt.
