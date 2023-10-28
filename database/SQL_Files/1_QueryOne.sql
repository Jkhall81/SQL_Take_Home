SELECT
	p.FName AS "First Name",
	p.LName AS "Last Name",
	d.DepartmentName AS "Department Name",
	pr.ProjectName AS "Project Name",
	s.SexValue AS "Gender"
FROM
	Person AS p
JOIN
	Department AS d ON p.DepartmentID = d.DepartmentID
LEFT JOIN
	Person_Project AS pp ON p.PersonID = pp.PersonID
LEFT JOIN
	Project AS pr ON pp.ProjectID = pr.ProjectID
LEFT JOIN
	Sex AS s ON p.SexID = s.SexID
WHERE
	d.DepartmentName IN ('Business', 'Pharmacy')
ORDER BY
	"First Name", "Last Name", "Department Name", "Project Name";
