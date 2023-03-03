 
 -- Q1 
 
SELECT employees.emp_no, employees.last_name, employees.first_name , employees.sex , salaries.salary
from employees
JOIN salaries on 
employees.emp_no = salaries.emp_no;

-- Q2 

SELECT employees.first_name, employees.last_name, employees.sex, salaries.salary, hire_date
from employees
JOIN salaries on 
employees.emp_no = salaries.emp_no
where employees.hire_date >='01/01/1986' AND employees.hire_date <='12/31/1986';


-- Q3 


SELECT d.dept_no, d.dept_name ,e.emp_no, e.first_name, e.last_name
from departments d
join dept_manager dm on 
d.dept_no =dm.dept_no
JOIN employees e on 
dm.emp_no=e.emp_no;


-- Q4 

SELECT d.dept_no, d.dept_name ,e.emp_no, e.first_name, e.last_name
from departments d
join dept_emp de on 
d.dept_no =de.dept_no
JOIN employees e on 
de.emp_no=e.emp_no;


-- Q5 

SELECT employees.emp_no, employees.last_name, employees.first_name , employees.sex 
from employees
where employees.first_name ='Hercules'
AND employees.last_name like 'B%';

-- Q6 

SELECT e.emp_no, e.first_name, e.last_name
from departments d
join dept_emp de on 
d.dept_no =de.dept_no
JOIN employees e on 
de.emp_no=e.emp_no
where d.dept_name ='Sales';

-- Q7 

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
from departments d
join dept_emp de on 
d.dept_no =de.dept_no
JOIN employees e on 
de.emp_no=e.emp_no
where d.dept_name ='Sales'
OR d.dept_name ='Development' ;


-- Q8 

SELECT employees.last_name, COUNT(*) as "Frequency"
from employees
GROUP by employees.last_name
ORDER by count(*) desc;