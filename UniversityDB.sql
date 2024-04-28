

CREATE DATABASE UniversityDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Major VARCHAR(50)
);

--Inserting Data to table

INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) 
VALUES 
(1, 'John', 'Doe', 20, 'Computer Science'),
(2, 'Jane', 'Smith', 21, 'Engineering'),
(3, 'Alice', 'Johnson', 19, 'Biology'),
(4, 'Michael', 'Brown', 22, 'Mathematics'),
(5, 'Emily', 'Davis', 20, 'Psychology');


--Adding a Column
ALTER TABLE Students
ADD GPA DECIMAL(4,2);

-- Updating Students GPA
UPDATE Students SET GPA = 3.5 WHERE StudentID = 1;
UPDATE Students SET GPA = 3.8 WHERE StudentID = 2;
UPDATE Students SET GPA = 3.2 WHERE StudentID = 3;
UPDATE Students SET GPA = 3.9 WHERE StudentID = 4;
UPDATE Students SET GPA = 3.7 WHERE StudentID = 5;

sp_rename  'Students',  'EnrolledStudents';

-- Create the Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT
);

-- Insert sample records into the Courses table
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits) 
VALUES 
(1, 'Introduction to Computer Science', 'Dr. Smith', 3),
(2, 'Calculus I', 'Prof. Johnson', 4),
(3, 'Introduction to Psychology', 'Dr. Williams', 3);

-- Drop the EnrolledStudents table
DROP TABLE IF EXISTS EnrolledStudents;
