use Reviews

--��� ������ ������������� ������������� ������� �� ������ � ��������� 
--���������� ������ ������������� ������ (CountRates) � ������� ������ (AvgRate):
SELECT	UserName, COUNT(UserName) AS CountRates, AVG(Rate) AS AvgRate
FROM	Users 
INNER JOIN	Info ON Users.UserID = Info.UserID
GROUP BY UserName
