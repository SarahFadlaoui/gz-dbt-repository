select
orders_id,
margin,
date_date,
revenue,
round((margin+shipping_fee-logcost-ship_cost),2) as operational_margin,
quantity,
from
{{ ref('int_orders_margin') }}
JOIN
{{ ref('stg_raw__ship') }}
USING(orders_id)