--Создать таблицу employees id. serial,  primary key, employee_name. Varchar(50), not null 
create table employees(
	id serial primary key,
	employees_name varchar (50) unique not null);
	
select * from employees;
--Наполнить таблицу employee 70 строками.
insert into employees(employees_name)
values ('Susan Jones'),
('Mary Morales'),
('Karl Copeland'),
('Carl Hall'),
('Janice Williams'),
('Delores Jordan'),
('Mary Johnson'),
('Ellen Murphy'),
('Ann Johnson'),
('Michael Fox'),
('David Hudso'),
('Donald Evans'),
('Loretta Bell'),
('Frank Rose'),
('Robert Schwartz'),
('Carrie Allen'),
('Paul Freeman'),
('Ashley Goodman'),
('Gloria Wong'),
('Larry Freeman'),
('Jessica Norman'),
('Jacqueline Sandoval'),
('Karen Clark'),
('Bessie Pearson'),
('Amanda Davis'),
('Teresa Johnson'),
('Patricia Keller'),
('Bruce Rhodes'),
('Maria Anderson'),
('Jeffery Clarke'),
('Harry Vaughn'),
('Joseph King'),
('Eva Holland'),
('Lori Larson'),
('Robert Taylor'),
('Linda Davis'),
('Virginia Stewart'),
('Frank Davis'),
('Harold Smith'),
('Jamie Rice'),
('Carlos Smith'),
('David Scott'),
('Elizabeth Brown'),
('Nancy Bryant'),
('Patricia Mills'),
('Christina Sanchez'),
('Margaret Bell'),
('Julia Richardson'),
('Ricardo Abbott'),
('Mark Brown'),
('Matthew Robinson'),
('Carolyn Wood'),
('Edward Moore'),
('Donald Delgado'),
('Richard Santiago'),
('Mike Webb'),
('Arlene McLaughlin'),
('Kevin Sullivan'),
('Katherine Taylor'),
('Michael Butler'),
('Ryan Burke'),
('Clara Sanders'),
('Kristin Harris'),
('Anthony Johnson'),
('Shirley Ward'),
('Marsha Gibbs'),
('Larry Carter'),
('Frank Klein'),
('Richard Young'),
('Irma Rice');

select * from employees;

--Создать таблицу salary id. Serial  primary key, monthly_salary. Int, not null 
create table salary(
	id serial primary key,
	monthly_salary int not null);

select * from salary;
--Наполнить таблицу salary 15 строками
insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary;

--Создать таблицу employee_salary id. Serial  primary key, employee_id. Int, not null, unique salary_id. Int, not null 
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null);
	
select * from employee_salary;
--Наполнить таблицу employee_salary 40 строками в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values (2, 15),
(3, 14),
(4, 13),
(5, 12),
(6, 11),
(7, 10),
(8, 9),
(9, 8),
(10, 7),
(11, 6),
(12, 5),
(13, 4),
(14, 3),
(15, 2),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5),
(21, 6),
(22, 7),
(23, 8),
(24, 9),
(25, 10),
(26, 11),
(27, 12),
(28, 13),
(29, 14),
(30, 15),
(1, 15),
(71, 10),
(72, 9),
(73, 8),
(74, 7),
(75, 6),
(76, 5),
(77, 4),
(78, 3),
(79, 2),
(80, 1);

select * from employee_salary;
--Создать таблицу roles id. Serial  primary key, role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int unique not null);

select * from roles;
--Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name TYPE varchar (30);
--Наполнить таблицу roles 20 строками
insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;
--Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);

select * from roles_employee;
--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values (2, 15),
(3, 14),
(4, 13),
(5, 12),
(6, 11),
(7, 10),
(8, 9),
(9, 8),
(10, 7),
(11, 6),
(12, 5),
(13, 4),
(14, 3),
(15, 2),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5),
(21, 6),
(22, 7),
(23, 8),
(24, 9),
(25, 10),
(26, 11),
(27, 12),
(28, 13),
(29, 14),
(30, 15),
(1, 15),
(31, 10),
(32, 9),
(33, 8),
(34, 7),
(35, 6),
(36, 5),
(37, 4),
(38, 3),
(39, 2),
(40, 1);

select * from roles_employee;