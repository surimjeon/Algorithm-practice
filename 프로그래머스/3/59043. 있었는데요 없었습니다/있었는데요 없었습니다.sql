-- 보호시작일(INS)보다 입양일(DATETIME)이 더 빠른 동물 id, 이름
-- 보호시작일 빠른순
SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.DATETIME > B.DATETIME
ORDER BY A.DATETIME