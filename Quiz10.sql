--Quiz1
select * from emp;

select AVG(sal)
from emp;

select AVG(sal)
from emp
WHERE deptno = 30;

select AVG(sal)부서별평균
from emp
group by deptno;

select deptno, COUNT(*)부서인원,AVG(sal)부서별평균
from emp
group by deptno;

select job, AVG(sal)직업별평균
from emp
group by job;

select job, MAX(sal)최고급여
from emp
group by job;

select deptno, MAX(sal)최고급여
from emp
group by deptno;