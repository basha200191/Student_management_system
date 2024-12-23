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
INSERT INTO Student VALUES(1003, 'bala', 22, 'bala114@gmail.com', '9876583210');
INSERT INTO Student VALUES(1004, 'ahamed', 23, 'ahamed115@gmail.com', '9876543990');
INSERT INTO Student VALUES(1005, 'trisha', 20, 'trisha116@gmail.com', '9876540010');
INSERT INTO Student VALUES(1006, 'zara', 21, 'zara117@gmail.com', '9834354320');
INSERT INTO Student VALUES(1007, 'arish', 22, 'arish118@gmail.com', '9257543210');
INSERT INTO Student VALUES(1008, 'kiran', 24, 'kiran119@gmail.com', '9556543210');
INSERT INTO Student VALUES(1009, 'kulo', 25, 'kulo120@gmail.com', '7076543210');
INSERT INTO Student VALUES(1010, 'yusuf', 23, 'yusuf121@gmail.com', '9879843210');

-- Create Courses table
CREATE TABLE Courses (
    CourseID NUMBER(5)PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    CourseDescription VARCHAR2(300)
);
 --Insert sample courses
INSERT INTO Courses VALUES(1010,'java', 'Java is a programming language and platform that used to create a variety of applications including');
INSERT INTO Courses VALUES(1011,'python', 'Python is a general-purpose, high-level, object-oriented programming language');
INSERT INTO Courses VALUES(1012,'data analysis', 'Data collection and presentation: How to collect and present data, and how to obtain secondary data from various sources');
INSERT INTO Courses VALUES(1013,'web development', 'teaches students how to build and manage websites, from the basics of HTML to more complex server-side programming');
INSERT INTO Courses VALUES(1014,'cloud computing', 'teaches students about the delivery of computing resources over the internet, also known as the cloud');


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
INSERT INTO Enrollments VALUES(300,1003, 1012, 'A');
INSERT INTO Enrollments VALUES(400,1004, 1013, 'B');
INSERT INTO Enrollments VALUES(500,1005, 1014, 'B1');

--to insert the null
INSERT INTO Enrollments VALUES (600,1006,1015, NULL);
--update student grades
UPDATE Enrollments SET Grade = 'A' WHERE Enroll_ID = 600;
