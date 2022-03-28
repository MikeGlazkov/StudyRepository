--Показать список людей (поля FirstName, LastName), в котором указан уровень человека в организации (OrganizationLevel) или нет, из таблиц Person.Person, HumanResources.Employee, используя LEFT OUTER JOIN.
SELECT a.FirstName, a.LastName, b.OrganizationLevel
FROM Person.Person AS a
LEFT OUTER JOIN HumanResources.Employee AS b ON a.BusinessEntityID = b.BusinessEntityID