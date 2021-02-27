--Generate from ERD
-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS Departments
(
    dept_no VARCHAR(10) NOT NULL UNIQUE,
    dept_name VARCHAR(50),
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS Dept_Emp
(
    id SERIAL PRIMARY KEY
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(10) NOT NULL    
);

CREATE TABLE IF NOT EXISTS Dept_Mgr
(
    dept_emp VARCHAR(20) NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY(dept_emp)
);

CREATE TABLE IF NOT EXISTS Employees
(
    emp_no INTEGER NOT NULL UNIQUE,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(2),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS Salaries
(
    emp_no INTEGER NOT NULL UNIQUE,
    salary INTEGER,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS Titles
(
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(50),
    PRIMARY KEY(title_id)
);


-- Create FKs
ALTER TABLE Employees
    ADD    FOREIGN KEY (emp_title_id)
    REFERENCES Titles(title_id)
    MATCH SIMPLE
;
    
ALTER TABLE Employees
    ADD    FOREIGN KEY (emp_no)
    REFERENCES Salaries(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE Dept_Emp
    ADD    FOREIGN KEY (emp_no)
    REFERENCES Employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE Dept_Mgr
    ADD    FOREIGN KEY (emp_no)
    REFERENCES Employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE Dept_Emp
    ADD    FOREIGN KEY (dept_no)
    REFERENCES Departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE Dept_Mgr
    ADD    FOREIGN KEY (dept_no)
    REFERENCES Departments(dept_no)
    MATCH SIMPLE
;
    

-- Create Indexes





--Easily drop tables as needed
--Drop Table Departments CASCADE;
--Drop Table Dept_Emp;
--Drop Table Dept_Mgr;
--Drop Table Employees;
--Drop Table Salaries;
--Drop Table Titles;


--IMPORT IN ORDER
--from pgAdmin import Salaries from data\salaries.csv
--from pgAdmin import Titles from data\titles.csv
--from pgAdmin import Employees from data\employees.csv
--from pgAdmin import Departments from data\departments_cleaned.csv
--from pgAdmin import Dept_Emp from data\dept_emp.csv (omits 'id' [primary serial key] on import process)
--from pgAdmin import Dept_Mgr from data\dept_manager.csv


