--Вывести пол, где средний возраст = 42 из таблицы HumanResources.Employee (не учитывать пустые значения).
SELECT Gender, AVG(DATEDIFF("YYYY", BirthDate , GETDATE()))
FROM HumanResources.Employee
GROUP BY Gender
HAVING AVG(DATEDIFF("YYYY", BirthDate , GETDATE())) = 42