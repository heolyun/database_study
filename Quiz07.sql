--Quiz1
SELECT * FROM Student;

SELECT STUDNO,name,TO_CHAR(birthday,'YYYY-MM-DD')AS birthday FROM student
WHERE TO_CHAR(birthday, 'MM') = 1;

--Quiz2
SELECT EMPNO, ename, hiredate FROM EMP
WHERE TO_CHAR(hiredate,'MM') IN(01,02,03);