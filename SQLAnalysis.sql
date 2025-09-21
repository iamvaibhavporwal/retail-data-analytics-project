-- 1️. Find top 10 highest revenue-generating products
-- Summing sales per product_id and selecting the top 10
select top 10 product_id, sum(sale_price) as sales
from df_orders
group by product_id
order by sales desc


-- 2️. Find top 5 highest selling products in each region
-- Using CTE and ROW_NUMBER() to rank products per region
with cte as (
    select region, product_id, sum(sale_price) as sales
    from df_orders
    group by region, product_id
)
select * from (
    select *,
           row_number() over(partition by region order by sales desc) as rn
    from cte
) A
where rn <= 5


-- 3️. Month-over-month growth comparison for 2022 and 2023 sales
-- Aggregate sales by month and year, then pivot using CASE
with cte as (
    select year(order_date) as order_year, month(order_date) as order_month,
           sum(sale_price) as sales
    from df_orders
    group by year(order_date), month(order_date)
)
select order_month,
       sum(case when order_year = 2022 then sales else 0 end) as sales_2022,
       sum(case when order_year = 2023 then sales else 0 end) as sales_2023
from cte
group by order_month
order by order_month


-- 4️. For each category, find the month with highest sales
-- Use ROW_NUMBER() to rank months by sales per category
with cte as (
    select category, format(order_date,'yyyyMM') as order_year_month,
           sum(sale_price) as sales
    from df_orders
    group by category, format(order_date,'yyyyMM')
)
select * from (
    select *,
           row_number() over(partition by category order by sales desc) as rn
    from cte
) a
where rn = 1


-- 5️. Find sub-category with highest growth by profit in 2023 compared to 2022
-- Calculate yearly sales per sub-category and determine maximum growth
with cte as (
    select sub_category, year(order_date) as order_year,
           sum(sale_price) as sales
    from df_orders
    group by sub_category, year(order_date)
),
cte2 as (
    select sub_category,
           sum(case when order_year = 2022 then sales else 0 end) as sales_2022,
           sum(case when order_year = 2023 then sales else 0 end) as sales_2023
    from cte
    group by sub_category
)
select top 1 *,
       (sales_2023 - sales_2022)
from cte2
order by (sales_2023 - sales_2022) desc
