1)Создать таблицу employees

 create table employees(
id serial primary key,
employee_name Varchar(50) not null
);

2)Наполнить таблицу employee 70 строками.  
INSERT INTO employees (employee_name)
VALUES
  ('Demetria Ramos'),
  ('Xantha Fields'),
  ('Libby Sweet'),
  ('Evangeline Rosa'),
  ('Marvin Reyes'),
  ('Demetria Payne'),
  ('Neville Cummings'),
  ('Tad Miller'),
  ('Briar Cooper'),
  ('Justine Vaughn'),
  ('Germaine Lamb'),
  ('Camden Barr'),
  ('Anne Faulkner'),
  ('Lewis Schneider'),
  ('Evangeline David'),
  ('Drake Blackwell'),
  ('Paki Nicholson'),
  ('Yolanda Ingram'),
  ('Adena Kent'),
  ('Philip Dudley'),
  ('Mikayla Rosales'),
  ('Harrison Sanders'),
  ('Yuli Guzman'),
  ('Avye Donovan'),
  ('Xanthus Mosley'),
  ('Benedict Knight'),
  ('Callie Reynolds'),
  ('Yuri Marshall'),
  ('Kay Wolf'),
  ('Emerson Herman'),
  ('Bell Mcdonald'),
  ('Iris Hudson'),
  ('Zeus Pope'),
  ('Morgan Bolton'),
  ('Oscar Schneider'),
  ('Ava Waters'),
  ('Castor England'),
  ('Jorden Paul'),
  ('Lisandra Dickson'),
  ('Leonard Gordon'),
  ('Lara Harding'),
  ('Dante Blackburn'),
  ('Phelan Hicks'),
  ('Mark Dorsey'),
  ('Cruz Lopez'),
  ('Byron Aguirre'),
  ('Latifah French'),
  ('Rana Warren'),
  ('Keely Wall'),
  ('Sonia Romero'),
  ('Knox Farrell'),
  ('Miranda Lynn'),
  ('Irma Cook'),
  ('Aiko Schwartz'),
  ('Emerald Herrera'),
  ('Len Franklin'),
  ('Remedios Blackburn'),
  ('Prescott Richards'),
  ('Serina Bullock'),
  ('Kevyn Wooten'),
  ('Cathleen Knowles'),
  ('Cain Savage'),
  ('Britanney Knowles'),
  ('Abraham Dillard'),
  ('Maisie Hutchinson'),
  ('Kieran Flores'),
  ('Lara Gibson'),
  ('Zoe Hayden'),
  ('Kristen Forbes'),
  ('Rhiannon Rhodes');

Таблица salary
3)Создать таблицу salary
create table salary
(id serial primary key,
monthly_salary int not null
);
4)Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values 
(1000),
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

Таблица employee_salary
5)	Создать таблицу employee_salary

create table employee_salary
(id serial primary key,
employee_id int not null unique,
salary_id int not null
);

6) Наполнить таблицу employee_salary 40 строками:
в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values
(2, 4),
(69, 11),
(70, 1),
(35, 2),
(41, 13),
(47, 1),
(12, 3),
(10, 7),
(57, 3),
(62, 10),
(31, 4),
(120, 7),
(42, 8),
(33, 12),
(45, 1),
(55, 9),
(71, 10),
(23, 9),
(134, 1),
(21, 7),
(39, 8),
(48, 12),
(77, 7),
(99, 9),
(111, 1),
(25, 11),
(7, 16),
(79, 1),
(11, 16),
(3, 10),
(17, 16),
(124, 1),
(180, 3),
(18, 8),
(63, 9),
(58, 13),
(54, 1);

Таблица roles
7)Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique

create table roles(
id serial primary key,
role_name INT not null UNIQUE
)

8)Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name TYPE varchar(30);

9)Наполнить таблицу roles 20 строками: -- insert into roles (role_name)
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
       ('Junior Automation QA engineerr'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

Таблица roles_employee

10)	Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
      id serial primary key,
      employee_id int not null unique references employees (id),
      role_id int not null references roles (id)


11)	Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
     values (7, 2),
            (20, 4),
            (3, 9),
            (5, 13),
            (23, 4),
            (11, 2),
            (10, 9),
            (22, 13),
            (21, 3),
            (34, 4),
            (6, 7),
            (69, 17),
            (13, 8),
            (27, 10),
            (66, 16),
            (14, 1),
            (51, 2),
            (58, 12),
            (31, 18),
            (70, 7),
            (42, 9),
            (9, 15),
            (28, 4),
            (37, 10),
            (63, 19),
            (17, 3),
            (15, 11),
            (26, 5),
            (33, 2),
            (47, 17),
            (68, 16),
            (59, 5),
            (29, 14),
            (38, 3),
            (24, 12),
            (30, 8),
            (44, 2),
            (19, 9),
            (65, 13),
            (67, 20);
