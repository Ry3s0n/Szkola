SELECT ProductsName, Price
FROM Products
WHERE CategoryID=(
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName='Seafood')


SELECT Price,ProductsName 
FROM Products
WHERE <(SELECT AVG(Price FROM Products));


SELECT ProductsName FROM Products
WHERE CategoryID IN(SELECT CategoryID FROM Categories WHERE Description LIKE '%sweet%')

SELECT ProductsName FROM Products
WHERE Price > 