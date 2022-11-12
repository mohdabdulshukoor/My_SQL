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
(33,36,"fresher")
alter B_Oracle To B_SQL;
truncate B_Oracle