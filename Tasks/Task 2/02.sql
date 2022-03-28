--Ќайти суммарную цену (ListPrice) товара размера M из таблицы Production.Product, не учитывать пустые и нулевые значени¤.
SELECT SUM(ListPrice) AS SumListPriceSizeM
FROM Production.Product
WHERE Size = 'M'