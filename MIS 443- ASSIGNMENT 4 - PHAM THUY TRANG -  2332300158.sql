--MIS 443 - ASSIGNMENT 4 - PHAM THUY TRANG - 2332300158--

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrollment_date DATE NOT NULL,
    graduation_year INT,
    major VARCHAR(100)
);

CREATE TABLE professors (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE courses (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    department VARCHAR(100) NOT NULL,
    professor_id INT,
    CONSTRAINT fk_courses_professors 
        FOREIGN KEY (professor_id) 
        REFERENCES professors(professor_id) 
        ON DELETE SET NULL
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id VARCHAR(10) NOT NULL,
    semester VARCHAR(20) NOT NULL,
    year INT NOT NULL,
    grade VARCHAR(5),
    CONSTRAINT fk_enrollments_students 
        FOREIGN KEY (student_id) 
        REFERENCES students(student_id) 
        ON DELETE CASCADE,
    CONSTRAINT fk_enrollments_courses 
        FOREIGN KEY (course_id) 
        REFERENCES courses(course_id) 
        ON DELETE CASCADE
);

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



