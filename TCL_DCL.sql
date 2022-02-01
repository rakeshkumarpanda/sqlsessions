select * from student;
desc student;

insert into student (id, name, phone) values (1,'Sraddha',1234567890);
commit;
rollback;

insert into student (id, name, phone) values (2,'Priyanka',2314567898);
SAVEPOINT sp1;
insert into student (id, name, phone) values (3,'Sushree',2314567898);
SAVEPOINT sp2;
insert into student (id, name, phone) values (4,'Rakesh',2314567898);

rollback to sp1;

--Assignment: Create multiple savepoints like sp1, sp2, sp3 & sp4. Rollback to sp1 and get the behavior

delete from student where id=2;
select * from student;
rollback;

----------------------------------------DCL Commands--------------------------------------
--Grant:
--grant <list of commands comma separated> on <table name> to <user name>;

--Ex:
--grant select, insert, update on student to rakesh;


--Revoke:
--revoke <list of commands comma separated> on <table name> from <user name>

--Ex:
--revoke update on student from rakesh;

--Taking values from user
insert into student values (&id, '&name', &phone);



