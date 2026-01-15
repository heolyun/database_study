CREATE TABLE T_PERSON_INFO
( 
  stdno NUMBER(10) PRIMARY KEY,
  name VARCHAR2(32),
  age NUMBER(3),
  dept VARCHAR(32));
INSERT INTO T_PERSON_INFO VALUES(20210034,'이상형',21,'법학과');
INSERT INTO T_PERSON_INFO VALUES(20220011,'김건우',24,'물리학과');
INSERT INTO T_PERSON_INFO VALUES(20240109,'전지훈',20,'컴퓨터공학과');
INSERT INTO T_PERSON_INFO VALUES(20230002,'강순구',21,'건축학과');
select * from T_PERSON_INFO;

/*******************************/
CREATE TABLE BOARD_LIST
(
    board_list_id NUMBER(5) PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    content VARCHAR2(2000),
    writer VARCHAR2(60) NOT NULL,
    create_time NUMBER(13) NOT NULL,
    update_time DATE);

CREATE SEQUENCE SEQ_BOARD_LIST_PK
INCREMENT BY 1
START WITH 1 
MAXVALUE 99999
NOCYCLE;

select * from BOARD_LIST;
   
/************************************/
select * from emp;
select * from dept;

select e.empno no,e.ename name,e.sal salary,d.dname d_name,d.loc location
from emp e , dept d
where e.deptno = d.deptno
AND e.sal >= 2000 
ORDER BY sal desc;

/***************************************/
Commit;
Rollback;

/********************************/

1) orcl
2) localhost (127.0.0.1)
3) 1521
4) scott
5) tiger