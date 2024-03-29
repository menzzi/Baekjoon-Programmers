-- 코드를 입력하세요
SELECT CAR_ID,c.CAR_TYPE,FLOOR(30*DAILY_FEE*((100-DISCOUNT_RATE)/100)) AS FEE 
FROM CAR_RENTAL_COMPANY_CAR c JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN d on c.CAR_TYPE=d.CAR_TYPE
WHERE c.CAR_TYPE IN ('세단','SUV') 
        AND CAR_ID NOT IN (SELECT CAR_ID 
                   FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                   WHERE END_DATE>='2022-11-01' AND START_DATE<='2022-11-30')
        AND DURATION_TYPE = '30일 이상'
HAVING FEE >= 500000 AND FEE <2000000
ORDER BY FEE DESC,c.CAR_TYPE,CAR_ID DESC 