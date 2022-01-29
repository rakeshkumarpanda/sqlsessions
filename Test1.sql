--creating the table
create table student (id number(10), name varchar2(30), phone number(10));

-- describing a table
desc student;

--fetching the table data
--1st approach
select id, name, phone from student;
--2nd approach
select * from student;

--Assignment: Get only the names from student table

--Getting the current system timestamp
select systimestamp from dual;

--Adding 2 numbers
select 153+143 from dual;

--inserting an row into table
insert into student (id, name, phone) values (1,'Sraddha',1234567890);
insert into student (id, name, phone) values (2,'Sangeeta',1234567890);
insert into student (id, name, phone) values (3,'Priyanka',2314567890);
insert into student (id, name, phone) values (4,'Sraddha',1234567890);

--Multiple row insert in single query
insert into student values($id, '$name', $phone);

--updating table data
update student set phone = 9876543210;

--Conditional based update
update student set id=4 where name='Priyanka';

--deleting the table data
delete from student;

--conditional based delete
delete from student where id=4;

--delete all data(dangereous)
TRUNCATE TABLE student;