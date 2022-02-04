select * from emp;
select * from dept;
select e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno,
d.dname, d.loc from emp e, dept d where e.deptno = d.deptno;