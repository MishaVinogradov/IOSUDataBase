--7.	Показать поля DepartmentID, ShiftID, StartDate, EndDate из таблицы
--HumanResources.EmployeeDepartmentHistory. Если дата окончания (EndDate) неизвестна,
--то показать текущую дату. Названия полей оставить без изменений.
SELECT DepartmentID, ShiftID, StartDate, ISNULL(EndDate,CURRENT_TIMESTAMP) AS EndDate
FROM HumanResources.EmployeeDepartmentHistory
