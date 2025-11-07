create database studentDB;
use studentDB;

CREATE TABLE Department (
  DeptID INT PRIMARY KEY,
  DeptName VARCHAR(50)
);

CREATE TABLE Student (
  StudentID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Email VARCHAR(50) UNIQUE,
  Age INT CHECK (Age >= 18),
  DeptID INT,
  FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE INDEX idx_name ON Student(Name);

CREATE VIEW StudentView AS
SELECT Student.Name, Department.DeptName
FROM Student
JOIN Department ON Student.DeptID = Department.DeptID;

INSERT INTO Department VALUES (1, 'Computer');
INSERT INTO Department VALUES (2, 'Mechanical');

INSERT INTO Student VALUES (101, 'Haris', 'haris@gmail.com', 20, 1);
INSERT INTO Student VALUES (102, 'Aisha', 'aisha@gmail.com', 21, 2);
INSERT INTO Student VALUES (103, 'Rohan', 'rohan@gmail.com', 19, 1);

select * from Student;

select Name , DeptName From StudentView;

SELECT Name, Age FROM Student WHERE Age > 20;

UPDATE Student SET Age = 22 WHERE StudentID = 103;

DELETE FROM Student WHERE StudentID = 102;



