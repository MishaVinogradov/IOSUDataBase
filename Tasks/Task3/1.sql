--1.	Показать должности (JobTitle) и поля PersonType, FirstName, LastName из таблиц
--Person.Person, Person.Employee.
SELECT b.JobTitle, a.PersonType, a.FirstName, a.LastName FROM Person.Person AS a
JOIN HumanResources.Employee AS b ON a.BusinessEntityID = b.BusinessEntityID