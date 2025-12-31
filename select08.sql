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
