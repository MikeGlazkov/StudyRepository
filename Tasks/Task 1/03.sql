--ѕоказать пол¤ BusinessEntityID, RateChangeDate, Rate из таблицы HumanResources.EmployeePayHistory. ѕоказать только те записи, дл¤ которых почасова¤ ставка заработной платы (Rate) больше $15 и меньше $20. »спользовать оператор BETWEEN.
SELECT BusinessEntityID, RateChangeDate, Rate
FROM HumanResources.EmployeePayHistory
WHERE Rate BETWEEN 15 and 20