SELECT * FROM dept2;
SELECT * FROM emp2;

select e.empno,e.name,e.deptno,d.dname,d.area,e.pay
from emp2 e , dept2 d
where e.deptno = d.pdept
AND pay > (select AVG(pay) from emp2 where area = 'Seoul Branch Office');

select e.empno, e.name, e.deptno, d.dname, d.area, e.pay
from emp2 e
join dept2 d on e.deptno = d.pdept
where e.pay > (
    select AVG(e2.pay)
    from emp2 e2
    join dept2 d2 on e2.deptno = d2.pdept
    where d2.area = 'Seoul Branch Office'
);

select e.empno, e.name, e.deptno, d.dname, d.area, e.pay
from emp2 e
join dept2 d on e.deptno = d.dcode
where e.pay > (
    select AVG(e2.pay)
    from emp2 e2
    join dept2 d2 on e2.deptno = d2.dcode
    where d2.area = (
        select d3.area
        from emp2 e3
        join dept2 d3 on e3.deptno = d3.dcode
        where e3.name = 'AL Pacino'
    )
);
