# 🏦 PostgreSQL & pgAdmin Employee Management Analysis

A practical, hands-on SQL project exploring data definition, manipulation, pattern matching, aggregate metrics, and conditional logic using **PostgreSQL** and **pgAdmin**.

---

## 📌 Project Overview

This repository demonstrates real-world database concepts built on a `Bank-Employees` dataset. It highlights core SQL techniques including database schema creation, constraint enforcement, data filtering, multi-level aggregation, and conditional classification.

---

## 🛠️ Tech Stack & Tools

* **Database Engine:** PostgreSQL
* **GUI Client:** pgAdmin 4
* **Language:** SQL

---

## 📁 Database Schema & Constraints

The project models an `employees` table with structural integrity constraints to maintain clean data:

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    age INT CHECK(age >= 18),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    joining_date DATE,
    joining_time TIME,
    email VARCHAR(100) UNIQUE
);
