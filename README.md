# Broskies_Task1
# Library Database System

##  Project Overview
This project implements a relational database schema for a **Library Management System**. The database is designed using MySQL and follows normalization rules up to the **Third Normal Form (3NF)** to ensure data integrity, reduce redundancy, and improve query efficiency.

---

##  Features
- Organized storage of **Books**, **Authors**, **Publishers**, **Members**, and **Book Loans**.
- Many-to-many relationship between **Books** and **Authors** using a join table.
- Referential integrity through foreign keys.
- Normalized design to avoid data duplication and ensure consistency.

---

##  Project Structure
LibraryDatabase/
├── library.png # Entity Relationship Diagram
├── library.sql # SQL script to create database tables
├── Normalization_Report_Library.txt # Report explaining normalization steps (1NF, 2NF, 3NF)
├── README.md # Project overview and instructions

## 🛠 Tools Used
- **MySQL** – for creating and managing the database
- **MySQL Workbench** – for designing the ER diagram and reverse engineering
- **dbdiagram.io / Lucidchart** (optional) – for drawing and exporting the ER diagram
- **Microsoft Word / Google Docs / PDF editor** – for creating the normalization report

---

## 📑 Database Design

### Tables
- **Publishers** – stores publisher details.
- **Books** – stores book details and references publishers.
- **Authors** – stores author details.
- **BooksAuthors** – join table mapping books to authors.
- **Members** – stores library members.
- **BookLoans** – tracks which books are borrowed by which members.

### Relationships
- One publisher can publish many books.
- A book can have multiple authors.
- A member can borrow multiple books.
