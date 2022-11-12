create database if not exists ABC_INC;
use ABC_INC;
create table if not exists A_SQL(employee_id INT, age int, proficiency varchar(500));
create table if not exists B_Oracle(employee_id INT, age int, proficiency varchar(500));
create table if not exists C_Html(employee_id INT, age int, proficiency varchar(500));
insert into A_SQL(employee_id , age , proficiency)
values (45,51, "manager"),
       (75,41,"team lead"),
       (87,31,"ceo"),
       (14,41,"cfo"),
       (15,51,"ceo");
insert into B_Oracle(employee_id, age, proficiency)
values (23,45,"HR"),
(65,43,"trainer"),
(32,48,"mentor"),
(28,43,"senior manager"),
(12,39,"engineer");
insert into C_Html(employee_id , age , proficiency)
values (47,18,"jr data scientist"),
(88,42,"sr data scientist"),
(31,50,"chief data scientist"),
(23,30,"sales executive"),
(33,36,"fresher");
alter table B_Oracle rename To B_SQL;

-- truncate usage for clearing the rows of B_SQL and adding half the ids from A_SQL
truncate B_SQL;
delete from A_SQL where (employee_id = 45);
delete from A_SQL where (employee_id = 75);
insert into B_SQL(employee_id, age , proficiency)
values(45,51, "manager"),
(75,41,"team lead");

-- now dropping the C_HTML 
drop table C_Html;

-- merging  A_SQL & B_SQ to create a  seperate table   as AB_SQL
create table if not exists AB_SQL select * from A_SQL;
insert into AB_SQL(employee_id, age , proficiency)
values(87,31,"ceo"),
       (14,41,"cfo"),
       (15,51,"ceo");
drop table A_SQL;
drop table B_SQL;
select * from AB_SQL




