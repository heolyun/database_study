-- 형 변환 함수

select 2+2 from dual;
select 2+ '2' from dual; -- 자동형변환(묵시적형변환)
select 2 || '2' from dual;
select 2 + TO_NUMBER('2') from dual; --명시적 형변환

TO_CHAR  -- 문자
TO_DATE   -- 날짜
TO_NUMBER -- 숫자

select
    TO_CHAR(1231),
    TO_CHAR(123.592),
    SYSDATE,
    TO_CHAR(SYSDATE)
FROM dual;

--jumin 문자타입 SUBSTR
--birthday 날짜타입 TO_CHAR
select
    jumin,
    birthday,  -- 75/10/23 1975-10-23
    TO_CHAR(birthday, 'YY') 년,
    TO_CHAR(birthday, 'MM') 월,
    TO_CHAR(birthday, 'DD') 일
from student;

select
    SYSDATE,
    TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'),
    SYSTIMESTAMP,
    TO_CHAR(SYSTIMESTAMP, 'YYYY-MM-DD HH24:MI:SS'),
from dual;

select
    TO_NUMBER('123')
    TO_NUMBER('1233.1232')
    --TO_NUMBER('13asd.10') error
from dual;

select
    TO_CHAR(1234, '999999'),
    TO_CHAR(1234, '0999999')
from dual;

select
    '2025-12-05' ||3,
    TO_DATE('2025-12-05') +3,
    TO_DATE('2025/12/05') +5,
    TO_DATE('25/12/05')+7,
    TO_DATE('20251205') +3,
    LAST_DAY('2025-02-01'),
    LAST_DAY(TO_DATE('2025-02-01')),
    TO_DATE('2025-12-05','YYYY-MM-DD'),
    TO_DATE('25/12/05','YY/MM/DD'),
    TO_DATE('2025,12,05','YYYY,MM,DD')
from dual;

select
    SUBSTR('2025-12-05', 6, 2),
    TO_CHAR( TO_DATE('2025-12-05'),'MM')
from dual;











