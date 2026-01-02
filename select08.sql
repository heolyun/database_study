/************************************/
JOIN 조인

--JOIN 기준 -> 어떤 것을 기준으로 테이블 데이터를 합쳐서(연결) 조회

SELECT * FROM emp; --deptno 컬럼 부서번호
SELECT * FROM dept;-- 부서정보 deptno 컬럼

--select *
select e.empno, e.ename, d.dname, d.loc, e.deptno
from emp E,dept D  -- 테이블 뒤에 별명 적어줄수있음 컬럼처럼
where E.deptno = D.deptno
AND e.deptno IN (20,30);

select e.empno, e.ename, d.dname, d.loc, e.deptno
from emp e INNER JOIN dept d
ON E.deptno = D.deptno
WHERE e.deptno IN (20,30);

--emp, dept 조인 -> 부서번호 20,30번만 조회

select * from student;     --profno 교수번호 컬럼
select * from professor;   --profno 교수번호 컬럼

select s.name 학생명 , p.name 교수명, s.studno, p.profno, p.email
from student s, professor p
where s.profno = p.profno;

select s.name 학생명 , p.name 교수명, s.studno, p.profno, p.email
from student s INNER JOIN professor p
ON s.profno = p.profno;

--INNER JOIN (교집합) vs OUTER JOIN (합집합)

select s.name 학생명 , p.name 교수명, s.studno, p.profno, p.email
from student s INNER JOIN professor p
ON s.profno = p.profno;

--INNER JOIN 수행 -> 조인기준 profno 가 같은가? -> profno null 비교불가 제외
select *
from student s, professor p
where s.profno = p.profno(+);

--select s.name 학생명 , p.name 교수명, s.studno, p.profno, p.email
select *
from student s LEFT OUTER JOIN professor p
ON s.profno = p.profno;

--INNER
select *
from professor p, student s
where p.profno = s.profno;

--OUTER
select *
from professor p, student s
where p.profno = s.profno(+);

--학생 20 교수 16, INNER JOIN 연결가능 15
select *
from professor p, student s
where s.profno = p.profno(+);
--OUTER JOIN 할때는 N:1 의 관계로 JOIN 해줘라

select * from department;
SELECT * FROM student;
SELECT * FROM professor;

SELECT s.name , s.deptno1, d.dname 
FROM student s, department d
where s.deptno1 = d. deptno;

SELECT * FROM student s , professor p, department d
where s.profno = p.profno
AND s.deptno1 = d.deptno;

SELECT s.name, p.name, d.dname
FROM
    student s INNER JOIN professor p
    ON s.profno = p.profno
    INNER JOIN department d
    ON s.profno = p.profno;
    
SELECT s.name, p.name, d.dname
FROM student s , professor p, department d
where s.profno = p.profno
AND s.deptno1 = d.deptno
AND s.deptno1 = 101;

1) 학생명, 학생학과번호, 학생의 학과명, 교수멍 ,교수학과번호
SELECT s.name, s.deptno1, d.dname, p.name, p.deptno
FROM student s , professor p, department d
where s.profno = p.profno
AND s.deptno1 = d.deptno;

2) 학생명, 학생학과번호, 교수의 학과명, 교수멍 ,교수학과번호
SELECT s.name, s.deptno1, d.dname, p.name, p.deptno
FROM student s , professor p, department d
where s.profno = p.profno
AND p.deptno = d.deptno;

2) 학생명, 학생학과번호, 학생의 학과명, 교수멍 ,교수학과번호, 교수의 학과명
SELECT s.name, s.deptno1, ds.dname , p.name , p.deptno,dp.dname
FROM student s, professor p, department ds , department dp
where s.profno = p.profno -- 학생과 <ㅡ> 지도교수연결
and s.deptno1 = ds.deptno -- 학생학과<-> 학과정보
and p.deptno = dp.deptno -- 교수학과 <-> 학과정보
;

-----------------------------------------------------
INNER JOIN OUTER JOIN
등가조인 =    비등가 조인

SELECT * FROM customer;
SELECT * FROM gift;

SELECT * 
FROM customer c, gift g
where c.point BETWEEN g.g_start and g.g_end;

SELECT * FROM hakjum;

SELF JOIN

SELECT * FROM emp;

select e1.empno, e1.ename 사원이름, e1.mgr, e2.empno , e2.ename 상사이름
from emp e1, emp e2
where e1.mgr = e2.empno;

select a.empno, a.name , a.pempno, b.empno , b.name
from emp2 a, emp2 b
where a.pempno = b.empno;