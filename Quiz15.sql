--Quiz 1
SELECT
    *
FROM
    student;

SELECT
    *
FROM
    score;

SELECT
    *
FROM
    hakjum;

SELECT
    st.studno 학번,
    st.name   이름,
    sc.total  점수,
    h.grade   학점
FROM
    student st,
    score   sc,
    hakjum  h
WHERE
        st.studno = sc.studno
    AND sc.total BETWEEN h.min_point AND h.max_point
ORDER BY
    sc.total DESC;
  
--Quiz 2
SELECT
    st.studno 학번,
    st.name   이름,
    sc.total  점수,
    h.grade   학점
FROM
    student st,
    score   sc,
    hakjum  h
WHERE
        st.studno = sc.studno
    AND sc.total BETWEEN h.min_point AND h.max_point
    AND deptno1 IN ( 101, 102 )
ORDER BY
    sc.total DESC;
--Quiz 3
SELECT
    *
FROM
    professor;

SELECT
    s.name,
    s.grade,
    p.name,
    p.deptno,
    d.dname
FROM
    student    s,
    professor  p,
    department d
WHERE
        s.profno = p.profno
    AND p.deptno = d.deptno
    AND p.deptno != 301;