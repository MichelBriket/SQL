select * from employee_salary;
select * from employees;
select * from roles;
select * from roles_employee;
select * from salary;
--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id;
--2. Вывести всех работников у которых ЗП меньше 2000.
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2000;
--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
right join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
where employees_name IS null;
--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
right join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
where employees_name IS null and monthly_salary < 2000;
--5. Найти всех работников кому не начислена ЗП.(ВСЕМ НАЧИСЛЕНА)
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
where salary.monthly_salary is null;
--6. Вывести всех работников с названиями их должности.
select employees.id, employees.employees_name, roles.id, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id;
--7. Вывести имена и должность только Java разработчиков.
select employees.id, employees.employees_name, roles.id, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Java developer';
--8. Вывести имена и должность только Python разработчиков.
select employees.id, employees.employees_name, roles.id, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Python developer';
--9. Вывести имена и должность всех QA инженеров.(ЕСЛИ БУДУТ АВТОМАТИЗАТОРЫ ТО ВЫВЕДЕТ ИХ ТОЖЕ)
select employees.id, employees.employees_name, roles.id, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%QA engineer';
--10. Вывести имена и должность ручных QA инженеров.
select employees.id, employees.employees_name, roles.id, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Manual QA engineer';
--11. Вывести имена и должность автоматизаторов QA
select employees.id, employees.employees_name, roles.id, roles.role_name from employees
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Automation QA engineer';
--12. Вывести имена и зарплаты Junior специалистов
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Junior%';
--13. Вывести имена и зарплаты Middle специалистов
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Middle%';
--14. Вывести имена и зарплаты Senior специалистов
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Senior%';
--15. Вывести зарплаты Java разработчиков
select salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Java developer';
--16. Вывести зарплаты Python разработчиков
select salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Python developer';
-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Junior Python developer';
--18. Вывести имена и зарплаты Middle JS разработчиков
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Middle JavaScript developer';
--19. Вывести имена и зарплаты Senior Java разработчиков
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like 'Senior Java developer';
--20. Вывести зарплаты Junior QA инженеров
select employees.id, employees.employees_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like 'Junior %% QA engineer';
--21. Вывести среднюю зарплату всех Junior специалистов
select AVG(monthly_salary) from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like 'Junior%';
--22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%JavaScript developer';
--23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%QA engineer';
--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%QA engineer';
--25. Вывести количество QA инженеров
select count(employees_name)
from employees 
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';
--26. Вывести количество Middle специалистов.
select count(employees_name)
from employees 
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%Middle%';
--27. Вывести количество разработчиков
select count(employees_name)
from employees 
join roles_employee 
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%developer';
--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where role_name like '%developer';
--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.id, employees.employees_name, roles.id, roles.role_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
order by monthly_salary;
--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.id, employees.employees_name, roles.id, roles.role_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where monthly_salary between 1700 and 2300
order by monthly_salary;
--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.id, employees.employees_name, roles.id, roles.role_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where monthly_salary < 2300
order by monthly_salary;
--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.id, employees.employees_name, roles.id, roles.role_name, salary.id, salary.monthly_salary from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary
on salary.id = employee_salary.salary_id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles.id = roles_employee.role_id
where monthly_salary in ('1100', '1500', '2000')
order by monthly_salary;