--3)	Для каждой профессии найти суммарное количество человек, которые были приняты до 2009 года,
--из таблицы HumanResources.Employee, не учитывать пустые значения.
SELECT JobTitle, Count(JobTitle) AS HiredBefore2009
FROM HumanResources.Employee
WHERE Year(HireDate) < 2009
GROUP BY JobTitle