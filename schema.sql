
 1. Students Table
CREATE TABLE Students (
  student_id NUMBER PRIMARY KEY,
  name VARCHAR2(50),
  department VARCHAR2(50),
  year NUMBER
);

2. Courses Table
CREATE TABLE Courses (
  course_id VARCHAR2(10) PRIMARY KEY,
  course_name VARCHAR2(100),
  credit NUMBER
);

 3. Results Table
CREATE TABLE Results (
  result_id NUMBER PRIMARY KEY,
  student_id NUMBER REFERENCES Students(student_id),
  course_id VARCHAR2(10) REFERENCES Courses(course_id),
  marks NUMBER,
  grade VARCHAR2(2)
);

-- Insert sample students
INSERT INTO Students VALUES (101, 'Akshaya', 'ECE', 4);
INSERT INTO Students VALUES (102, 'Ravi', 'CSE', 3);
INSERT INTO Students VALUES (103, 'Divya', 'ECE', 4);

-- Insert sample courses
INSERT INTO Courses VALUES ('EC101', 'Digital Electronics', 3);
INSERT INTO Courses VALUES ('CS101', 'Data Structures', 4);
INSERT INTO Courses VALUES ('EC102', 'Signal Processing', 3);

-- Insert sample results
INSERT INTO Results VALUES (1, 101, 'EC101', 86, 'A');
INSERT INTO Results VALUES (2, 101, 'CS101', 90, 'A+');
INSERT INTO Results VALUES (3, 102, 'CS101', 80, 'A');
INSERT INTO Results VALUES (4, 103, 'EC102', 75, 'B');

 Sample Queries

1. View all students and their results
SELECT s.name, c.course_name, r.marks, r.grade
FROM Students s
JOIN Results r ON s.student_id = r.student_id
JOIN Courses c ON r.course_id = c.course_id;

 2. Calculate average marks of each student
SELECT s.name, AVG(r.marks) AS average_marks
FROM Students s
JOIN Results r ON s.student_id = r.student_id
GROUP BY s.name;

