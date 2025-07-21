-- Create tables
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    year INT
);

CREATE TABLE Courses (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(100),
    credit INT
);

CREATE TABLE Results (
    result_id INT PRIMARY KEY,
    student_id INT,
    course_id VARCHAR(10),
    marks INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert dummy data
INSERT INTO Students VALUES
(101, 'Akshaya', 'ECE', 4),
(102, 'Ravi', 'CSE', 3),
(103, 'Divya', 'ECE', 4);

INSERT INTO Courses VALUES
('EC101', 'Digital Electronics', 3),
('CS101', 'Data Structures', 4),
('EC102', 'Signal Processing', 3);

INSERT INTO Results VALUES
(1, 101, 'EC101', 86, 'A'),
(2, 101, 'CS101', 90, 'A+'),
(3, 102, 'CS101', 80, 'A'),
(4, 103, 'EC102', 75, 'B');

-- Sample query to show marks
SELECT s.name, c.course_name, r.marks, r.grade
FROM Students s
JOIN Results r ON s.student_id = r.student_id
JOIN Courses c ON c.course_id = r.course_id;
