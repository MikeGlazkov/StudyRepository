--Вывести EmployeeID, ShipDate и среднее по SubTotal для всевозможных EmployeeID с одинаковой ShipDate, предусмотреть вывод общего среднего StandardPrice за ShipDate из таблицы Purchasing.PurchaseOrderHeader (Использовать CUBE).
SELECT EmployeeID, ShipDate, AVG(SubTotal) AS AvgSubTotal
FROM Purchasing.PurchaseOrderHeader
GROUP BY
CUBE(EmployeeID, ShipDate)