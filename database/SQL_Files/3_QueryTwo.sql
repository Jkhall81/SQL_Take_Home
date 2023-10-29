-- new query for operations dept
SELECT
	p.FName AS "First Name",
	p.LName AS "Last Name",
	d.DepartmentName AS "Department Name",
	s.SexValue AS "Gender"
FROM
	Person AS p
JOIN
	Department AS d ON p.DepartmentID = d.DepartmentID
JOIN
	Sex AS s ON p.SexID = s.SexID
WHERE
	d.DepartmentName = "Operations";
	
-- This executes without erros in sql server, just need to add GO to the end (in sqlcmd).

/*
The index I created didn't really make this query any faster, but it might if there
was more data in the tables.  I do not know for sure.  Other than creating an index, I am unsure 
of what other methods could be used to make a query like this execute more quickly.
*/

