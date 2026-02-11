--Create a table Student
CREATE TABLE Student (
  RollNo INT ,
  Name VARCHAR(50),
  Dept VARCHAR(20),
  Age INT,
  Phone VARCHAR(15)
);



--Create a table Course
CREATE TABLE Course (
  CourseID INT ,
  CourseName VARCHAR(50),
  Credits INT
);


--Add a new column City in table Student
ALTER TABLE Student ADD City VARCHAR(20);

--Add a new column Semester in table Student
ALTER TABLE Student ADD Semester INT;

--Rename column Phone to MobileNo in table Student.
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;


--Delete (drop) the table Course                                  
DROP TABLE Course;


--Insert 5 student records into Student
INSERT INTO Student VALUES (101, 'Rahul mitchell', 'CSE', 20, '9936596485', 'London', 5);
INSERT INTO Student VALUES (102, 'Travis Tulla', 'CSE', 21, '9342551555', 'sydney', 5);
INSERT INTO Student VALUES (103, 'Amrit Duffy', 'IT', 19, '9642556971', 'Dubai', 4);
INSERT INTO Student VALUES (104, 'Abhishek Peterson', 'ME', 22, '9876544565', 'Malbourne', 6);
INSERT INTO Student VALUES (105, 'Sonu Patel ', 'CSE', 21, '9876521001', 'Tokyo', 5);


--Display all records from Student.
SELECT * FROM Student;

--Display only RollNo and Name from Student
SELECT RollNo , Name FROM Student;

--Display all students from department "CSE"                                                                                                              
SELECT * FROM Student WHERE Dept='CSE';

--Display all students whose age is greater than 20.                                                                           
SELECT * FROM Student WHERE Age > 20 ;

--Update the department of RollNo = 101 to "ECE".                              
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

--Update the city of student "Rahul" to "Patna"
UPDATE Student SET City = 'Delhi' WHERE Name = 'Travis Tulla';

--Increase age of all students by 1 year
UPDATE Student SET Age=Age+1;

--Delete record of student whose RollNo = 105
DELETE FROM Student WHERE RollNo = 105;

--Delete all records from Student (table should remain)
DELETE FROM Student;