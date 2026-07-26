/*
=========================================
MIS443 - Business Data Management
Assignment 2
Schema: E-Commerce
File: 04_questions_01_30.sql
=========================================
*/

/*1*/ SELECT * FROM students

/*2*/ 
SELECT first_name,last_name, graduation_year
FROM students
WHERE major = 'Computer Science';

/*3*/ 
SELECT course_name, credits
FROM courses
ORDER BY credits DESC;

/*4*/ 
SELECT first_name, last_name, major
FROM students
WHERE graduation_year = '2026';

/*5*/ 
SELECT COUNT(*) AS total_courses 
FROM courses

/*6*/ 
SELECT AVG (credits) AS average_credits
FROM courses;

 /*7*/
SELECT first_name, last_name, enrollment_date
FROM students
WHERE enrollment_date > '2022-12-31';

 /*8*/
SELECT first_name, last_name, hire_date
FROM professors
WHERE department = 'Computer Science';

 /*9*/
SELECT first_name, last_name, email, major
FROM students
WHERE email LIKE '%university.edu%'
ORDER BY last_name;

 /*10*/
SELECT p.first_name, p.last_name,p.department,c.course_name,c.credits
FROM professors p
JOIN courses c ON p.professor_id = c.professor_id
ORDER BY p.last_name, c.course_name;
