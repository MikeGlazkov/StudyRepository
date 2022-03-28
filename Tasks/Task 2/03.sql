--Найти количество номеров телефона разного типа (PhoneNumberTypeID) из таблицы Person.PersonPhone, где номер начинается с 819. Сортировать по возрастанию.
SELECT PhoneNumberTypeID, COUNT(PhoneNumberTypeID) AS SumPhoneNumberVariousTypeID
FROM Person.PersonPhone
WHERE LEFT(PhoneNumber, 3) LIKE '819'
GROUP BY PhoneNumberTypeID
ORDER BY SumPhoneNumberVariousTypeID ASC