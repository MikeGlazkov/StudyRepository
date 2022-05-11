use Reviews

--������� ������������� ��� ������ ������������� �������������,
--� ������� ������������ ������ ������������� � ��������� 
--���������� ������ ������������� ������ (CountRates) � ������� ������ (AvgRate):
GO
CREATE VIEW UsersJustice 
AS  
SELECT	UserName, COUNT(UserName) AS CountRates, AVG(Rate) AS AvgRate
FROM	Users 
INNER JOIN	Info ON Users.UserID = Info.UserID
GROUP BY UserName

GO
SELECT * FROM UsersJustice
