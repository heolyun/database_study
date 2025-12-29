select
    SYSDATE, - 현재 날짜
    SYSTIMESTAMP, - 현재 날짜 시간
    MONTHS_BETWEEN('2024-01-05', '2024-03-05'),
    MONTHS_BETWEEN('2024-11-04', '2024-06-20')
    --앞날짜- 뒷날짜 -> 월단위 환산
from dual;

select
    ADD_MONTHS(SYSDATE, 3),
    ADD_MONTHS(SYSDATE, 6),
    ADD_MONTHS(SYSDATE, -7),
    LAST_DAY(SYSDATE), -- 30 31 28 29
    NEXT_DAY(SYSDATE,'수'),
    NEXT_DAY(SYSDATE,'토')
from dual;

select
    SYSDATE,
    ROUND(SYSDATE),
    TRUNC(SYSDATE),
    TRUNC(SYSDATE, 'YY'),
    TRUNC(SYSDATE, 'MM'),
    TRUNC(SYSDATE, 'DD'),
    ADD_MONTHS(SYSDATE,1),-- 월단위 계산
    SYSDATE +3, -- 일단위 계산
    SYSDATE +7,
    ---다음달 첫날
    LAST_DAY(SYSDATE)+1,
    TRUNC(ADD_MONTHS(SYSDATE, 1), 'MM'),
    --전 월의 마지막날
    LAST_DAY(ADD_MONTHS(SYSDATE,-1)),
    TRUNC(SYSDATE,'MM')-1
from dual;




