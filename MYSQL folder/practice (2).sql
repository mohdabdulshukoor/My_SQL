create database employee_department;

use employee_department;

create table if not exists employee(
emp_no int primary key,
 first_name varchar(20),
 last_name varchar(20),
 gender varchar(20),
 designation varchar(20),
 hire_date date);
 
 create table if not exists department(
 dept_no int primary key,
 name varchar(20));
 
 insert into employee
 values(11,'aaron','benedict','male','fresher','1998-02-13'),
 (12,'sam','fernandez','male','senior','2000-09-21'),
 (14,'name','name2','female','junior_assistant','1996-04-22'),
 (15,'name3','name4','female','senior_manager','1994-05-24');
 
 insert into department
 values(101,'it'),
 (121,'hr'),
 (141,'sales'),
 (151,'finance');
 
 update department set name = 'management' where name = 'it';
 
 select * from department;
 
 update employee set designation = 'manager' where designation = 'junior_assistant';
 
 select * from employee;
 
 delete from employee where emp_no = 11;
