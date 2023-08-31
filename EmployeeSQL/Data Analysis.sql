--Data Analysis
-- List the employee number, last name, first name, sex, and salary of each employee

/*select * from employees e;
select * from salaries s; */

select employees.emp_no, employees.last_name, employees.first_name, employees.sex,
	salaries.salary
from employees
full join salaries on employees.emp_no = salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
select * from employees;

select first_name, last_name, hire_date
from employees e
where hire_date between '1986-01-01' and '1986-12-01'; 

--List the manager of each department along with their department number, department name, employee number, last name, and first name
select dm.dept_no, d.dept_name, 
	e.emp_no, e.last_name, e.first_name
from employees e 
inner join dept_manager dm
on e.emp_no = dm.emp_no
inner join departments d on d.dept_no = dm.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select e.first_name, e.last_name, e.emp_no, 
	de.dept_no, d.dept_name
from employees e
inner join dept_emp de 
on e.emp_no = de.emp_no 
inner join departments d on d.dept_no = de.dept_no
order by e.emp_no ;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees e 
where first_name = 'Hercules' and last_name like 'B%' ;

--List each employee in the Sales department, including their employee number, last name, and first name 
-- Sales department : dept_no = d007
select e.emp_no, e.last_name, e.first_name,
	d.dept_name 
from employees e 
inner join dept_emp de on e.emp_no = de.emp_no 
inner join departments d on d.dept_no = de.dept_no 
where de.dept_no = 'd007'
order by emp_no ;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name,
	d.dept_name 
from employees e 
inner join dept_emp de on e.emp_no = de.emp_no 
inner join departments d on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name
select last_name, count(last_name) as frequency
from employees e 
group by last_name 
order by frequency desc;
