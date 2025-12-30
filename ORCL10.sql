--Quiz01

SELECT * FROM professor;

select deptno, name,
    CASE
        WHEN deptno = 101 THEN DECODE(name,'Audie Murphy','BEST!')
    END DECODE
From professor;

--Quiz02

SELECT deptno,
    name,
    CASE
        WHEN deptno = 101 THEN DECODE(name,'Audie Murphy','BEST!','GOOD!')
        WHEN deptno != 101 THEN (null)
    END 비고
From professor;

--Quiz03

SELECT deptno,
    name,
    CASE
        WHEN deptno = 101 THEN DECODE(name,'Audie Murphy','BEST!','GOOD!')
        WHEN deptno != 101 THEN 'N/A'
    END 비고
From professor;

--Quiz04

SELECT * FROM student;

select name,JUMIN,
    CASE
        WHEN(SUBSTR(jumin,7,1)) = 1 THEN '남자'
        WHEN(SUBSTR(jumin,7,1)) = 2 THEN '여자'
    END 성별
FROM student
WHERE deptno1 = 101;

--Quiz05
SELECT name,tel,
    DECODE(SUBSTR(tel,1,INSTR(tel,')')-1),02,'서울',031,'부산',052,'울산',055,'경남')지역명
FROM student
WHERE deptno1 = 101;