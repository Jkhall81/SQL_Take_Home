BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Sex" (
	"SexID"	INT NOT NULL,
	"SexValue"	TEXT NOT NULL,
	PRIMARY KEY("SexID")
);
CREATE TABLE IF NOT EXISTS "Department" (
	"DepartmentID"	INT NOT NULL,
	"DepartmentName"	TEXT NOT NULL,
	PRIMARY KEY("DepartmentID")
);
CREATE TABLE IF NOT EXISTS "Project" (
	"ProjectID"	INT NOT NULL,
	"ProjectName"	TEXT NOT NULL,
	PRIMARY KEY("ProjectID")
);
CREATE TABLE IF NOT EXISTS "Person" (
	"PersonID"	INTEGER,
	"FName"	TEXT,
	"LName"	TEXT,
	"SexID"	INTEGER,
	"DepartmentID"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Person_Project" (
	"PersonID"	INTEGER,
	"ProjectID"	INTEGER
);
INSERT INTO "Sex" VALUES (3,'NonBinary');
INSERT INTO "Sex" VALUES (2,'Female');
INSERT INTO "Sex" VALUES (1,'Male');
INSERT INTO "Department" VALUES (1,'Applications');
INSERT INTO "Department" VALUES (2,'Infrastructure');
INSERT INTO "Department" VALUES (3,'Pharmacy');
INSERT INTO "Department" VALUES (6,'Sanitation');
INSERT INTO "Department" VALUES (7,'Business');
INSERT INTO "Project" VALUES (1,'OCP Version 2.2');
INSERT INTO "Project" VALUES (2,'Workers Compensation');
INSERT INTO "Project" VALUES (3,'Suncoast Interface');
INSERT INTO "Project" VALUES (5,'Cleaning Supply Budget Review');
INSERT INTO "Project" VALUES (6,'Datacenter Refresh');
INSERT INTO "Project" VALUES (7,'Colorado Consolidation');
INSERT INTO "Person" VALUES (1,'Jack','Roman',1,1);
INSERT INTO "Person" VALUES (2,'Jamie','Lindsay',2,7);
INSERT INTO "Person" VALUES (3,'Jason','Polonus',1,1);
INSERT INTO "Person" VALUES (4,'Mike','Janich',1,3);
INSERT INTO "Person" VALUES (5,'Chris','Bulat',1,6);
INSERT INTO "Person" VALUES (6,'Dave','Zamora',1,3);
INSERT INTO "Person" VALUES (7,'Chris','Bridgeman',1,3);
INSERT INTO "Person" VALUES (8,'John','Bulat',1,2);
INSERT INTO "Person" VALUES (10,'Amber','LaTona',2,7);
INSERT INTO "Person" VALUES (11,'Dave','Reynolds',1,2);
INSERT INTO "Person" VALUES (12,'Neil','Prettyman',1,1);
INSERT INTO "Person" VALUES (13,'Mike','Porpora',3,6);
INSERT INTO "Person_Project" VALUES (1,1);
INSERT INTO "Person_Project" VALUES (2,2);
INSERT INTO "Person_Project" VALUES (3,2);
INSERT INTO "Person_Project" VALUES (4,2);
INSERT INTO "Person_Project" VALUES (1,2);
INSERT INTO "Person_Project" VALUES (3,6);
INSERT INTO "Person_Project" VALUES (6,6);
INSERT INTO "Person_Project" VALUES (1,5);
INSERT INTO "Person_Project" VALUES (10,1);
INSERT INTO "Person_Project" VALUES (13,5);
INSERT INTO "Person_Project" VALUES (6,6);
INSERT INTO "Person_Project" VALUES (5,7);
INSERT INTO "Person_Project" VALUES (11,7);
INSERT INTO "Person_Project" VALUES (12,2);
INSERT INTO "Person_Project" VALUES (7,7);
COMMIT;
