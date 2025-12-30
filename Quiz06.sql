--Quiz
SELECT * FROM emp;

SELECT ename, REPLACE(ename,SUBSTR(ename,3,2),'--') AS "REPLACE" FROM emp
WHERE DEPTNO = 20;
--Quiz2

SELECT name , REPLACE(JUMIN,SUBSTR(JUMIN,'7'),'-/-/-/-') AS "주민뒷자리숨김"
FROM Student
WHERE deptno1 = 101;

--Quiz3
SELECT name,
       tel,
       REPLACE(
         tel,
         SUBSTR(
         tel,
         INSTR(tel, ')') + 1,INSTR(tel, '-') - INSTR(tel, ')') - 1),
         RPAD('*', INSTR(tel, '-') - INSTR(tel, ')') - 1, '*'))
         AS REPLACE
         FROM Student
       WHERE deptno1 = 102;

--Quiz4
SELECT name, tel , REPLACE(tel, SUBSTR(tel,(INSTR(tel,'-')+1),4),'****')as REPLACE FROM student
WHERE deptno1 = 101;