/*****************************/
 복수행 함수 (집계처리

COUNT(대상) 갯수세기 -- null은 제외하고 카운트함 

SELECT * FROM emp;

SELECT count(*)
FROM emp;

--갯수 대상 식별자 (기본키 Primary KEY/ PK)
SELECT
    count(empno),
    count(mgr),
    count(comm) -- 특정 컬럼 대상으로 null이 아닌것의 갯수 
from emp;

select 
    count(*)
from emp
where comm is not null;

select 
    count(*)
from emp
where comm is null;

select count(*) -- student 4학년 몇명?
from student
where grade=4;

SUM / AVG / MAX / MIN / STDDEV(표준편차) / VARIANCE(분산)

--총 직원 몇명, 총급여 얼마

select
    Count(*),SUM(sal)
from emp;

-- 10, 20 부서에 다니는 직원 몇명, 총 급여 얼마
select
    count(*), sum(sal)
from emp
where deptno IN (10,20);

select
    sum(height),
    AVG(height),
    MAX(height),
    MIN(height),
    STDDEV(height),
    VARIANCE(height)
from student;

/**********************************/
그룹화하기 group by

SELECT ...
FROM ...
WHERE ...
GROUP BY 컬럼 대상을 기준으로 그룹지어서 계산
         (GROUP BY 명시한 컬럼은 SELECT 조회에 사용 가능)
HAVING
ORDER BY
;
--각 학년별 평균키
select '1학년'as 학년,AVG(height) as 평균키
from student
where grade = 1
UNION ALL
select '2학년', AVG(height)
from student
where grade = 2
UNION ALL
select '3학년',AVG(height)
from student
where grade = 3
UNION ALL
select '4학년', AVG(height)
from student
where grade = 4;

select grade, AVG(height)
from student
group by grade
order by grade desc; --내림차순

select grade, COUNT(*), AVG(height)
from student
group by grade;

select studno, COUNT(*), AVG(height)
from student
group by STUDNO;

select * from student;

-- 1 ~ 3 학년의 학년별 평균키
select grade 학년, AVG(height) 평균키
from student
where grade IN(1,2,3)
group by grade;
--order by AVG(height) desc;
--order by 평균키 desc;
--order by 1 desc; < 해당 순서에 위치에 있는 컬럼 기준으로 정렬( 잘 안씀 )

select deptno, AVG(sal)
from emp
group by deptno
having AVG(sal) > 2000;  -- 조건문처럼 사용가능

1) 급여가 2000 이상인 직원들 대상으로 부서별 평균급여
select deptno, AVG(sal)
from emp
where sal >= 2000
group by deptno;

2) 부서별 평균 급여가 2000 이상인 부서별 평균 급여
   부서별 평균급여를 계산하고, 그 평균급여가 2000 이상인 결과만 추출
select deptno, AVG(sal)
from emp
group by deptno
having AVG(sal) >= 2000;

select grade, AVG(weight)
from student
group by grade
having AVG(weight) >= 65;

-- 학생 4학년을 제외하고 각 학년별 평균 몸무게 평균 몸무게 65 키로 이상

select grade, AVG(weight)
from student
where grade != 4
group by grade
having AVG(weight) >= 65
order by grade;

-- order by grade, height

select deptno, AVG(sal) 
from emp
group by deptno;

select job, AVG(sal) 
from emp
group by job;

select job,deptno, AVG(sal) 
from emp
group by job, deptno;