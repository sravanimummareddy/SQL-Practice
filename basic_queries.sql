-- SQL Basic Queries
-- Day 2 GitHub Practice

CREATE TABLE Students (
    id INT,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Sravani', 21, 'CSE', 85),
(2, 'Anjali', 20, 'ECE', 78),
(3, 'Priya', 21, 'CSE', 92),
(4, 'Sneha', 22, 'IT', 88),
(5, 'Divya', 20, 'CSE', 75);

-- Display all students
SELECT * FROM Students;

-- Display only names and marks
SELECT name, marks
FROM Students;

-- Students with marks greater than 80
SELECT *
FROM Students
WHERE marks > 80;

-- Students from CSE department
SELECT *
FROM Students
WHERE department = 'CSE';

-- Sort students by marks
SELECT *
FROM Students
ORDER BY marks DESC;
