/****************************************/
시퀀스 (Sequence)

순차적으로 값을 사용하는 용도 (번호표)

PK(기본키) 용으로 사용하거나 순차적인 데이터를 표현하기위해서 사용하는 숫자 값
호출 할 때 마다 자동으로 증가

시퀀스 생성

CREATE SEQUENCE 시퀀스이름
INCREMENT BY 1 -- 증가할 값
START WITH 1 -- 시작값
MINVALUE 1 --최소값
MAXVALUE 10 -- 최대값
CYCLE | NOCYCLE -- 순환여부 default : nocycle
CACHE 20 | NOCACHE -- 숫자 메모리에 미리 저장해둘 갯수 ;

시퀀스 삭제
DROP SEQUENCE 시퀀스이름

시퀀스 사용 (호출)
시퀀스이름.nextval 다음값 호출(사용)
시퀀스이름.currval 현재값 확인
/***********************/
--PK 설정 /PK에 활용
;
CREATE TABLE SEQ_TEST
( 
    no NUMBER(6) PRIMARY KEY,
    name VARCHAR2(32)
);

select * from SEQ_TEST;
INSERT INTO seq_test values (1, '이름1');
INSERT INTO seq_test values (2, '이름2');

--서브쿼리로 no 순번 값을 계산 처리 ( COUNT)
SELECT Count(*) FROM seq_test; -- 기존 갯수
SELECT Count(*)+1 FROM seq_test; -- 기존 갯수

INSERT INTO seq_test values ((SELECT Count(*)+1 FROM seq_test), '이름6');
--사용자 한명 탈퇴 3번 사용자
select *
--delete
from seq_test
where no = 3;
--다음기입자 정보 저장
INSINSERT INTO seq_test values ((SELECT Count(*)+1 FROM seq_test), '이름7');

---*******************
데이터 관리를 어떻게 하느냐?
삭제(탈퇴) 어떻게 관리 ? 사용자 탈퇴하면?
   1) 데이터 행 삭제 (delete from ...)
   2) 삭제된 것 처럼 상태 값으로 관리 ('Y', 'N' ... 'T', 'N')-- 요즘같이 빅데이터 중요 시대에 좋음
   
-- 서브쿼리로 no 순번 값을 계산 처리 (MAX)



-- 시퀀스로 no 순번 값을 계산 처리
