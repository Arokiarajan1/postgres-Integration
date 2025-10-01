select table_schema, table_name
from information_schema.tables
where table_schema = 'public'

select * from orders;

select * from employee;
ALTER TABLE employees RENAME TO employee;

create table employee 
(
empid Varchar(10),
empname varchar(10),
dept varchar(10),
depid integer,
City char(10),
DOJ Date,
DOB Date);

select * from employee;

drop table if exists employee;

-- Create table
CREATE TABLE student (
    ROLLNO INT,
    SAPID VARCHAR(10),
    NAME VARCHAR(50),
    CITY VARCHAR(50)
);

INSERT INTO student (ROLLNO, SAPID, NAME, CITY) VALUES
(1, 'S01', 'Ajay Kumar Sharma', 'Ghaziabad'),
(2, 'S02', 'Chetan', 'Delhi'),
(3, 'S03', 'Rakesh', 'Haldwani'),
(4, 'S04', 'Jagdish', 'Dehradun'),
(5, 'S05', 'Archana', 'Sitapur');

select * from student
where rollno >=3;

commit;

ROLLBACK TO savepoint_name;

select * from employee

Alter table employee
add salary integer;


select * from employee;
INSERT INTO employee (salary)
VALUES 
  (1000),
  (2000),
  (3000),
  (4000),
  (5000),
  (7000);

delete from employee;
INSERT INTO employee (employeeid, firstname, lastname, email, salary)
VALUES
  (1, 'John',   'Doe',       'john.doe@example.com',        5000),
  (2, 'Jane',   'Smith',     'jane.smith@example.com',      6200),
  (3, 'Alice',  'Johnson',   'alice.johnson@example.com',   7000),
  (4, 'Bob',    'Williams',  'bob.williams@example.com',    4800),
  (5, 'Charlie','Brown',     'charlie.brown@example.com',   5500),
  (6, 'David',  'Miller',    'david.miller@example.com',    6000),
  (7, 'Emily',  'Davis',     'emily.davis@example.com',     5800),
  (8, 'Frank',  'Wilson',    'frank.wilson@example.com',    6400),
  (9, 'Grace',  'Taylor',    'grace.taylor@example.com',    5300),
  (10,'Henry',  'Anderson',  'henry.anderson@example.com',  7200);

select * from employee;
add column rating numeric(3,1);

Truncate table employee;
drop table employee;
CREATE TABLE employee (
    empid INT PRIMARY KEY,
    empname VARCHAR(50),
    dept VARCHAR(50),
    deptid INT,
    doj DATE,
    dob DATE,
    deptno INT
);

INSERT INTO employee (empid, empname, dept, deptid, doj, dob, deptno)
VALUES
    (1, 'Jagdish', 'CSE', 11, '2013-06-15', '1976-01-11', 1101),
    (2, 'Alex', 'CSE', 11, '2013-06-15', '1972-04-13', 1101),
    (3, 'Mohit', 'CSE', 11, '2013-07-11', '1981-01-10', 1101),
    (4, 'Piyush', 'CSE', 11, '2015-06-14', '1986-04-11', 1101),
    (5, 'Vivek', 'CSE', 11, '2016-06-12', '1989-05-05', 1101),
    (6, 'Kriti', 'CSE', 11, '2018-06-01', '1996-05-11', 1101),
    (7, 'Manisha', 'CSE', 11, '2019-09-15', '1966-01-11', 1101),
    (8, 'Parisha', 'CSE', 11, '2021-08-13', '1999-01-11', 1101);


delete from employee where empid = 6;
select * from employee;

update employee 
set empname = 'parisha Patni' where empid = 8

INSERT INTO employee (empid, empname, dept, deptid, doj, dob, deptno)
VALUES (6, 'Kriti', 'CSE', 11, '2018-06-01', '1996-05-11', 1101)

select * from employee order by empid asc

create table newemployee
(
Empid varchar(10),
Empname varchar(10),
Dept varchar(10),
Deptid integer,
City varchar(10),
DOJ Date
);

