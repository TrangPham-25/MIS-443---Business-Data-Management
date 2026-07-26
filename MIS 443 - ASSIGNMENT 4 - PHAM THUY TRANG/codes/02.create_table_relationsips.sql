/*
=========================================
MIS443 - Business Data Management
Assignment 2
Schema: School
File: 02_create_tables_relationships.sql

Purpose:
Create all tables, primary keys,
foreign keys and relationships.
=========================================
*/

-- ======================================
-- TABLE 1 : students
-- ======================================

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrollment_date DATE NOT NULL,
    graduation_year INT,
    major VARCHAR(100)
);

-- ======================================
-- TABLE 2 : professors
-- ======================================
CREATE TABLE professors (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL
);

-- ======================================
-- TABLE 3 : crouses
-- ======================================
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

-- ======================================
-- TABLE 4 : enrollments
-- ======================================
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