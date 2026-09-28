-- =====================================================
-- SQL AGGREGATE FUNCTIONS
-- =====================================================
-- Topics:
-- COUNT(), SUM(), AVG(), MAX(), MIN()
-- GROUP BY
-- HAVING
-- DISTINCT
-- =====================================================


-- =====================================================
-- 1. CREATE TABLE
-- =====================================================

CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    marks INT,
    city VARCHAR(50)
);


-- =====================================================
-- 2. INSERT SAMPLE DATA
-- =====================================================

INSERT INTO Students VALUES
(1, 'Sravani', 'CSE', 21, 85, 'Guntur'),
(2, 'Anjali', 'ECE', 20, 78, 'Bapatla'),
(3, 'Priya', 'CSE', 21, 92, 'Guntur'),
(4, 'Sneha', 'IT', 22, 88, 'Vijayawada'),
(5, 'Divya', 'CSE', 20, 75, 'Guntur'),
(6, 'Keerthi', 'ECE', 21, 81, 'Bapatla'),
(7, 'Harika', 'IT', 22, 95, 'Vijayawada'),
(8, 'Pooja', 'CSE', 21, 89, 'Guntur');


-- =====================================================
-- 3. COUNT()
-- Count the total number of students
-- =====================================================

SELECT COUNT(*) AS total_students
FROM Students;


-- Count students whose marks are available

SELECT COUNT(marks) AS students_with_marks
FROM Students;


-- =====================================================
-- 4. SUM()
-- Calculate total marks
-- =====================================================

SELECT SUM(marks) AS total_marks
FROM Students;


-- =====================================================
-- 5. AVG()
-- Calculate average marks
-- =====================================================

SELECT AVG(marks) AS average_marks
FROM Students;


-- =====================================================
-- 6. MAX()
-- Find the highest marks
-- =====================================================

SELECT MAX(marks) AS highest_marks
FROM Students;


-- =====================================================
-- 7. MIN()
-- Find the lowest marks
-- =====================================================

SELECT MIN(marks) AS lowest_marks
FROM Students;


-- =====================================================
-- 8. Multiple Aggregate Functions
-- =====================================================

SELECT
    COUNT(*) AS total_students,
    SUM(marks) AS total_marks,
    AVG(marks) AS average_marks,
    MAX(marks) AS highest_marks,
    MIN(marks) AS lowest_marks
FROM Students;


-- =====================================================
-- 9. GROUP BY
-- Count students in each department
-- =====================================================

SELECT
    department,
    COUNT(*) AS student_count
FROM Students
GROUP BY department;


-- =====================================================
-- 10. GROUP BY + AVG()
-- Find average marks of each department
-- =====================================================

SELECT
    department,
    AVG(marks) AS average_marks
FROM Students
GROUP BY department;


-- =====================================================
-- 11. GROUP BY + MAX()
-- Find highest marks in each department
-- =====================================================

SELECT
    department,
    MAX(marks) AS highest_marks
FROM Students
GROUP BY department;


-- =====================================================
-- 12. GROUP BY + MIN()
-- Find lowest marks in each department
-- =====================================================

SELECT
    department,
    MIN(marks) AS lowest_marks
FROM Students
GROUP BY department;


-- =====================================================
-- 13. GROUP BY + SUM()
-- Find total marks for each department
-- =====================================================

SELECT
    department,
    SUM(marks) AS total_marks
FROM Students
GROUP BY department;


-- =====================================================
-- 14. GROUP BY + Multiple Functions
-- =====================================================

SELECT
    department,
    COUNT(*) AS total_students,
    AVG(marks) AS average_marks,
    MAX(marks) AS highest_marks,
    MIN(marks) AS lowest_marks
FROM Students
GROUP BY department;


-- =====================================================
-- 15. HAVING
-- Departments with average marks greater than 80
-- =====================================================

SELECT
    department,
    AVG(marks) AS average_marks
FROM Students
GROUP BY department
HAVING AVG(marks) > 80;


-- =====================================================
-- 16. HAVING with COUNT()
-- Departments having more than 2 students
-- =====================================================

SELECT
    department,
    COUNT(*) AS student_count
FROM Students
GROUP BY department
HAVING COUNT(*) > 2;


-- =====================================================
-- 17. DISTINCT
-- Find the number of different departments
-- =====================================================

SELECT COUNT(DISTINCT department) AS total_departments
FROM Students;


-- =====================================================
-- 18. GROUP BY CITY
-- Count students from each city
-- =====================================================

SELECT
    city,
    COUNT(*) AS student_count
FROM Students
GROUP BY city;


-- =====================================================
-- 19. Average marks by city
-- =====================================================

SELECT
    city,
    AVG(marks) AS average_marks
FROM Students
GROUP BY city;


-- =====================================================
-- 20. Advanced Aggregate Query
-- Departments with:
-- Average marks above 80
-- AND at least 2 students
-- =====================================================

SELECT
    department,
    COUNT(*) AS student_count,
    AVG(marks) AS average_marks
FROM Students
GROUP BY department
HAVING AVG(marks) > 80
   AND COUNT(*) >= 2;


-- =====================================================
-- END OF AGGREGATE FUNCTIONS PRACTICE
-- =====================================================
