--Из таблицы Production.ProductModel показать ID модели товара (ProductModelID), название товара (Name), описание товара в каталоге (CatalogDescription) и инструкцию товара (Instructions). Показать только те товары, у которых есть инструкция.
SELECT ProductModelID, Name, CatalogDescription, Instructions
FROM Production.ProductModel
WHERE Instructions IS NOT NULL