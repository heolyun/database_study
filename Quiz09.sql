--Quiz01
SELECT * FROM professor;

SELECT Profno,
    name,
    pay,
    bonus,
    TO_CHAR(NVL2(bonus, pay*12+bonus,(pay*12)),'$999,999') as TOTAL
FROM professor
WHERE deptno = 201;

--Quiz02

SELECT EMPNO,
    ENAME,
    COMM,
    NVL2(comm,'Exist',null) AS NVL2
    FROM emp
WHERE deptno = 30;