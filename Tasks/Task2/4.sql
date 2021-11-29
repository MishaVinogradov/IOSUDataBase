--4)	Найти количество номеров телефона разного типа (PhoneNumberTypeID) из таблицы Person.PersonPhone,
--где номер начинается с 217
SELECT PhoneNumberTypeID, COUNT(PhoneNumberTypeID) as NumberCount
FROM Person.PersonPhone
WHERE LEFT(PhoneNumber, 3) = '217'
GROUP BY PhoneNumberTypeID