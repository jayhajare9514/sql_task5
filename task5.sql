select * from employees
select * from departments


SELECT e.emp_name, d.dept_name 
FROM employees e, departments d 
WHERE e.dept_id = d.id

SELECT e.emp_name, d.dept_name
FROM employees as e
LEFT JOIN departments as d
ON (e.dept_id = d.id)

SELECT e.emp_name, d.dept_name
FROM employees as  e
RIGHT JOIN departments  as d
ON (e.dept_id = d.id)

select * from employees
full join departments
on emplyoees.id = departments.id

------------------inner join
select e.id,e.emp_name,e.salary,e.dept_id,e.manager_id,d.id,d.dept_name from  employees as e
inner join departments as d
on e.id = d.id

select e.id,e.emp_name,sum(e.salary),e.dept_id,e.manager_id,d.dept_name from  employees as e
inner join departments as d
on e.id = d.id
group by e.id,e.emp_name,e.salary,e.dept_id,e.manager_id,d.dept_name
having sum(e.salary) >= 40000
limit 3

-------------------------- left join

select * from employees
left join departments
on employees.id = departments.id


select e.id,e.emp_name,avg(e.salary),e.dept_id,e.manager_id,d.dept_name from  employees as e
left join departments as d
on e.id = d.id
group by e.id,e.emp_name,e.salary,e.dept_id,e.manager_id,d.dept_name
having sum(e.salary) >= 20000
order by avg(e.salary)
limit 5


---------------------- right join
	
select * from departments
right join employees
on departments.id = employees.id

select * from employees
right join departments
on employees.id=departments.id


select e.id,e.emp_name,e.salary,e.dept_id,avg(e.manager_id),d.dept_name from  employees as e
right join departments as d
on e.id = d.id
group by e.id,e.emp_name,e.salary,e.dept_id,e.manager_id,d.dept_name
having sum(e.manager_id) >= 21
order by avg(e.manager_id)
limit 5


---------------- full join

select * from employees
full join departments
on employees.id = departments.id

select e.id,e.emp_name,sum(e.salary),e.dept_id,avg(e.manager_id),d.dept_name from  employees as e
full join departments as d
on e.id = d.id
group by e.id,e.emp_name,e.salary,e.dept_id,e.manager_id,d.dept_name
having sum(e.salary) >= 10000
order by avg(e.manager_id)
limit 5


	

