-- 코드를 입력하세요
SELECT SUBSTRING(PRODUCT_CODE FROM 1 FOR 2) as CATEGORY,count(*) as PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY