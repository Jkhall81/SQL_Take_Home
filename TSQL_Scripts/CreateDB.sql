CREATE DATABASE TestDB;
GO
USE TestDB;

-- Create Tables
CREATE TABLE Sex (
    SexId INT, 
    SexValue NVARCHAR(10),
    PRIMARY KEY (SexId)
    );

CREATE TABLE Department (
    DepartmentID INT,
    DepartmentName NVARCHAR(50),
    PRIMARY KEY (DepartmentID)
);

CREATE TABLE Project (
    ProjectID INT,
    ProjectName NVARCHAR(100),
    PRIMARY KEY (ProjectID)
);

CREATE TABLE Person (
    PersonID INT,
    FName NVARCHAR(100),
    LName NVARCHAR(100),
    SexID INT,
    DepartmentID INT,
    PRIMARY KEY (PersonID)
);

CREATE TABLE Person_Project (
    PersonID INT,
    ProjectID INT
);
GO
-- Insert Data
INSERT INTO Sex VALUES (3, 'NonBinary');
INSERT INTO Sex VALUES (2, 'Female');
INSERT INTO Sex VALUES (1, 'Male');

INSERT INTO Department VALUES (1, 'Applications');
INSERT INTO Department VALUES (2, 'Infrastructure');
INSERT INTO Department VALUES (3, 'Pharmacy');
INSERT INTO Department VALUES (6, 'Sanitation');
INSERT INTO Department VALUES (7, 'Business');

INSERT INTO Project VALUES (1, 'OCP Version 2.2');
INSERT INTO Project VALUES (2, 'Workers Compensation');
INSERT INTO Project VALUES (3, 'Suncoast Interface');
INSERT INTO Project VALUES (5, 'Cleaning Supply Budget Review');
INSERT INTO Project VALUES (6, 'Datacenter Refresh');
INSERT INTO Project VALUES (7, 'Colorado Consolidation');

INSERT INTO Person VALUES (1, 'Jack', 'Roman', 1, 1);
INSERT INTO Person VALUES (2, 'Jamie', 'Lindsay', 2, 7);
INSERT INTO Person VALUES (3, 'Jason', 'Polonus', 1, 1);
INSERT INTO Person VALUES (4, 'Mike', 'Janich', 1, 3);
INSERT INTO Person VALUES (5, 'Chris', 'Bulat', 1, 6);
INSERT INTO Person VALUES (6, 'Dave', 'Zamora', 1, 3);
INSERT INTO Person VALUES (7, 'Chris', 'Bridgeman', 1, 3);
INSERT INTO Person VALUES (8, 'John', 'Bulat', 1, 2);
INSERT INTO Person VALUES (10, 'Amber', 'LaTona', 2, 7);
INSERT INTO Person VALUES (11, 'Dave', 'Reynolds', 1, 2);
INSERT INTO Person VALUES (12, 'Neil', 'Prettyman', 1, 1);
INSERT INTO Person VALUES (13, 'Mike', 'Porpora', 3, 6);

INSERT INTO Person_Project VALUES (1, 1);
INSERT INTO Person_Project VALUES (2, 2);
INSERT INTO Person_Project VALUES (3, 2);
INSERT INTO Person_Project VALUES (4, 2);
INSERT INTO Person_Project VALUES (1, 2);
INSERT INTO Person_Project VALUES (3, 6);
INSERT INTO Person_Project VALUES (6, 6);
INSERT INTO Person_Project VALUES (1, 5);
INSERT INTO Person_Project VALUES (10, 1);
INSERT INTO Person_Project VALUES (13, 5);
INSERT INTO Person_Project VALUES (6, 6);
INSERT INTO Person_Project VALUES (5, 7);
INSERT INTO Person_Project VALUES (11, 7);
INSERT INTO Person_Project VALUES (12, 2);
INSERT INTO Person_Project VALUES (7, 7);
GO
