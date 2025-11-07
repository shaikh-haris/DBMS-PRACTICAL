CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Department (
  DeptID INT PRIMARY KEY,
  DeptName VARCHAR(50)
);

CREATE TABLE Student (
  StudentID INT PRIMARY KEY,
  Name VARCHAR(50),
  Age INT,
  DeptID INT,
  FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Department VALUES (1, 'Computer');
INSERT INTO Department VALUES (2, 'Mechanical');
INSERT INTO Department VALUES (3, 'Civil');

INSERT INTO Student VALUES (101, 'Haris', 20, 1);
INSERT INTO Student VALUES (102, 'Aisha', 21, 2);
INSERT INTO Student VALUES (103, 'Rohan', 22, 1);
INSERT INTO Student VALUES (104, 'Sneha', 19, NULL);

SELECT s.Name, d.DeptName
FROM Student s
INNER JOIN Department d ON s.DeptID = d.DeptID;

SELECT s.Name, d.DeptName
FROM Student s
LEFT JOIN Department d ON s.DeptID = d.DeptID;

SELECT s.Name, d.DeptName
FROM Student s
RIGHT JOIN Department d ON s.DeptID = d.DeptID;

CREATE VIEW StudentView AS
SELECT s.StudentID, s.Name, d.DeptName
FROM Student s
LEFT JOIN Department d ON s.DeptID = d.DeptID;

SELECT * FROM StudentView;






