-- 자동차, 대여기록 정보, 할인정책 
-- 자동차 종류가 '세단' 또는 'SUV' 인 자동차 중 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능하고 30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차
-- 정렬 : 대여금액 내림, 자동차 종류 오름차순, 자동차ID 내림차순
SELECT A.CAR_ID, A.CAR_TYPE, ROUND(DAILY_FEE*30*((100-DISCOUNT_RATE)/100)) AS FEE
FROM CAR_RENTAL_COMPANY_CAR AS A
    JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS B ON A.CAR_ID=B.CAR_ID
    JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS C ON A.CAR_TYPE=C.CAR_TYPE
# WHERE (DATE_FORMAT(B.END_DATE, "%Y-%m-%d")<'2022-11-01' OR DATE_FORMAT(B.START_DATE, "%Y-%m-%d")>'2022-11-30') AND DURATION_TYPE='30일 이상'
WHERE A.CAR_ID NOT IN (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE END_DATE > '2022-11-01' AND START_DATE < '2022-12-01'
) AND DURATION_TYPE='30일 이상'
GROUP BY CAR_ID
HAVING A.CAR_TYPE IN ('세단','SUV') AND FEE >=500000 AND FEE<2000000
ORDER BY FEE DESC, A.CAR_TYPE, A.CAR_ID DESC