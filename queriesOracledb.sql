-- 1 - Cidades com departamentos
select distinct city from departments
join locations
on locations.location_id = departments.location_id;

-- 2 - Empregados com mudanças de empregos
select employees.first_name, count(*) as ocorrencias from job_history
join employees
on employees.employee_id = job_history.employee_id
group by employees.first_name
order by ocorrencias desc;

-- 3 - Conteudo geral da BD
select *  from employees 
join departments on departments.department_id = employees.department_id 
join job_history on job_history.job_id = employees.job_id 
join jobs on jobs.job_id = employees.job_id 
join locations on locations.location_id = departments.location_id 
join countries on countries.country_id = locations.country_id 
join regions on regions.region_id = countries.region_id;

-- 4 - Empregados que iniciam com a letra J
select * from employees
where first_name like 'J%';

-- 5 - Listar os presidentes
select employees.first_name as "Name", employees.hire_date as "HireDate", employees.salary as "Salary" from employees
join jobs
on jobs.job_id = employees.job_id 
where jobs.job_title = 'President';

-- 6 - Top 5 bem pagos
select * from employees
order by salary desc
FETCH FIRST 5 ROWS ONLY;
