--Из таблицы Sales.Store показать ID сотрудника (BusinessEntityID), название магазина (Name) и ID продавца (SalesPersonID). Показать только значения поля Name, принадлежащие списку ('Next-Door Bike Store', 'Area Bike Accessories', 'Top of the Line Bikes', 'Valley Toy Store', 'Global Plaza'). Использовать оператор IN.
SELECT BusinessEntityID , Name, SalesPersonID
FROM Sales.Store
WHERE Name IN ('Next-Door Bike Store', 'Area Bike Accessories', 'Top of the Line Bikes', 'Valley Toy Store', 'Global Plaza')