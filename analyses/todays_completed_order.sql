--select CURRENT_DATE() AS current_date

select 
    order_date,
    sum(total_amount) as total_ammount
 from {{ ref('fct_orders' )}}
 where order_date = '2018-02-28' and is_order_completed = 1
 group by order_date