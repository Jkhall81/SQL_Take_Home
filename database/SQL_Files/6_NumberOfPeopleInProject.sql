SELECT
	p.ProjectName AS "Project Name",
	COUNT(pp.PersonID) AS "Number of People"
FROM Project AS p
LEFT JOIN Person_Project AS pp ON p.ProjectID = pp.ProjectID
GROUP BY p.ProjectName
ORDER BY p.ProjectName;