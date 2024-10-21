
CREATE TABLE EmployeesSalary (
EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR(20),
Salary INT
);


INSERT INTO EmployeesSalary (EmployeeID, EmployeeName, Salary)
VALUES 
(1, 'SIVAsr', 50000),
(2, 'FAHEEM', 55000),
(3, 'ARUN', 60000);


CREATE TABLE EmployeesSalaryUpdates (
EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR(20),
Salary INT
);


INSERT INTO EmployeesSalaryUpdates (EmployeeID, EmployeeName, Salary)
VALUES 
(1, 'SIVAsr', 52000),
(3, 'ARUN', 61000),
(4, 'PRADEESH', 57000);

MERGE INTO EmployeesSalary AS target
USING EmployeesSalaryUpdates AS source
ON target.EmployeeID = source.EmployeeID
WHEN MATCHED THEN
UPDATE SET target.EmployeeName = source.EmployeeName, target.Salary = source.Salary;


SELECT * FROM EmployeesSalary;
