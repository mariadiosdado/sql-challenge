-- Drop tables if they exist 
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;

--Create new tables
CREATE TABLE employees (
  emp_no integer not null primary key,
  emp_title_id character varying(10) not null,
  birth_date character varying(20) not null,
  first_name character varying(45) not null, 
  last_name character varying(45) not null,
  sex character varying(50) not null,
  hire_date character varying(20) not null
);

CREATE TABLE titles (
  title_id character varying(10) not null primary key,
  title character varying(45) not null
);

CREATE TABLE salaries (
  emp_no integer not null,
  salary integer NOT null,
  constraint pk_salaries primary key (emp_no)
);

create table departments (
  dept_no character varying(10) not null primary key,
  dept_name character varying(25) not null
);

create table dept_emp (
	emp_no integer not null,
	dept_no character varying(10) not null,
	constraint pk_dept_emp primary key (emp_no, dept_no)
);

CREATE TABLE dept_manager (
  dept_no character varying(10) not null,
  emp_no integer not null,
  constraint pk_dept_manager primary key (dept_no, emp_no)
);

-- Alter tables to add foreign keys
alter table employees 
add foreign key (emp_title_id) references titles(title_id);

alter table salaries
add foreign key (emp_no) references employees(emp_no);

alter table dept_emp
add foreign key (emp_no) references employees(emp_no),
add foreign key (dept_no) references departments(dept_no);

alter table dept_manager 
add foreign key (emp_no) references employees(emp_no),
add foreign key (dept_no) references departments(dept_no);
