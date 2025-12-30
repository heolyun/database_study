NVL2 (대상값,있,없)

select
    NVL(null, 10) ,
    NVL(20,10),
    NVL2(null, '있다','없다'),
    NVL2('123asd', '있다','없다')
from dual;

***DECODE

DECODE(대상,비교값,'같다','다르다')
DECODE(대상,비교값,'같다',(DECODE(대상,비교값,'같다','다르다')))

select
    DECODE(10,10,'같다','다르다'),
    DECODE(10,20,'같다','다르다'),
    DECODE(10,10,'같다'),
    DECODE(10,20,'같다'),-- 뒤 다르다 생략 가능 -> null \
    DECODE(10,20,'20이다',30,'30이다',40,'40이다','아니다')
from dual;

select
   name ,
   deptno,
   DECODE(deptno, 101, '컴공', 102, '전기', 103 , '기계','기타전공')as 학과명
from professor;

select
    grade,
    DECODE(grade,1,'저학년',2,'저학년',3,'고학년',4,'고학년','학년범위외') 구분1,
    CASE grade
        WHEN 1 THEN '저학년'
        WHEN 2 THEN '저학년'
        WHEN 3 THEN '고학년'
        WHEN 4 THEN '고학년'
    END 구분2,
    
    CASE
        WHEN grade IN (1,2) THEN '저학년'
        WHEN grade BETWEEN 3 AND 4 THEN '고학년'
    END 구분3
from student;
    


    