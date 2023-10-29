SELECT "Department Name: " || d.DepartmentName AS "Formatted Department Name"
FROM Department AS d
WHERE d.DepartmentID = (SELECT DepartmentID FROM Person WHERE PersonID = PersonIDHere);

-- T-SQL
/*
SELECT 'Department Name: ' + d.DepartmentName AS 'Formatted Department Name'
FROM Department AS d
WHERE d.DepartmentID = (SELECT DepartmentID FROM Person WHERE PersonID = PersonIDHere);
GO
*/