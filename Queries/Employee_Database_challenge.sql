-- Part a for deliverable 1
select e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
into retirement_titles
from employees as e
inner join titles as t
on e.emp_no = t.emp_no
where (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;
-- Part b for deliverable 1
select distinct on (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
into unique_titles
from retirement_titles as rt
where rt.to_date=('9999-01-01')
order by rt.emp_no, rt.to_date DESC;
-- Part c for deliverable 1
select count(ut.title) as "count", ut.title
into retiring_titles
from unique_titles as ut
group by ut.title
order by "count" desc;
-- Mentorship eligibility table for mentorship program
select distinct on (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
into mentorship_eligibilty
from employees as e
inner join dept_emp as de
on (e.emp_no=de.emp_no)
inner join titles as t
on (e.emp_no=t.emp_no)
where de.to_date=('9999-01-01')
and (e.birth_date between '1965-01-01' and '1965-12-31')
order by e.emp_no

