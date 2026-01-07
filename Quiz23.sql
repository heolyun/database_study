CREATE TABLE temp_professor
AS
SELECT * FROM professor;

select * from temp_professor;

UPDATE temp_professor
SET BONUS = 200
WHERE POSITION = 'assistant professor';

UPDATE temp_professor
SET PAY = PAY * 1.15
WHERE PAY < 250 
    AND position = (SELECT position 
                    FROM temp_professor 
                    where name = 'Sharon Stone');