-- Create Students table
CREATE TABLE Students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    department VARCHAR2(50),
    year NUMBER
);

-- Create Courses table
CREATE TABLE Courses (
    course_id VARCHAR2(10) PRIMARY KEY,
    course_name VARCHAR2(100),
    credit NUMBER
);

-- Create Results table
CREATE TABLE Results (
    result_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id VARCHAR2(10),
    marks NUMBER,
    grade VARCHAR2(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert data into Students
INSERT INTO Students VALUES (101, 'Akshaya', 'ECE', 4);
INSERT INTO Students VALUES (102, 'Ravi', 'CSE', 3);
INSERT INTO Students VALUES (103, 'Divya', 'ECE', 4);

-- Insert data into Courses
INSERT INTO Courses VALUES ('EC101', 'Digital Electronics', 3);
INSERT INTO Courses VALUES ('CS101', 'Data Structures', 4);
INSERT INTO Courses VALUES ('EC102', 'Signal Processing', 3);

-- Insert data into Results
INSERT INTO Results VALUES (1, 101, 'EC101', 86, 'A');
INSERT INTO Results VALUES (2, 101, 'CS101', 90, 'A+');
INSERT INTO Results VALUES (3, 102, 'CS101', 80, 'A');
INSERT INTO Results VALUES (4, 103, 'EC102', 75, 'B');

