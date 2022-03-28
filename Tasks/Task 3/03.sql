--Показать список товаров (поле Name), в котором указан, есть ли у товара дата начала отслеживания цены (StartDate) или нет, из таблицы Production.ProductListPriceHistory, Production.Product, используя RIGHT OUTER JOIN.
SELECT b.Name, a.StartDate
FROM Production.ProductListPriceHistory AS a
RIGHT OUTER JOIN Production.Product AS b ON a.ProductID = b.ProductID