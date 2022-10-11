-- retirement eligibility
select first_name, last_name
from employees
where (birth_date between '1952-01-01' and '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- No of employees retiring
select count(first_name)
from employees
where (birth_date between '1952-01-01' and '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- creating another table from the results
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- check the table
select * from retirement_info

-- Joining departments and dept_manager tables
Select d.dept_name, dm.emp_no, dm.from_date, dm.to_date
from departments as d inner join dept_manager as dm ON dm.dept_no = d.dept_no

-- Joining retirement_info and dept_emp tables ad also sourcing only current employees
select ri.emp_no,
ri.first_name,
ri.last_name,
de.to_date
into current_emp
from retirement_info as ri 
left join dept_emp as de 
on de.emp_no = ri.emp_no
where de.to_date=('9999-01-01')

-- Employee count by department number (Employee information)
select count(ce.emp_no), de.dept_no
from current_emp as ce
left join dept_emp as de
on ce.emp_no = de.emp_no
group by de.dept_no
order by de.dept_no;

--Management (7.3.5)
SELECT emp_no,
first_name,
last_name,
gender
INTO emp_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
--Department retirees (7.3.5)
select ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
into dept_info
from current_emp as ce
inner join dept_emp as de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

--employees retiring from sales only
select ri.emp_no,
ri.first_name,
ri.last_name,
d.dept_name
from dept_emp as de
inner join retirement_info as ri
on (ri.emp_no=de.emp_no)
inner join departments as d
on (d.dept_no = de.dept_no)
where d.dept_name=('Sales')
-- Employees in Sales and Development dept 
select ri.emp_no,
ri.first_name,
ri.last_name,
d.dept_name
from dept_emp as de
inner join retirement_info as ri
on (ri.emp_no=de.emp_no)
inner join departments as d
on (d.dept_no = de.dept_no)
where d.dept_name in ('Sales', 'Development')
