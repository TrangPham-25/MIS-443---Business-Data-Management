
```markdown
# MIS443 Assignment 4 – PostgreSQL Database Project: School Schema

## 📌 Student Information
* **Full Name:** PHAM THUY TRANG
* **Student ID:** 2332300158
* **Course:** MIS443 – Business Data Management
* **Database Engine:** PostgreSQL (pgAdmin 4)
* **Source Platform:** [SQL Practice Online - School Schema](https://www.sql-practice.online/practice/school?engine=postgresql)

---

## 📖 Project Overview
This project involves recreating and implementing the complete **School Database Schema** originally from SQL Practice Online using **PostgreSQL** and **pgAdmin 4**.

The project encompasses:
1. Designing the relational database schema, determining suitable data types, primary keys, foreign keys, and integrity constraints.
2. Generating executable SQL scripts for database initialization, table creation, and data population.
3. Preparing CSV data files for each table.
4. Solving and testing all **30 SQL practice questions** using PostgreSQL-compatible syntax.
5. Documenting the workflow, ERD, and project challenges in a comprehensive report.

---

## 🛠️ Required Tools & Technologies
* **Database Management System:** PostgreSQL 16+ / pgAdmin 4
* **Data Format:** CSV (Comma-Separated Values)
* **Documentation:** Microsoft Word
* **Version Control & Hosting:** Git & GitHub

---

## 📁 Repository Folder Structure

```text
MIS443_StudentID_School/
│
├── codes/
│   ├── 01_create_database.sql             # Script to create the database
│   ├── 02_create_tables_relationships.sql # Script to build tables, PKs, FKs, & constraints
│   ├── 03_insert_data.sql                 # Script to insert dataset into tables
│   └── 04_questions_01_30.sql             # SQL solutions for all 30 practice questions
│
├── data/                                  # Raw CSV dataset files with headers
│   ├── students.csv
│   ├── professors.csv
│   ├── courses.csv
│   └── enrollments.csv
│
├── report/
│   └── MIS443_StudentID_School_Report.docx # Comprehensive Word project report
│
└── README.md                              # Project documentation (this file)

```

---

## 🚀 Execution & Setup Instructions

To reproduce and run this database project locally using **pgAdmin 4**:

### Step 1: Database Creation

Open pgAdmin 4, launch the Query Tool on your server, and execute:

```sql
-- Run script: codes/01_create_database.sql
CREATE DATABASE "School";

```

### Step 2: Table & Relationship Setup

Connect to the newly created `School` database and run the table creation script:

* Execute: `codes/02_create_tables_relationships.sql`
*(Note: Tables are created in logical order to respect Foreign Key constraints).*

### Step 3: Data Insertion

Populate the database tables using either of the following methods:

* **Option A (SQL Script):** Execute `codes/03_insert_data.sql` directly.
* **Option B (CSV Import):** Use pgAdmin's **Import/Export** tool to import CSV files from the `data/` folder into their respective tables in the proper dependency order (`students` & `professors` first, then `courses`, followed by `enrollments`).

### Step 4: Run SQL Query Solutions

* Open `codes/04_questions_01_30.sql` in pgAdmin Query Tool to view and run solutions for Questions 1 through 30.

---

## 🔗 Project References & GitHub Repository

* **Original Practice Platform:** [SQL Practice Online - School](https://www.google.com/url?sa=E&source=gmail&q=https://www.sql-practice.online/practice/school?engine=postgresql)
* **GitHub Repository URL:** https://github.com/TrangPham-25/MIS-443---Business-Data-Management/new/main

```

---

