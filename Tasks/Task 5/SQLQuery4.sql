use Reviews

--Для оценки объективности пользователей вывести их список с указанием 
--количества данных пользователем оценок (CountRates) и среднюю оценку (AvgRate):
SELECT	UserName, COUNT(UserName) AS CountRates, AVG(Rate) AS AvgRate
FROM	Users 
INNER JOIN	Info ON Users.UserID = Info.UserID
GROUP BY UserName
