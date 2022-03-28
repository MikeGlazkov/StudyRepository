--Показать поля BusinessEntityID, AccountNumber, Name, PurchasingWebServiceURL из таблицы Purchasing.Vendor. Неизвестные адреса сайтов магазинов (PurchasingWebServiceURL) заменить значением 'not available'. Названия полей оставить без изменений.
SELECT BusinessEntityID, AccountNumber, Name, ISNULL(PurchasingWebServiceURL, 'not available') AS PurchasingWebServiceURL
FROM Purchasing.Vendor