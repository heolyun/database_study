--Quiz1

SELECT * FROM emp;

SELECT EMPNO,ename,TO_CHAR((sal * 12)+comm,'999,999') as SALARY FROM emp
WHERE ename = 'ALLEN';

--Quiz2

SELECT empno,ename,
    TO_CHAR(hiredate,'YYYY-MM-DD')as hiredate,
    TO_CHAR((sal * 12)+comm,'$999,999') as SAL,
    TO_CHAR(((sal * 12)+comm)*1.15,'$999,999') as "15%인상" FROM emp
    WHERE comm is not null;