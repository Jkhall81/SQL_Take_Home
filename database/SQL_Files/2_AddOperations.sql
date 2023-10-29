INSERT INTO "Department" ("DepartmentID", "DepartmentName") VALUES (8, "Operations");

UPDATE "Person" SET "DepartmentID" = 8
WHERE "DepartmentID" = 7 AND "SexID" = 2;

-- T-SQL
/*
INSERT INTO Department VALUES (8, "Operations");
GO
UPDATE Person SET DepartmentID = 8
WHERE DepartmentID = 7 AND SexID = 2
GO
*/