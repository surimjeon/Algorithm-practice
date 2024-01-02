-- 중고 거래 게시물을 3건 이상 등록(전체주소), 전화번호 하이픈. 회원ID기준 내림차순
SELECT USER_ID, NICKNAME, CONCAT(CITY, " ", STREET_ADDRESS1, " ", STREET_ADDRESS2) AS 전체주소,
CONCAT(SUBSTRING(TLNO,1,3), "-", SUBSTRING(TLNO, 4, 4), "-", SUBSTRING(TLNO, 8, 4)) AS 전화번호
FROM USED_GOODS_BOARD AS A JOIN USED_GOODS_USER AS B ON A.WRITER_ID = B.USER_ID
GROUP BY USER_ID
HAVING COUNT(*)>=3
ORDER BY USER_ID DESC;
