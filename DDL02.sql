/*************************/ddl 테이블 제약조건

select * from new_table3;

DEFAULT : 저장되는 값이 없을때 저장하는 기본값

CREATE TABLE new_table3
(no number(3) default 0,
 name VARCHAR2(16) default 'NONAME',
 birth DATE default SYSDATE
);

INSERT INTO new_table3
VALUES (1, 'name1' , TO_DATE('2020-01-05'));

select * from new_table3;

INSERT INTO new_table3
VALUES (2,null,TO_DATE('2022-01-05'));

INSERT INTO new_table3( no,birth)
VALUES (3,TO_DATE('2022-01-05'));

INSERT INTO new_table3( name, birth)
VALUES ('name66',TO_DATE('2022-01-05'));

INSERT INTO new_table3 (no,name)
VALUES (5,'name5');
commit;

UNIQUE : 중보되지 않는 유일한 값
NOT NULL : null 저장이 불가 (Nullable No)
CHECK : 저장 가능한 범위 설정

무결성 ( 중복 X + NOT NULL ) : 데이터가 올바르게 ! 일관되게 ! 유지!
> 정확성 : 키 171.5 -> 1715
> 일관성 : 동일의미 데이터 일관 식당 포스키 15,000 주문내역 13,000
> 완전성 : 데이터 존재 O 회원가입 전화번호 필수 ! ( null X )
> 신뢰성 : 믿을 수 있어야 한다.
;
CREATE TABLE tt01
(no number(3) UNIQUE,
 name VARCHAR2(16) NOt null,
 birth DATE
);
INSERT INTO tt01 VALUES ( 1,
                          'name1',
                          sysdate );

INSERT INTO tt01 VALUES ( 2,
                          NULL,
                          sysdate );  -- XX name 이 null

INSERT INTO tt01 VALUES ( 2,
                          'name2',
                          sysdate );

INSERT INTO tt01 VALUES ( 2,
                          'name1',
                          sysdate );  -- XX  no 중복

INSERT INTO tt01 (
    no,
    birth
) VALUES ( 3,
           sysdate ); -- XX name 이 null

INSERT INTO tt01 (
    name,
    birth
) VALUES ( 'name1',
           sysdate );

CREATE TABLE tt02
(no number(3) CONSTRAINT tt02_no_uq UNIQUE, -- CONSTRAINT 제약이름 제약속성
 name VARCHAR2(16) CONSTRAINT tt02_name_nn Not NULL,
 birth DATE,
 score NUMBER(3)
     CONSTRAINT tt03_score_ck CHECK (score BETWEEN 0 AND 100),
    pass VARCHAR2(2)
        CONSTRAINT tt03_pass_ck CHECK(pass IN('Y', 'N'))
);

OrcleDB 데이터타입
숫자/문자/날짜 NUMBER/VARCHAR2/DATE

NUMBER(자리수)
NUMBER(전체자리수, 소수점자리수)
NUMBER(3) : 3자리 수
NUMBER(6,3) : 전체자리수 6 자리, 소수점 3자리 123.456 O 10.551 O  1234.56 X
NUMBER 만 표기 :38 자리

VARCHAR2(바이트수)
VARCHAR2(6) 6자리 글자X 6바이트 한글 한글자 3byte 한글

bollean True/False XX

INSERT INTO TT02
VALUES( 1,'name1',STSDATE,60,'Y') ;  -- 중복 UNIQUE 제약

INSERT INTO TT02
VALUES( 2,null,STSDATE,60,'Y') ; -- 이름 Not Null 제약

INSERT INTO TT02
VALUES( 2,'name2',STSDATE,600,'Y') ; -- score 점수범위 제약 (0~100)

INSERT INTO TT02
VALUES( 2,'name2',STSDATE,70,'T') ; -- pass 가능범위 제약 ('Y', 'N')

INSERT INTO TT02
VALUES( 2,'name2',STSDATE,70,'N') ;

commit;
select * from tt02;