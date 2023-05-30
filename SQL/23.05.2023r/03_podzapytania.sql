--1.  wyświetl nazwę i cenę towarów, które zostały zamówione (kiedykolwiek) w ilości co najmniej 20 sztuk (Quantity )
SELECT DISTINCT ProductID
FROM OrderDetails
WHERE Quantity <20;
--2. wyświetl nazwę i cenę towarów, które zawsze są zamawiane w ilości co najmniej 20 sztuk (Quantity ) (o ile były zamówione)
SELECT ProductName,Price    
FROM Products
WHERE ProductID NOT IN(SELECT DISTINCT ProductID FROM OrderDetails WHERE Quantity <20);
--3. Wyświetl nazwiska i imiona pracowników, którzy nie sprzedali niczego do Argentyny.
SELECT FristName, LastName
FROM Employees
WHERE EmployeeID NOT IN(
    SELECT EmployeeID
    FROM Orders
    INNER JOIN Customers.CustomerID = Order.CustomerID
    WHERE Country = 'Agrentyna'
);

-- 4. Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe.
SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IT(SELECT CustomerID
FROM Orders 
WHERE OrderDate LIKE '1997-%%-%%');
-- 5. Wybierz nazwy i adresy klientów, którzy nie kupili żadnego produktu z kategorii seafood 

--6. Wypisz nazwy i kraje klientów, którzy zawsze zamawiali tylko jeden produkt.
