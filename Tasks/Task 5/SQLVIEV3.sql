use Reviews

--Создать представление для оценки объективности пользователей,
--в котором отображается список пользователей с указанием 
--количества данных пользователем оценок (CountRates) и среднюю оценку (AvgRate):
GO
CREATE VIEW UsersJustice 
AS  
SELECT	UserName, COUNT(UserName) AS CountRates, AVG(Rate) AS AvgRate
FROM	Users 
INNER JOIN	Info ON Users.UserID = Info.UserID
GROUP BY UserName

GO
SELECT * FROM UsersJustice
