create table student(
std_id number(4)primary key,
std_name VARCHAR2(50)not NULL,
std_age number(3)not NULL,
etd_email VARCHAR2(30)UNIQUE,
std_number varchar2(10)UNIQUE
);
-- Insert sample students
INSERT INTO Student VALUES(1001, 'basha', 21, 'basha112@gmail.com', '1234567890');
INSERT INTO Student VALUES(1002, 'board', 23, 'board113@gmail.com', '9876543210');
-- Create Courses table
CREATE TABLE Courses (
    CourseID NUMBER(5)PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    CourseDescription VARCHAR2(200)
);
 --Insert sample courses
INSERT INTO Courses VALUES(1010,'java', 'Introduction to Algebra and Geometry');
INSERT INTO Courses VALUES(1011,'python', 'World History from Ancient to Modern Times');

-- Create Enrollments table
CREATE TABLE Enrollments (
    Enroll_ID NUMBER(3)PRIMARY KEY,
    Std_ID NUMBER(4),
    CourseID number(5),
    Grade CHAR(2),
    FOREIGN KEY (std_ID) REFERENCES student(std_ID)
);
-- Enroll students in courses
INSERT INTO Enrollments VALUES(100,1001, 1010, 'A');
INSERT INTO Enrollments VALUES(200,1002, 1011, 'B');

INSERT INTO Enrollments VALUES (300,1002,1012, NULL);
--update student grades
UPDATE Enrollments SET Grade = 'A' WHERE Enroll_ID = 300;
