--Quiz1
select * from emp2;

select empno 사번, name 이름,birthday 생년월일, hobby 취미,
    pay,
    Pay * 1.5 as 성과급,
    REPLACE(emp_type,'employee','family'),
    tel,
    CASE
        WHEN pay BETWEEN 35000001 AND 45000000 THEN '하'
        WHEN pay BETWEEN 45000001 AND 60000000 THEN '중'
        WHEN pay > 60000001 THEN '상'
        ELSE '화이팅'
    END 급여수준
from emp2
where (SUBSTR(birthday, 1, 2) BETWEEN '70' AND '79')AND
    (SUBSTR(tel,1,2) = '02' OR SUBSTR(tel,1,3) = '031');
--Quiz2.1

SELECT * FROM emp;

select deptno 부서번호 , AVG(sal) 평균급여
from emp
group by deptno
having AVG(sal) >= 2000;
--Quiz2.2
SELECT P_DATE AS 판매일자,
       SUM(P_QTY) AS 판매수량,
       SUM(P_TOTAL) AS 판매금액
FROM panmae
GROUP BY P_DATE;


--Quiz2.3
SELECT * FROM panmae;

SELECT P_DATE AS 판매일자,
       P_CODE AS 상품코드,
       SUM(P_QTY) AS 판매수량,
       SUM(P_TOTAL) AS 판매금액
FROM panmae
GROUP BY ROLLUP(P_DATE, P_CODE)
ORDER BY P_DATE;
