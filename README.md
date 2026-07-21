# MIS-443---Business-Data-Management

## INTRODUCTION TO DATABASE
The School Database System is designed to efficiently manage academic and administrative data within an educational institution. It consists of four primary entities with structured relationships:
## 🗄️ 2. Data Dictionary

1. Schema Overview (4 Core Tables)

This repository contains the database DDL and design documentation for a relational **Student Management System** built with **PostgreSQL**.

```text
┌───────────────────────────┐           ┌───────────────────────────┐
│        departments        │           │         students          │
├───────────────────────────┤           ├───────────────────────────┤
│ department_id (PK)        │ ◄───────┐ │ student_id (PK)           │
│ department_name           │         └─┼─department_id (FK)        │
└───────────────────────────┘           │ student_name              │
                                        │ is_active                 │
                                        └─────────────┬─────────────┘
                                                      │
                                                      │ 1:N
┌───────────────────────────┐                         ▼
│          courses          │           ┌───────────────────────────┐
├───────────────────────────┤           │        enrollments        │
├───────────────────────────┤           ├───────────────────────────┤
│ course_id (PK)            │ ◄─────────┼─course_id (FK)            │
│ course_name               │    1:N    │ student_id (FK)           │
│ credits                   │           │ grade                     │
└───────────────────────────┘           └───────────────────────────┘
🗄️ 2. Data Dictionary🏢 1. Table: departments (Parent Table)Stores information about academic departments.Column NameData TypeConstraintsDescriptiondepartment_id 🔑INTEGERPRIMARY KEYUnique identifier for each departmentdepartment_nameVARCHAR(100)NOT NULLFull name of the department🎓 2. Table: students (Child Table)Stores student profiles and department links.Column NameData TypeConstraintsDescriptionstudent_id 🔑INTEGERPRIMARY KEYUnique identifier for each studentstudent_nameVARCHAR(100)NOT NULLFull name of the studentdepartment_id 🔗INTEGERREFERENCES departmentsForeign key to departmentsis_active ⚙️BOOLEANDEFAULT TRUEActive account status (TRUE/FALSE)📚 3. Table: coursesStores available courses in the curriculum.Column NameData TypeConstraintsDescriptioncourse_id 🔑INTEGERPRIMARY KEYUnique identifier for each coursecourse_nameVARCHAR(100)NOT NULLName of the coursecreditsINTEGERNOT NULLNumber of course credits📝 4. Table: enrollments (Junction Table)Manages student course registrations and grades (Many-to-Many relationship).Column NameData TypeConstraintsDescriptionenrollment_id 🔑INTEGERPRIMARY KEYUnique enrollment record IDstudent_id 🔗INTEGERREFERENCES studentsForeign key to studentscourse_id 🔗INTEGERREFERENCES coursesForeign key to coursesgradeNUMERIC(4,2)NULLFinal grade scor
