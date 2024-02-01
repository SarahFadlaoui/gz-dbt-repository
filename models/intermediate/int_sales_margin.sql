select *
from {{ ref("stg_raw__sales") }}
join {{ ref("stg_raw__product") }} 
using (pdt_id)