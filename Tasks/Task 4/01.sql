--Показать самый тяжелый товар (наименование и вес) (Таблица Production.Product).
SELECT Name, Weight
FROM Production.Product
WHERE Weight = (SELECT MAX(Weight) 
FROM Production.Product WHERE Weight > 0)