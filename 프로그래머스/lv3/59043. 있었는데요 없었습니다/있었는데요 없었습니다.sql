-- 보호 시작일(ANIMAL_INS.INTAKE_CONDITION)보다 입양일(ANIMAL_OUTS.DATETIME)이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문
-- 보호 시작일이 빠른 순
SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS AS A JOIN ANIMAL_OUTS AS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.DATETIME>B.DATETIME
ORDER BY A.DATETIME;