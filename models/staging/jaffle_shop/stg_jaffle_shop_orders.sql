
select
    id as order_id,
    user_id as customer_id, 
    order_date,
    status
from {{ source('jaffle_shop', 'orders')}}


-- Use source to show link to database and also show in data lineage