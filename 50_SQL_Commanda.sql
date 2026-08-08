Table1: Department

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

Table2: Employee

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Salary DECIMAL(10,2),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

Insert Data into Department

INSERT INTO Department VALUES (101,'HR','Hyderabad');
INSERT INTO Department VALUES (102,'IT','Bangalore');
INSERT INTO Department VALUES (103,'Finance','Chennai');
INSERT INTO Department VALUES (104,'Marketing','Mumbai');
INSERT INTO Department VALUES (105,'Sales','Delhi');

Insert Data into Employee

INSERT INTO Employee VALUES (1,'Rahul',25,'Male',45000,101);
INSERT INTO Employee VALUES (2,'Priya',28,'Female',60000,102);
INSERT INTO Employee VALUES (3,'Amit',30,'Male',55000,103);
INSERT INTO Employee VALUES (4,'Sneha',26,'Female',48000,102);
INSERT INTO Employee VALUES (5,'Kiran',35,'Male',70000,104);
INSERT INTO Employee VALUES (6,'Anjali',27,'Female',52000,105);
INSERT INTO Employee VALUES (7,'Ravi',31,'Male',65000,101);
INSERT INTO Employee VALUES (8,'Pooja',29,'Female',58000,103);
INSERT INTO Employee VALUES (9,'Arjun',24,'Male',43000,105);
INSERT INTO Employee VALUES (10,'Divya',32,'Female',75000,104);

50 SQL commands

--1
SELECT * FROM Employee;

--2
SELECT * FROM Department;

--3
SELECT EmpName,Salary FROM Employee;

--4
SELECT DISTINCT Gender FROM Employee;

--5
SELECT * FROM Employee WHERE Salary>50000;

--6
SELECT * FROM Employee WHERE Age<30;

--7
SELECT * FROM Employee WHERE Gender='Female';

--8
SELECT * FROM Employee ORDER BY Salary;

--9
SELECT * FROM Employee ORDER BY Salary DESC;

--10
SELECT * FROM Employee ORDER BY EmpName;

--11
SELECT COUNT(*) FROM Employee;

--12
SELECT MAX(Salary) FROM Employee;

--13
SELECT MIN(Salary) FROM Employee;

--14
SELECT AVG(Salary) FROM Employee;

--15
SELECT SUM(Salary) FROM Employee;

--16
SELECT * FROM Employee WHERE Age BETWEEN 25 AND 30;

--17
SELECT * FROM Employee WHERE EmpName LIKE 'A%';

--18
SELECT * FROM Employee WHERE EmpName LIKE '%a';

--19
SELECT * FROM Employee WHERE Salary IN (45000,60000);

--20
SELECT * FROM Employee WHERE DeptID=102;

--21
SELECT Gender,COUNT(*) FROM Employee GROUP BY Gender;

--22
SELECT DeptID,AVG(Salary) FROM Employee GROUP BY DeptID;

--23
SELECT DeptID,MAX(Salary) FROM Employee GROUP BY DeptID;

--24
SELECT DeptID,MIN(Salary) FROM Employee GROUP BY DeptID;

--25
SELECT DeptID,SUM(Salary) FROM Employee GROUP BY DeptID;

--26
SELECT DeptID,COUNT(*) FROM Employee GROUP BY DeptID;

--27
SELECT DeptID,COUNT(*) FROM Employee GROUP BY DeptID HAVING COUNT(*)>1;

--28
SELECT DeptID,AVG(Salary) FROM Employee GROUP BY DeptID HAVING AVG(Salary)>50000;

--29
SELECT * FROM Employee INNER JOIN Department
ON Employee.DeptID=Department.DeptID;

--30
SELECT EmpName,DeptName
FROM Employee
INNER JOIN Department
ON Employee.DeptID=Department.DeptID;

--31
SELECT EmpName,Location
FROM Employee
INNER JOIN Department
ON Employee.DeptID=Department.DeptID;

--32
SELECT EmpName,DeptName,Salary
FROM Employee
INNER JOIN Department
ON Employee.DeptID=Department.DeptID;

--33
SELECT *
FROM Employee
LEFT JOIN Department
ON Employee.DeptID=Department.DeptID;

--34
SELECT *
FROM Department
LEFT JOIN Employee
ON Department.DeptID=Employee.DeptID;

--35
SELECT *
FROM Employee
RIGHT JOIN Department
ON Employee.DeptID=Department.DeptID;

--36
SELECT EmpName
FROM Employee
WHERE Salary=(SELECT MAX(Salary) FROM Employee);

--37
SELECT EmpName
FROM Employee
WHERE Salary=(SELECT MIN(Salary) FROM Employee);

--38
SELECT EmpName
FROM Employee
WHERE Salary>(SELECT AVG(Salary) FROM Employee);

--39
SELECT *
FROM Employee
WHERE DeptID=(SELECT DeptID FROM Department WHERE DeptName='IT');

--40
UPDATE Employee
SET Salary=Salary+5000
WHERE DeptID=102;

--41
UPDATE Employee
SET Age=Age+1
WHERE EmpID=1;

--42
DELETE FROM Employee
WHERE EmpID=9;

--43
ALTER TABLE Employee
ADD Email VARCHAR(50);

--44
UPDATE Employee
SET Email='rahul@gmail.com'
WHERE EmpID=1;

--45
SELECT EmpName,Email FROM Employee;

--46
ALTER TABLE Employee
MODIFY Salary DECIMAL(12,2);

--47
ALTER TABLE Employee
DROP COLUMN Email;

--48
DESC Employee;

--49
SHOW TABLES;

--50
SELECT NOW();
