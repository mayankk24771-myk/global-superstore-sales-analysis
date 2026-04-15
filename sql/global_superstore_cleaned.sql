select sum(sales)as total_sales
from global_superstore_cleaned

select sum(profit) as total_profit
from global_superstore_cleaned

select category, 
        sum(sales) as total_sales
from global_superstore_cleaned
group by category
order by total_sales desc;

select REGION, 
        sum(PROFIT) as total_PROFIT
        from global_superstore_cleaned
GROUP BY REGION
ORDER BY total_PROFIT desc;

SELECT TOP 10 PRODUCT_NAME, 
        SUM(SALES) AS total_sales
        FROM global_superstore_cleaned
        GROUP BY PRODUCT_NAME
        ORDER BY total_sales DESC;

SELECT 
      YEAR(ORDER_DATE) AS year,
      MONTH(ORDER_DATE) AS month,
      SUM(SALES) AS MONTHLY_sales
FROM global_superstore_cleaned
GROUP BY YEAR(ORDER_DATE), MONTH(ORDER_DATE)
ORDER BY year, month;



