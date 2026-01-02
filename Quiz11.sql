--Quiz 01

select * from student;

select name,JUMIN,BIRTHDAY,
    CASE 
        WHEN SUBSTR(birthday,4,2) IN('01','02','03') THEN '1분기'
        WHEN SUBSTR(birthday,4,2) IN('04','05','06') THEN '2분기'
        WHEN SUBSTR(birthday,4,2) IN('07','08','09') THEN '3분기'
        WHEN SUBSTR(birthday,4,2) IN('10','11','12') THEN '4분기'
    END as 분기
from student;

--Quiz 02

SELECT * FROM emp;

select empno,ename,sal,
    CASE
        WHEN sal BETWEEN 1 AND 1000 THEN 'LEVEL 1'
        WHEN sal BETWEEN 1001 AND 2000 THEN 'LEVEL 2'
        WHEN sal BETWEEN 2001 AND 3000 THEN 'LEVEL 3'
        WHEN sal BETWEEN 3001 AND 4000 THEN 'LEVEL 4'
        WHEN sal>4001 THEN 'LEVEL 5'
    END 급여등급
from emp;