drop table newemployee
select * from newemployee
CREATE TABLE newemployee (
  Empid VARCHAR(10),
  Empname VARCHAR(50),
  Dept VARCHAR(10),
  Deptid VARCHAR(10),
  DOJ DATE,
  DOB DATE,
  DeptNo INTEGER
);

INSERT INTO newemployee (Empid, Empname, Dept, Deptid, DOJ, DOB, DeptNo) VALUES
('1', 'Jagdish', 'CSE', '11', '2013-06-15', '1976-01-11', 1101),
('2', 'Alex', 'CSE', '11', '2013-06-15', '1972-04-13', 1101),
('3', 'Mohit', 'CSE', '11', '2013-07-11', '1981-01-10', 1101),
('4', 'Piyush', 'CSE', '11', '2015-06-14', '1986-04-11', 1101),
('5', 'Vivek', 'CSE', '11', '2016-06-12', '1989-05-05', 1101),
('6', 'Kriti', 'CSE', '11', '2018-06-01', '1996-05-11', 1101),
('7', 'Manisha', 'CSE', '11', '2019-09-15', '1966-01-11', 1101),
('8', 'Parisha', 'CSE', '11', '2021-08-13', '1999-01-11', 1101),
('9', 'Jatin', 'CSE', '11A', '2021-08-13', '1999-01-11', 1101);


select * from employee;
select  empname from employee;
select distinct empname from employee;

Select empname, DOB from employee where DOB <> '1976-01-11';


CREATE TABLE emp (
    empid INTEGER PRIMARY KEY,
    Name VARCHAR(10) NOT NULL,
    city CHAR(10) NOT NULL,
    salary NUMERIC(10,2) NOT NULL,
    deptname CHAR(10) NOT NULL,
    depid INTEGER NOT NULL,
    CHECK (salary != 0)
);

alter table emp
alter column city type varchar(20);

INSERT INTO emp VALUES (101, 'Arokia', 'Dehradun', 80000, 'CSE', 01);
INSERT INTO emp VALUES (102, 'Arun', 'Dehradun', 80000, 'CSE', 01);
INSERT INTO emp VALUES (131, 'Bhavesh', 'Mumbai', 90000, 'ECE', 02);
INSERT INTO emp VALUES (104, 'Charu', 'Haridwar', 70000, 'CSE', 01);
INSERT INTO emp VALUES (105, 'Deepak', 'Roorkee', 70000, 'ECE', 02);
INSERT INTO emp VALUES (106, 'Gaurav', 'Pithoragarh', 50000, 'CSE', 01);
INSERT INTO emp VALUES (107, 'Hitesh', 'Tehri', 70000, 'ME', 03);
INSERT INTO emp VALUES (108, 'Jagdish', 'Pauri', 40000, 'CSE', 01);
INSERT INTO emp VALUES (109, 'Parisha', 'Nainital', 80000, 'ME', 03);
INSERT INTO emp VALUES (110, 'Priyanka', 'Haldwani', 85000, 'ECE', 02);
INSERT INTO emp VALUES (111, 'Shrey', 'Haldwani', 87000, 'CSE', 01);

select * from emp;


select round(avg(salary),2) as avg_salary_rounded_up from emp;

select count(*) from emp;

Select count(deptname) from emp;
Select max(salary)as Tot_sal from emp;


select * from emp order by salary

Select name, salary from emp order by salary desc;

Select * from emp order by salary desc;
Select * from emp

	SELECT
	  city,
	  salary,
	  round(AVG(salary) OVER (PARTITION BY city),0) AS Avg_salary
	FROM emp
	ORDER BY salary DESC;

select * from emp
select name from emp where salary = (select max(salary)from emp)
Select name, max(salary) from emp where salary < (select max (salary) from emp);
SELECT name, salary FROM emp WHERE salary = ( SELECT MAX( salary ) FROM emp  WHERE salary < (SELECT MAX(salary) FROM emp));






