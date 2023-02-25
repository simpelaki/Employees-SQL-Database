-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Departments" (
    "dept_no" varchar(10)   NOT NULL,
    "dept_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_Emp" (
    "dept_no" varchar(10),
    "emp_no" varchar(50)
    
);

CREATE TABLE "Dept_manager" (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "Titles" (
    "title_id" varchar(6)   NOT NULL,
    "title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

-- Table documentation comment 1 (try the PDF/RTF export)
-- Table documentation comment 2
CREATE TABLE "Employees" (
    "emp_no" varchar(50)    NOT NULL,
    -- Field documentation comment 1
    -- Field documentation comment 2
    -- Field documentation comment 3
    "emp_title_id" varchar(50),
    "birth_date" date,
    "first_name" varchar(50),
    "last_name" varchar(50),
    "sex" varchar(15),
    "hire_date" date,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" varchar(50)   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

SELECT * FROM
public."Departments"

SELECT * FROM
public."Dept_Emp"

SELECT * FROM
public."Employees"

SELECT *FROM
public."Titles"

SELECT * FROM
public."Salaries"


CREATE TABLE "Employees" (
    "emp_no" varchar(50),
    "emp_title_id" varchar(50),
    "birth_date" date,
    "first_name" varchar(50),
    "last_name" varchar(50),
    "sex" varchar (10),
    "hire_date" date 
    
);