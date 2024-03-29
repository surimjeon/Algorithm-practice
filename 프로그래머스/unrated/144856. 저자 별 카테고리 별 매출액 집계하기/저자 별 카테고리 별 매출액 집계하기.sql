-- 2022년 1월의 도서 판매 데이터를 기준,  저자 별, 카테고리 별 매출액(TOTAL_SALES)
-- 저자ID 오름차순, 카테고리 내림차순
SELECT A.AUTHOR_ID, B.AUTHOR_NAME, A.CATEGORY, SUM(PRICE*SALES) AS TOTAL_SALES
FROM BOOK AS A 
    JOIN AUTHOR AS B ON A.AUTHOR_ID=B.AUTHOR_ID
    JOIN BOOK_SALES AS C ON A.BOOK_ID = C.BOOK_ID
WHERE YEAR(SALES_DATE)=2022 AND MONTH(SALES_DATE)=1
GROUP BY A.AUTHOR_ID, A.CATEGORY
ORDER BY A.AUTHOR_ID, A.CATEGORY DESC;