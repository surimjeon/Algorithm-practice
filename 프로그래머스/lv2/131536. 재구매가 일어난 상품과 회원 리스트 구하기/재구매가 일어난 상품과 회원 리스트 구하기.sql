-- 회원, 상품 동일한 재구매, -> 회원ID, 상품ID출력
-- 회원ID기준으로 오름차순, 상품ID기준으로 내림차순 정렬
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*)>=2
ORDER BY USER_ID, PRODUCT_ID DESC; 