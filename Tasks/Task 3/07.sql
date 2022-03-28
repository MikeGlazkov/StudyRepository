--ѕоказать комбинированный список таблиц Person.Address, Person.BusinessEntityAddress по пол¤м AddressID, ModifiedDate, использу¤ UNION.
SELECT AddressID, ModifiedDate
FROM Person.Address
UNION
SELECT AddressID, ModifiedDate
FROM Person.BusinessEntityAddress