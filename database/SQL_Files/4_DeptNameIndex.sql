CREATE INDEX idx_DepartmentName ON Department ("DepartmentName");

-- T-SQL (includes query to confirm index was created.)
/*
CREATE INDEX idx_DepartmentName ON dbo.Department ([DepartmentName]);
GO

SELECT OBJECT_NAME(object_id) AS Department, name AS idx_DepartmentName
FROM sys.indexes
WHERE OBJECT_NAME(object_id) = 'Department AND name = 'idx_DepartmentName';
GO
*/