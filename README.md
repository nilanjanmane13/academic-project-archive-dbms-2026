
# Academic Project Archive System

A MySQL-based Database Management System (DBMS) project designed to organize and manage academic projects, students, teams, guides, technologies, competitions, documents, and reviews.

## 📌 Project Overview

The Academic Project Archive System provides a structured way to store and retrieve information about academic projects. It organizes project details and their relationships with students, teams, technologies, competitions, guides, and reviews in a relational database.

This project demonstrates practical applications of SQL, relational database design, data integrity, and database querying using MySQL Server and MySQL Workbench.

## 🎯 Objectives

- Design a relational database for managing academic projects.
- Store and organize project and student information.
- Maintain relationships between projects, teams, guides, and technologies.
- Record competition participation, project documents, and reviews.
- Retrieve project information using SQL queries and filtering conditions.
- Generate useful summaries and reports from stored data.
- Apply database concepts such as primary keys, foreign keys, constraints, joins, and aggregate functions.

## 🛠️ Technologies Used

- **Database:** MySQL
- **Database Management Tool:** MySQL Workbench
- **Query Language:** SQL

## 🗄️ Database Structure

The database is named `project_archive` and contains 14 tables representing the main entities and relationships in the system.

| Table | Purpose |
|---|---|
| `PROJECT` | Stores academic project information. |
| `STUDENT` | Stores student information. |
| `TEAM` | Stores project team details. |
| `DOMAIN` | Organizes projects by domain. |
| `GUIDE` | Stores project guide information. |
| `TECHNOLOGY` | Stores technologies associated with projects. |
| `COMPETITION` | Stores competition information. |
| `DOCUMENT` | Stores project document details. |
| `REVIEW` | Stores project reviews and ratings. |
| `MEMBER_OF` | Represents team membership relationships. |
| `WORKS_ON` | Represents student and project work relationships. |
| `USES` | Represents project and technology relationships. |
| `PARTICIPATES_IN` | Represents project participation in competitions. |
| `PROJECT_OUTPUT` | Stores project output information. |

The database uses related tables to organize information and represent relationships between entities.

## ✨ Key Features

- Structured storage of academic project information.
- Student and team relationship management.
- Project categorization by domain.
- Tracking of technologies used in projects.
- Competition participation records.
- Storage of project documents and outputs.
- Project reviews and ratings.
- SQL-based project retrieval and filtering.
- Queries for retrieving useful information and generating reports.

## 📂 Project Files

| File | Description |
|---|---|
| `01_schema.sql` | Contains database schema and table creation statements. |
| `02_sample_data.sql` | Contains sample records for populating the database. |
| `03_queries.sql` | Contains SQL queries for database operations and information retrieval. |
| `04_Project_Retrieval_and_Reports.sql` | Contains project retrieval and reporting queries. |
| `README.md` | Provides project documentation and setup instructions. |

## 🚀 How to Run the Project

### Prerequisites

- MySQL Server installed and running.
- MySQL Workbench installed.
- Basic knowledge of executing SQL scripts.

### Execution Steps

1. Clone or download this repository.
2. Open MySQL Workbench and connect to your MySQL Server.
3. Open `01_schema.sql` and review the database creation, table definitions, and any subsequent schema modifications.
4. Execute the schema script to create the required database structure.
5. Open `02_sample_data.sql` and execute it to insert the sample records.
6. Open `03_queries.sql` and execute the required queries.
7. Open `04_Project_Retrieval_and_Reports.sql` and execute the project retrieval and reporting queries.

**Important:** Review each SQL script before execution. Some statements may modify existing data or database structures. Test the scripts on a separate development database before rerunning them.

If a script depends on a table or column created by another script, ensure that the required structure exists before executing it.

## 📚 DBMS Concepts Demonstrated

This project demonstrates practical database concepts, including:

- Relational database design.
- Tables, attributes, and relationships.
- Primary keys and foreign keys.
- Data integrity constraints.
- SQL data definition and manipulation.
- Data retrieval using `SELECT`.
- Filtering and sorting using `WHERE` and `ORDER BY`.
- Joining related tables.
- Aggregate functions and grouped results.
- Project retrieval and report generation.

The exact SQL features available depend on the statements implemented in the project scripts.

## 🎓 Learning Outcomes

Through this project, we gain practical experience in:

- Designing a relational database for a real-world academic use case.
- Organizing data across multiple related tables.
- Writing SQL queries to retrieve and analyze information.
- Understanding relationships and maintaining data integrity.
- Using MySQL Workbench to create, manage, and query a database.
- Documenting and maintaining a database project using GitHub.

## 🔮 Future Enhancements

Possible future improvements include:

- A web-based interface for project submission and browsing.
- Advanced project search by domain, technology, and status.
- User authentication and role-based access.
- Automated project approval and review workflows.
- Dashboard reports and visual analytics.
- Document upload and download functionality.

## 📝 Conclusion

The Academic Project Archive System demonstrates how MySQL and relational database concepts can be used to organize academic project information efficiently. By connecting projects with students, teams, guides, technologies, competitions, documents, and reviews, the system provides a structured foundation for storing and retrieving academic project records.

The project strengthens practical understanding of database design, SQL querying, relational relationships, and data management.


**Project Type:** DBMS Mini Project  
**Database:** MySQL  
**Tools:** MySQL Server and MySQL Workbench
