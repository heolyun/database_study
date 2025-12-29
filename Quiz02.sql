--Quiz1
SELECT * FROM student;
SELECT * FROM professor;

SELECT STUDNO AS 학번, name AS 이름 , ID AS 아이디 FROM student
WHERE HEIGHT >=160 AND height <= 175 
UNION ALL
SELECT profno,name,id FROM professor
WHERE BONUS IS NULL AND DEPTNO IN (101,102,103,201);

--Quiz2
SELECT * FROM student;

SELECT '이름:'||name 이름, '아이디:'||id 아이디,'주민번호:'||JUMIN 주민 FROM student;
