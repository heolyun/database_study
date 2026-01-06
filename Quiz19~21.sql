--quiz1
SELECT
    *
FROM
    emp2;

SELECT
    name,
    position,
    pay
FROM
    emp2
WHERE
    pay > (
        SELECT
            MIN(pay)
        FROM
            emp2
        WHERE
            position = 'Section head'
    )
ORDER BY
    pay DESC;
--quiz2
SELECT
    *
FROM
    student;

SELECT
    name,
    grade,
    weight
FROM
    student
WHERE
    weight < (
        SELECT
            MIN(weight)
        FROM
            student
        WHERE
            grade = 2
    );
--quiz3
SELECT
    *
FROM
    dept2;

SELECT
    *
FROM
    emp2;

SELECT
    d.dname,
    e.name,
    e.pay
FROM
    dept2 d,
    emp2  e
WHERE
        e.deptno = d.dcode
    AND e.pay < ALL (
        SELECT
            AVG(pay)
        FROM
            emp2
        GROUP BY
            deptno
    );

--Quiz4
SELECT
    deptno,
    MIN(hiredate)
FROM
    professor
GROUP BY
    deptno;

SELECT
    profno,
    name,
    d.dname
FROM
    professor  p,
    department d
WHERE
    ( p.deptno, p.hiredate ) IN (
        SELECT
            deptno, MIN(hiredate)
        FROM
            professor
        GROUP BY
            deptno
    )
    AND p.deptno = d.deptno;

--quiz 6
SELECT
    c.dname,
    a.max_height,
    b.name,
    b.height
FROM
    (
        SELECT
            deptno1,
            MAX(height) max_height
        FROM
            student
        GROUP BY
            deptno1
    )          a,
    student    b,
    department c
WHERE
        a.deptno1 = b.deptno1
    AND a.max_height = b.height
    AND a.deptno1 = c.deptno;

--Quiz 7

SELECT
    s1.grade,
    s1.name,
    s1.height,
    (
        SELECT
            AVG(s2.height)
        FROM
            student s2
        WHERE
            s2.grade = s1.grade
    ) 평균키
FROM
    student s1
WHERE
    s1.height > (
        SELECT
            AVG(s2.height)
        FROM
            student s2
        WHERE
            s2.grade = s1.grade
    );
    
select grade, AVG(s2.height) avg_height
from student s2
group by grade A, student B
where ; 