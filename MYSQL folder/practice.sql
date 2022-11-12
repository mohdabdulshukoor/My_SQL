-- creating a new database using "create database if does not exists";
create database if not exists dispensary;

-- for activating the particular database to use "use" command is used(selecting from many databases;
use dispensary;

-- by using "create table command" creating a new table in the database;
create table patient_INFO(patient_name varchar(180), age int, address varchar(300));

-- renaming the age column to "age_group" by using ALTER with RENAME command;
alter table patient_INFO rename column age to age_group;

-- by ALTER with DROP command droping the address column;
alter table patient_INFO drop address;


-- by using ALTER with MODIFY we have changed the varchar(300) from varchar(180) of patient_name;
alter table patient_INFO modify patient_name varchar(300);


-- made a back-up table of patient_INFORMATION table;
create table if not exists patient_INFO_bk select * from patient_info;


-- deleting the data inside the patient_INFORMATION table but not the structure of it using TRUNCATE command;
truncate table patient_INFO;

